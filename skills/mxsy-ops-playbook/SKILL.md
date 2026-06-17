---
name: mxsy-ops-playbook
description: 操作秒享商用换电双环境（pre + production）的常用模式、已验证端点和常见踩坑记录。覆盖认证登录、电柜操作、电池管理、工单处理、运营统计、用户管理、套餐管理、押金管理、仓门管理、告警处理等 500+ API。
---

# 秒享商用换电 · 双环境运维手册

## 环境

| 环境 | Base URL | 说明 |
|------|----------|------|
| **Pre** | `https://pre.miaoxianghuandian.com` | 测试环境 |
| **Production** | `https://gateway.miaoxianghuandian.com` | 生产环境 |

认证端点相同：`/mx-ce-auth/oauth2/token`，token 共享体系（不同环境 token 不通用）。

## 认证流程

### 获取 Token
```bash
# Pre 环境
curl -X POST "https://pre.miaoxianghuandian.com/mx-ce-auth/oauth2/token" \
  -H "Authorization: Basic bWFsbC1hZG1pbjoxMjM0NTY=" \
  --data-urlencode "grant_type=password" \
  --data-urlencode "username=liaocanjie" \
  --data-urlencode "password=123456"

# Production 环境（账号密码不同）
curl -X POST "https://gateway.miaoxianghuandian.com/mx-ce-auth/oauth2/token" \
  -H "Authorization: Basic bWFsbC1hZG1pbjoxMjM0NTY=" \
  --data-urlencode "grant_type=password" \
  --data-urlencode "username=liaocanjie" \
  --data-urlencode "password=Liao@6022"
```

### grant_type 类型
| grant_type | 必填字段 | 说明 |
|-------------|----------|------|
| `password` | username, password | 用户名密码登录 |
| `uni_app_password` | mobile, password, cid | 手机密码登录 |
| `uni_app_sms` | mobile, smsCode, cid | 手机短信登录 |
| `uni_app_wx` | code, cid | 微信授权登录 |
| `refresh_token` | refresh_token | 刷新 token |
| `captcha` | username, password, verifyCodeKey, verifyCode | 验证码登录 |

### Token 刷新
业务 API 返回 `A0230` 时，用 refresh_token 刷新：
```bash
curl -X POST "https://pre.miaoxianghuandian.com/mx-ce-auth/oauth2/token" \
  -H "Authorization: Basic bWFsbC1hZG1pbjoxMjM0NTY=" \
  --data-urlencode "grant_type=refresh_token" \
  --data-urlencode "refresh_token=<refresh_token>"
```

### 登录响应示例
登录成功后返回用户信息：
```json
{
  "code": "00000",
  "data": {
    "access_token": "<token>",
    "refresh_token": "<refresh_token>",
    "token_type": "Bearer",
    "expires_in": 86399,
    "sys_user_id": 4546,
    "username": "liaocanjie",
    "deptId": 15,
    "areaIds": [1],
    "authorities": ["enterprise_admin", "operate", "ROOT", "operation"]
  },
  "msg": "操作成功"
}
```

## 踩坑记录（必读）

### 1. 不要调 `/api/user/info` 获取用户信息
登录响应已含全部用户信息，直接取用：
- `/api/user/info` → 404
- `/api/user/current` → 404
- `/api/account/info` → 404

### 2. 业务 API base URL 不是 `/mx-ce-auth`
- 认证：`https://pre.miaoxianghuandian.com/mx-ce-auth/oauth2/token`
- 业务：`https://pre.miaoxianghuandian.com`（根路径，不带 `/mx-ce-auth` 前缀）

### 3. 仓门电池状态无直接 API
以下端点返回 404：
```
GET /mx-ce-system/api/cabinet/info?devId=<devId>   → 404
GET /mx-ce-system/api/cabinet/status?devId=<devId> → 404
GET /mx-ce-business/api/cabinet/batteryStatus?devId=<devId> → 404
```
如需查询仓门电池状态，请通过 App 或管理后台。

### 4. token 有效期
expires_in: 86399 秒（约 24 小时）

### 5. 错误端点（不要用）
```
GET /cabinet/openDoor  → 404
GET /mx-ce-business/api/cabinet/batteryStatus  → 404
```

### 6. 操作密码
默认操作密码：`123456`，生产环境请使用真实密码。

### 7. 生产环境操作需二次确认
执行生产环境重要操作前，需明确确认环境和目标资源。

## 仓门操作限流规则

仓门操作接口 `POST /mx-ce-system/api/cabinet/optCabinetDoor` 有渐进式限流：

| 级别 | 限制请求数 | 时间窗口 | 触发下一级条件 |
|------|-----------|----------|---------------|
| Level 1 | 5次 | 10秒 | 10秒内超过5次 |
| Level 2 | 10次 | 30秒 | 30秒内超过10次 |
| Level 3 | 20次 | 70秒 | 70秒内超过20次 |
| Level 4 | 40次 | 150秒 | 150秒内超过40次 |

限流返回代码 `B0210`（系统限流）。

## 图片分析与二维码解码

### QR Code 解码（推荐）
```bash
# 安装
sudo apt-get install zbar-tools

# 解码
zbarimg <图片路径>
# 输出: QR-Code:https://xm.miaoxianghuandian.com/invite/code.html?code=TSD25100075
```

### 图片分析（视觉模型）
vision_analyze 工具对本地上传的 JPEG 图片识别效果差，推荐使用 zbarimg 解码二维码。

## 常用 API 模块索引

### 01. 区域接口
| 接口 | 方法 | 路径 | 说明 |
|------|------|------|------|
| 所属城市列表 | GET | `/mx-ce-system/api/v1/areas/options` | 获取可切换城市 |

### 02. 用户接口
| 接口 | 方法 | 路径 | 说明 |
|------|------|------|------|
| 新增用户 | POST | `/mx-ce-system/api/v1/users` | 创建用户 |
| 用户分页列表 | GET | `/mx-ce-system/api/v1/users/pages` | 分页查询用户 |
| 获取当前登录用户信息 | GET | `/mx-ce-system/api/v1/users/me` | 获取当前用户 |
| 修改用户状态 | PATCH | `/mx-ce-system/api/v1/users/{userId}/status` | 启用/禁用用户 |
| 修改用户密码 | GET | `/mx-ce-system/api/v1/users/{userId}/password` | 重置密码 |

### 03. 角色接口
| 接口 | 方法 | 路径 | 说明 |
|------|------|------|------|
| 角色下拉列表 | GET | `/mx-ce-system/api/v1/roles/options` | 获取角色列表 |
| 角色分页列表 | GET | `/mx-ce-system/api/v1/roles/pages` | 分页查询角色 |

### 04. 电池接口
| 接口 | 方法 | 路径 | 说明 |
|------|------|------|------|
| 电池列表（移动端） | POST | `/mx-ce-system/api/battery/batteryList` | 分页查询电池 |
| PC端电池列表 | POST | `/mx-ce-system/api/battery/batteryListPc` | PC端电池分页 |
| 电池详情 | POST | `/mx-ce-system/api/battery/batteryDetail` | 查询电池详情 |
| 电池当前定位 | POST | `/mx-ce-system/api/battery/batteryPosition` | 获取电池位置 |
| PC端行程轨迹 | GET | `/mx-ce-system/api/battery/tripTrack` | 查询行程轨迹 |
| PC端充放电记录 | POST | `/mx-ce-system/api/battery/chargeDischargeRecord` | 充放电历史 |
| PC端电池参数曲线 | POST | `/mx-ce-system/api/battery/batteryParameterCurve` | 参数曲线 |
| 电池故障数统计 | POST | `/mx-ce-system/api/battery/batteryFault/{year}` | 年度故障统计 |
| 允许充放电 | POST | `/mx-ce-system/api/battery/allowDischarge` | 允许电池充放电 |
| 禁止充电 | POST | `/mx-ce-system/api/battery/disableCharge` | 禁止充电 |
| 禁止放电 | POST | `/mx-ce-system/api/battery/disableDischarge` | 禁止放电 |
| 重启BMS | POST | `/mx-ce-system/api/battery/remoteRestartBms` | 远程重启BMS |
| 重启DTU | POST | `/mx-ce-system/api/battery/remoteRestartDtu` | 远程重启DTU |
| 全部重启 | POST | `/mx-ce-system/api/battery/remoteRestartAll` | 全部重启 |
| 导出电池列表 | POST | `/mx-ce-system/api/battery/_export` | 导出电池Excel |

### 05. 电柜接口
| 接口 | 方法 | 路径 | 说明 |
|------|------|------|------|
| 电柜详情 | GET | `/mx-ce-system/api/cabinet/cabinetDetail` | 查询电柜详情 |
| 柜仓信息 | GET | `/mx-ce-system/api/cabinet/cabinetDoorInfo` | 查询仓门电池 |
| PC端操作日志 | POST | `/mx-ce-system/api/cabinet/pcCabinetOperationLog` | 操作记录 |
| PC端柜效查询 | POST | `/mx-ce-system/api/cabinet/pcCabinetEffect` | 柜效统计 |
| PC端柜效详情-换电 | POST | `/mx-ce-system/api/cabinet/PcCabinetEffectDetail` | 换电明细 |
| PC端柜效详情-用电 | POST | `/mx-ce-system/api/cabinet/PcCabinetEffectDetailByPower` | 用电明细 |
| 移动端柜效查询 | POST | `/mx-ce-system/api/cabinet/cabinetEffect` | 移动端柜效 |
| 移动端操作日志 | POST | `/mx-ce-system/api/cabinet/cabinetOperationLog` | 移动端日志 |
| 操控电柜门 | POST | `/mx-ce-system/api/cabinet/optCabinetDoor` | 开/禁用/启用仓门 |
| 操控电柜禁启用 | POST | `/mx-ce-system/api/cabinet/optCabinetStatus` | 整柜启用/禁用 |
| 调节满电阀值 | POST | `/mx-ce-system/api/cabinet/adjustBatteryFull` | 调整满电阈值 |
| 批量调整满电阀值 | POST | `/mx-ce-system/api/cabinet/batchAdjustBatteryFull` | 批量调整 |
| 调整音量大小 | POST | `/mx-ce-system/api/cabinet/adjustVolume` | 调整音量 |
| 远程重启 | POST | `/mx-ce-system/api/cabinet/remoteRestart` | 重启电柜 |
| 告警数据 | POST | `/mx-ce-system/api/cabinet/cabinetAlarmData` | 告警记录 |
| 电柜离线记录 | POST | `/mx-ce-system/api/alarmRecords/cabinetOfflineList` | 离线记录 |
| PC端电柜列表 | POST | `/mx-ce-system/api/cabinet/pcCabinetList` | 电柜分页 |
| PC端电柜编辑 | PUT | `/mx-ce-system/api/cabinet/pcCabinetEdit` | 编辑电柜信息 |
| PC端换电柜二维码 | GET | `/mx-ce-system/api/cabinet/pcCabinetQrCode` | 获取电柜二维码 |
| PC端资产地图 | GET | `/mx-ce-system/api/cabinet/pcCabinetAssetMap` | 地图视图 |
| PC端导出电柜列表 | POST | `/mx-ce-system/api/cabinet/pcCabinetList_export` | 导出电柜 |
| PC端导出告警信息 | POST | `/mx-ce-system/api/cabinet/exportCabinetAlarmData` | 导出告警 |
| PC端导出操作日志 | POST | `/mx-ce-system/api/cabinet/pcCabinetOperationLog_export` | 导出日志 |
| 仓门实时性能 | GET | `/mx-ce-system/api/cabinet/cabinetDoorPerformance` | 单门性能 |

### 06. 工单接口
| 接口 | 方法 | 路径 | 说明 |
|------|------|------|------|
| PC端故障检修列表 | POST | `/mx-ce-system/api/workOrders/listWorkOrdersPc` | 故障工单列表 |
| 新增工单 | POST | `/mx-ce-system/api/workOrders/newWorkOrders` | 创建工单 |
| PC新增工单 | POST | `/mx-ce-system/api/workOrders/newWorkOrdersPc` | PC创建工单 |
| 检修提交 | POST | `/mx-ce-system/api/workOrders/maintenance` | 提交检修结果 |
| 获取工单详情 | POST | `/mx-ce-system/api/workOrders/OrdersDetails` | 工单详情 |
| 故障定义列表 | POST | `/mx-ce-system/api/workOrders/listOmsWorkFaultDefinitionOrders` | 故障定义 |
| 故障定义新增 | POST | `/mx-ce-system/api/workOrders/newOmsWorkFaultDefinitionOrders` | 新增故障定义 |
| 工单操作日志 | POST | `/mx-ce-system/api/workOrders/workOrdersLog` | 工单日志 |

### 07. 套餐计费接口
| 接口 | 方法 | 路径 | 说明 |
|------|------|------|------|
| 套餐计费列表 | POST | `/mx-ce-system/api/OmsPackageBillingController/getPackageBilling` | 套餐列表 |
| 新增套餐计费 | POST | `/mx-ce-system/api/OmsPackageBillingController/addPackageBilling` | 新增套餐 |
| 编辑套餐计费 | POST | `/mx-ce-system/api/OmsPackageBillingController/editPackageBilling` | 编辑套餐 |
| 作废套餐计费 | POST | `/mx-ce-system/api/OmsPackageBillingController/cancelPackageBilling` | 作废套餐 |
| 获取品牌下拉列表 | GET | `/mx-ce-system/api/OmsPackageBillingController/getBrandList` | 品牌列表 |
| 导出套餐计费列表 | POST | `/mx-ce-system/api/OmsPackageBillingController/_export` | 导出套餐 |

### 08. 运营数据统计接口
| 接口 | 方法 | 路径 | 说明 |
|------|------|------|------|
| PC端首页换电次数统计 | POST | `/mx-ce-system/api/operationalDataStatistics/getOmsChangeOrderSum` | 换电统计 |
| PC端首页营运订单统计 | POST | `/mx-ce-system/api/operationalDataStatistics/getOmsLeaseOrderSum` | 订单统计 |
| 订单简报 | POST | `/mx-ce-system/api/operationalDataStatistics/getOrderBrief` | 订单简报 |
| 柜效简报 | POST | `/mx-ce-system/api/operationalDataStatistics/getCabinetEfficiencyBrief` | 柜效简报 |
| 告警简报 | POST | `/mx-ce-system/api/operationalDataStatistics/getAlarmBrief` | 告警简报 |
| 换电数量（月） | GET | `/mx-ce-system/api/operationalDataStatistics/getChangeBatteryQuantity/{year}` | 月换电量 |
| 新增用户数 | GET | `/mx-ce-system/api/operationalDataStatistics/getNewUser/{year}` | 年新增用户 |
| 用户增长情况 | GET | `/mx-ce-system/api/operationalDataStatistics/getUserExpandingTrend` | 用户增长趋势 |
| 站点换电次数排名 | POST | `/mx-ce-system/api/operationalDataStatistics/getCabinetEfficiencyRank` | 站点排名 |

### 09. 押金管理接口
| 接口 | 方法 | 路径 | 说明 |
|------|------|------|------|
| 退押订单 | POST | `/mx-ce-system/api/depositOrder/refundDepositOrder` | 退押列表 |
| 押金解冻 | POST | `/mx-ce-system/api/depositOrder/unfreeze` | 解冻押金 |
| 审核退押订单 | PUT | `/mx-ce-system/api/depositOrder/auditSuccess` | 审核通过 |
| 执行押金解冻成功 | PUT | `/mx-ce-system/api/depositOrder/executeUnfreeze` | 执行成功 |
| 执行押金解冻失败 | PUT | `/mx-ce-system/api/depositOrder/executeUnfreezeFail` | 执行失败 |
| 退押订单导出 | POST | `/mx-ce-system/api/depositOrder/refundDepositOrderExport` | 导出退押 |

### 10. 企业管理接口
| 接口 | 方法 | 路径 | 说明 |
|------|------|------|------|
| 企业统计指标卡片 | GET | `/mx-ce-system/api/enterprise/statistics/{enterpriseId}` | 企业统计 |
| 企业员工列表 | POST | `/mx-ce-system/api/enterprise/staff/list` | 员工列表 |
| 企业员工新增 | POST | `/mx-ce-system/api/enterprise/staff/add` | 新增员工 |
| 企业员工套餐订单 | POST | `/mx-ce-system/api/enterprise/staff/mealOrderList` | 套餐订单 |
| 企业客户交易明细 | POST | `/mx-ce-system/api/enterprise/transaction/list` | 交易明细 |
| 企业充值 | POST | `/mx-ce-system/api/accountingDataStatistics/getEnterpriseRecharge` | 企业充值 |

### 11. 用户管理接口
| 接口 | 方法 | 路径 | 说明 |
|------|------|------|------|
| 注册用户列表 | POST | `/mx-ce-system/api/userManagement/registerUserList` | 用户列表 |
| 注册用户详情 | GET | `/mx-ce-system/api/userManagement/registerUser` | 用户详情 |
| 实名认证记录 | POST | `/mx-ce-system/api/userManagement/realNameUserList` | 实名列表 |
| 手动实名 | POST | `/mx-ce-system/api/userManagement/manualRealName` | 手动实名 |
| 余额充值 | GET | `/mx-ce-system/api/userManagement/recharge` | 充值余额 |
| 重置用户密码 | PATCH | `/mx-ce-system/api/userManagement/resetPassword/{id}` | 重置密码 |

### 12. 优惠券接口
| 接口 | 方法 | 路径 | 说明 |
|------|------|------|------|
| 优惠券列表 | POST | `/mx-ce-system/api/coupon/smsCouponList` | 优惠券列表 |
| 新增优惠券 | POST | `/mx-ce-system/api/coupon/addCoupon` | 创建优惠券 |
| 派发优惠券 | POST | `/mx-ce-system/api/coupon/sendCoupon` | 发放优惠券 |
| 批量派发优惠券 | POST | `/mx-ce-system/api/coupon/importMobile` | 批量发放 |
| 回收优惠券 | GET | `/mx-ce-system/api/coupon/recycleCoupon` | 回收 |
| 优惠券发放记录 | POST | `/mx-ce-system/api/coupon/couponSendRecord` | 发放记录 |

### 13. 告警记录接口
| 接口 | 方法 | 路径 | 说明 |
|------|------|------|------|
| 告警信息查询 | POST | `/mx-ce-system/api/alarmRecords/screenAlarmRecords` | 告警列表 |
| 电池告警列表 | POST | `/mx-ce-system/api/alarmRecords/alarmBatteryList` | 电池告警 |
| 电柜异常告警 | POST | `/mx-ce-system/api/alarmRecords/cabinet` | 电柜告警 |
| 电柜离线记录 | POST | `/mx-ce-system/api/alarmRecords/cabinetOfflineList` | 离线记录 |
| 导出电池告警 | POST | `/mx-ce-system/api/alarmRecords/exportAlarmBatteryList` | 导出 |
| 导出电柜告警 | POST | `/mx-ce-system/api/alarmRecords/exportCabinet` | 导出 |

### 14. 换电订单接口
| 接口 | 方法 | 路径 | 说明 |
|------|------|------|------|
| PC套餐订单列表 | POST | `/mx-ce-system/api/apiOmsManagementOrderController/screenManagementOrder` | 订单列表 |
| 换电记录 | POST | `/mx-ce-system/api/apiOmsManagementOrderController/omsChangeOrder` | 换电记录 |
| 套餐订单详情 | GET | `/mx-ce-system/api/apiOmsManagementOrderController/managementDetails` | 订单详情 |
| 订单退款 | POST | `/mx-ce-system/api/apiOmsManagementOrderController/omsOrderRefund` | 退款 |
| 导出套餐订单 | POST | `/mx-ce-system/api/apiOmsManagementOrderController/_export` | 导出 |
| 导出换电记录 | POST | `/mx-ce-system/api/apiOmsManagementOrderController/_exportChangeOrder` | 导出换电 |
| 逾期订单 | POST | `/mx-ce-system/api/apiOmsManagementOrderController/omsOverdueOrder` | 逾期订单 |
| 解冻订单 | GET | `/mx-ce-system/api/apiOmsManagementOrderController/unfreezeOrder` | 解冻 |

### 15. 仓储调拨接口
| 接口 | 方法 | 路径 | 说明 |
|------|------|------|------|
| PC电柜调拨列表 | POST | `/mx-ce-system/api/wareHouse/list` | 调拨列表 |
| PC新增电柜调拨 | POST | `/mx-ce-system/api/wareHouse/add` | 新增调拨 |
| PC审核电柜调拨 | PUT | `/mx-ce-system/api/wareHouse/examineCabinetWarehouse` | 审核调拨 |
| PC电池调拨列表 | POST | `/mx-ce-system/api/wareHouse/warehouseBattery` | 电池调拨 |
| PC端新增电池调拨 | POST | `/mx-ce-system/api/wareHouse/addWarehousePc` | 新增电池调拨 |
| PC预约入仓列表 | POST | `/mx-ce-system/api/wareHouse/listAppointment` | 预约入仓 |
| PC新增预约入仓 | POST | `/mx-ce-system/api/wareHouse/addAppointment` | 新增预约 |
| 导出电柜调拨列表 | POST | `/mx-ce-system/api/wareHouse/export` | 导出调拨 |

### 16. 通知公告接口
| 接口 | 方法 | 路径 | 说明 |
|------|------|------|------|
| 通知公告列表 | POST | `/mx-ce-system/api/smsMessageNotify/list` | 公告列表 |
| 新增通知公告 | POST | `/mx-ce-system/api/smsMessageNotify/add` | 新增公告 |
| 发布通知公告 | GET | `/mx-ce-system/api/smsMessageNotify/release` | 发布 |
| 公告操作日志 | POST | `/mx-ce-system/api/smsMessageNotify/getNotifyLog` | 日志 |

### 17. 渠道管理接口
| 接口 | 方法 | 路径 | 说明 |
|------|------|------|------|
| 获取渠道个人信息 | GET | `/mx-ce-system/api/channel/terminal/getChannelInfo` | 渠道信息 |
| 首页收入明细 | GET | `/mx-ce-system/api/channel/terminal/getChannelIncomeDetail` | 收入明细 |
| 收入明细 | POST | `/mx-ce-system/api/channel/terminal/getIncomeDetail` | 收入列表 |
| 渠道用户推广二维码 | GET | `/mx-ce-system/api/channel/terminal/getChannelPromotionQrCode` | 推广二维码 |
| 渠道用户账户提现 | POST | `/mx-ce-system/api/channel/terminal/channelAccountWithdraw` | 提现 |

### 18. 布放管理接口
| 接口 | 方法 | 路径 | 说明 |
|------|------|------|------|
| PC端电柜布放单分页 | POST | `/mx-ce-system/api/omsCabinetLayoutController/pcCabinetLayoutList` | 布放列表 |
| 新增布放单 | POST | `/mx-ce-system/api/omsCabinetLayoutController/addCabinetLayout` | 新增布放 |
| 布放明细详情 | GET | `/mx-ce-system/api/omsCabinetLayoutController/getCabinetLayoutDetail` | 布放详情 |
| 布放提交 | PUT | `/mx-ce-system/api/omsCabinetLayoutController/submitCabinetLayoutDetail` | 提交布放 |
| 布放验收 | PUT | `/mx-ce-system/api/omsCabinetLayoutController/acceptanceCabinetLayout` | 验收 |
| 驳回信息分页列表 | POST | `/mx-ce-system/api/omsCabinetLayoutController/getCabinetLayoutRejectList` | 驳回列表 |

### 19. 常见问题接口
| 接口 | 方法 | 路径 | 说明 |
|------|------|------|------|
| 常见问题列表 | POST | `/mx-ce-system/api/sms/customer/getQuestion` | 问题列表 |
| 新增常见问题 | POST | `/mx-ce-system/api/sms/customer/addQuestion` | 新增问题 |
| 上下架常见问题 | GET | `/mx-ce-system/api/sms/customer/updateQuestionStatus` | 上下架 |

### 20. 网点签约接口
| 接口 | 方法 | 路径 | 说明 |
|------|------|------|------|
| PC网点签约列表 | POST | `/mx-ce-system/api/netPointContracts/pcNetPoint` | 签约列表 |
| PC新增网点签约 | POST | `/mx-ce-system/api/netPointContracts/addNetPointContracts` | 新增签约 |
| PC审核网点 | PUT | `/mx-ce-system/api/netPointContracts/branchAudit` | 审核 |
| 网点签约详情 | GET | `/mx-ce-system/api/netPointContracts/pcNetPointDetails` | 详情 |

## 常见错误码

| 错误码 | 说明 | 解决方法 |
|--------|------|----------|
| A0201 | 用户不存在/余额不足 | 检查用户信息 |
| A0210 | 用户名或密码错误 | 检查账号密码 |
| A0230 | 登录状态失效 | 重新获取 token |
| A0301 | 访问未授权 | 检查权限 |
| A0303 | 请求过于频繁 | 稍后再试 |
| B0210 | 系统限流 | 等待后重试 |
| B0400 | 短信验证码错误 | 重新获取验证码 |
| D0007 | 无法识别该电柜 | 检查电柜编号 |
| D0008 | 请购买套餐 | 用户未购套餐 |
| D0010 | 换电失败 | 检查电池和仓门状态 |
| D0013 | 操作失败 | 重试或联系技术支持 |

## 常见电柜编号
- TSD25100059（快先森总部十仓柜，10仓门）
- TSD25100075
- TSD25100417
- TSD25040114（生产环境）

## 完整 API 文档
完整 501 个 API 端点请参考 `mxsy-pre-system-service` 技能的 `references/api-index.md` 文件。
