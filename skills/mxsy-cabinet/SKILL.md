---
name: mxsy-cabinet
description: 秒享商用换电双环境电柜操作技能集，包含电柜详情、柜仓信息、操作日志、满电阀值调节、仓门开关、音量调节、告警查询、批量操作等常用电柜管理接口。使用前需先登录获取 token。完整 API 见 mxsy-ops-playbook。
tags: [秒享, 电柜, cabinet]
---

# 秒享商用换电 · 电柜操作

## 环境
| 环境 | Base URL |
|------|----------|
| Pre | `https://pre.miaoxianghuandian.com` |
| Production | `https://gateway.miaoxianghuandian.com` |

认证: Bearer Token（登录后获取，不同环境 token 不通用）

## 认证流程
使用 `mxsy-pre-auth-login` 获取 token，或手动调用：
```bash
curl -X POST "https://pre.miaoxianghuandian.com/mx-ce-auth/oauth2/token" \
  -H "Authorization: Basic bWFsbC1hZG1pbjoxMjM0NTY=" \
  --data-urlencode "grant_type=password" \
  --data-urlencode "username=liaocanjie" \
  --data-urlencode "password=123456"
```

## 电柜管理接口（常用）

### 1. 电柜详情
```
GET /mx-ce-system/api/cabinet/cabinetDetail?cabinetCode=<电柜编号>
Authorization: Bearer <access_token>
```
返回字段：`cabinetCode`, `cabinetName`, `cabinetStatusLabel`, `totalVoltage`, `totalCurrent`, `totalPower`, `cabinetTemperature`, `gsmSignalStrength`, `longitude`, `latitude`, `statusLabel`

### 2. 柜仓信息
```
GET /mx-ce-system/api/cabinet/cabinetDoorInfo?cabinetCode=<电柜编号>
Authorization: Bearer <access_token>
```

### 3. PC端操作日志
```
POST /mx-ce-system/api/cabinet/pcCabinetOperationLog
Authorization: Bearer <access_token>
Content-Type: application/json
{
  "cbId": "<电柜编号>",
  "pageCurrent": 1,
  "pageSize": 10
}
```

### 4. PC端换电柜列表
```
POST /mx-ce-system/api/cabinet/pcCabinetList
Authorization: Bearer <access_token>
Content-Type: application/json
{
  "pageCurrent": 1,
  "pageSize": 10
}
```

### 5. PC端电柜业务状态列表
```
GET /mx-ce-system/api/cabinet/pcCabinetBusinessStatusList
Authorization: Bearer <access_token>
```

### 6. PC端在线状态列表
```
GET /mx-ce-system/api/cabinet/pcCabinetOnlineStatusList
Authorization: Bearer <access_token>
```

### 7. PC端柜效查询
```
POST /mx-ce-system/api/cabinet/pcCabinetEffect
Authorization: Bearer <access_token>
Content-Type: application/json
{
  "pageCurrent": 1,
  "pageSize": 10
}
```

### 8. PC端柜效详情-换电查询
```
POST /mx-ce-system/api/cabinet/PcCabinetEffectDetail
Authorization: Bearer <access_token>
Content-Type: application/json
{
  "pageCurrent": 1,
  "pageSize": 10
}
```

### 9. 移动端柜效查询
```
POST /mx-ce-system/api/cabinet/cabinetEffect
Authorization: Bearer <access_token>
Content-Type: application/json
{
  "pageCurrent": 1,
  "pageSize": 10
}
```

### 10. 移动端操作日志
```
POST /mx-ce-system/api/cabinet/cabinetOperationLog
Authorization: Bearer <access_token>
Content-Type: application/json
{
  "cabinetCode": "<电柜编号>",
  "pageCurrent": 1,
  "pageSize": 10
}
```

### 11. 告警数据查询
```
POST /mx-ce-system/api/cabinet/cabinetAlarmData
Authorization: Bearer <access_token>
Content-Type: application/json
{
  "cabinetCode": "<电柜编号>",
  "pageCurrent": 1,
  "pageSize": 10
}
```

### 12. 电柜离线记录
```
POST /mx-ce-system/api/alarmRecords/cabinetOfflineList
Authorization: Bearer <access_token>
Content-Type: application/json
{
  "pageCurrent": 1,
  "pageSize": 10
}
```

## 仓门操作接口

### 13. 操控电柜门（开仓/禁用/启用）
```
POST /mx-ce-system/api/cabinet/optCabinetDoor
Authorization: Bearer <access_token>
Content-Type: application/json
{
  "devId": "<电柜编号>",
  "doorIds": [1,2,3],
  "optType": <1开仓/2禁用/3启用>,
  "password": "123456",
  "remark": "<备注，可选>"
}
```

**注意：**
- `doorIds` 必须为整数数组，如 `[1]` 或 `[1,2,3]`
- 开仓（`optType=1`）时 `doorIds` 必填，不支持空数组开全部
- 一次最多可开 10 个仓门（取决于电柜总仓数）
- 返回 `data: "开仓指令发送中"` 表示指令已下发，不代表仓门已物理打开
- 实际操作验证：TSD25100059 十仓柜，开仓 `[1,2,3,4,5,6,7,8,9,10]` 全部成功

### 14. 变更电柜上报地址
```
POST /mx-ce-system/api/cabinet/reportCabinetAddr
Authorization: Bearer <access_token>
Content-Type: application/json
{
  "devId": "<电柜编号>",
  "domainName": "<上报服务器域名>",
  "port": <端口号>,
  "password": "123456"
}
```
返回：`data: "变更上报地址指令发送中"` 表示指令已下发

**mobile 参数的作用：**
- 传入 `mobile`：代表用户要换电池，需要仓门里有电池且换绑到此用户，且此用户需要有有效套餐（返回 `B0001: 当前用户未购买套餐`）
- 不传 `mobile`：纯开仓操作，任何有操作权限的账号均可执行，无需套餐

**开仓行为：**
- 不传 `doorIds`：打开所有仓门（本次验证 TSD25100059 不带 doorIds 开仓成功）
- 传入 `doorIds`：仅打开指定仓门，最多 10 个
- 返回 `data: "开仓指令发送中"` 表示指令已下发，不代表仓门已物理打开

### 14. 操控电柜禁启用（整柜）
```
POST /mx-ce-system/api/cabinet/optCabinetStatus
Authorization: Bearer <access_token>
Content-Type: application/json
{
  "devId": "<电柜编号>",
  "optStatus": <1启用/2禁用>,
  "password": "123456"
}
```

### 15. 仓门禁用记录
```
POST /mx-ce-system/api/smsDoor/disableRecord
Authorization: Bearer <access_token>
Content-Type: application/json
{
  "pageCurrent": 1,
  "pageSize": 10
}
```

### 16. 仓门开启记录
```
POST /mx-ce-system/api/smsDoor/enableRecord
Authorization: Bearer <access_token>
Content-Type: application/json
{
  "pageCurrent": 1,
  "pageSize": 10
}
```

### 17. 获取仓门禁用原因列表
```
POST /mx-ce-system/api/smsDoor/disableReason
Authorization: Bearer <access_token>
Content-Type: application/json
{
  "pageCurrent": 1,
  "pageSize": 10
}
```

## 电池与满电阀值

### 18. 调节满电阀值（单个）
```
POST /mx-ce-system/api/cabinet/adjustBatteryFull
Authorization: Bearer <access_token>
Content-Type: application/json
{
  "devId": "<电柜编号>",
  "fullBatteryStd": <阀值百分比>,
  "password": "123456"
}
```

### 19. 批量调整电柜满电阀值
```
POST /mx-ce-system/api/cabinet/batchAdjustBatteryFull
Authorization: Bearer <access_token>
Content-Type: application/x-www-form-urlencoded
devIds=<电柜编号1>,<电柜编号2>
fullBatteryStd=<阀值百分比>
```

### 20. 调整音量大小
```
POST /mx-ce-system/api/cabinet/adjustVolume
Authorization: Bearer <access_token>
Content-Type: application/json
{
  "devId": "<电柜编号>",
  "volume": <音量值>,
  "password": "123456"
}
```

### 21. 远程重启电柜
```
POST /mx-ce-system/api/cabinet/remoteRestart
Authorization: Bearer <access_token>
Content-Type: application/json
{
  "devId": "<电柜编号>",
  "password": "123456"
}
```

### 22. 修改容量识别
```
PATCH /mx-ce-system/api/cabinet/<cbId>/capacityEnable
Authorization: Bearer <access_token>
capacityEnable=<true/false>
```

### 23. 切换电柜远程上报地址
```
POST /mx-ce-system/api/cabinet/reportCabinetAddr
Authorization: Bearer <access_token>
Content-Type: application/json
{
  "devId": "<电柜编号>",
  "reportUrl": "<上报域名>",
  "<端口参数>": <端口号>,
  "password": "123456"
}
```

**⚠️ 待确认参数：**
- `devId` ✅ 必填，电柜编号
- `reportUrl` ✅ 必填，上报域名（如 `device.miaoxianghuandian.com`，不含端口）
- `password` ✅ 必填，操作密码
- 端口字段名 ❓ **未确认**——尝试过 `port`/`reportPort`/`serverPort`/`servicePort` 均返回"端口不能为空"，需进一步探索

**错误码：**
- `A0400` + "域名不能为空" → `reportUrl` 字段缺失或为空
- `A0400` + "端口不能为空" → 端口参数名错误或格式错误

**用途：** 切换电柜的远程上报地址（TCP/Socket 连接目标）

### 24. 导出换电柜列表
```
POST /mx-ce-system/api/cabinet/pcCabinetList_export
Authorization: Bearer <access_token>
Content-Type: application/json
{
  "pageCurrent": 1,
  "pageSize": 10
}
```

### 25. 导出操作日志
```
POST /mx-ce-system/api/cabinet/pcCabinetOperationLog_export
Authorization: Bearer <access_token>
Content-Type: application/json
{
  "cbId": "<电柜编号>",
  "pageCurrent": 1,
  "pageSize": 10
}
```

### 26. 导出告警信息
```
POST /mx-ce-system/api/cabinet/exportCabinetAlarmData
Authorization: Bearer <access_token>
Content-Type: application/json
{
  "cabinetCode": "<电柜编号>",
  "pageCurrent": 1,
  "pageSize": 10
}
```

### 27. 导出柜效查询
```
POST /mx-ce-system/api/cabinet/exportPcCabinetEffect
Authorization: Bearer <access_token>
Content-Type: application/json
{
  "pageCurrent": 1,
  "pageSize": 10
}
```

### 28. PC端换电柜二维码
```
GET /mx-ce-system/api/cabinet/pcCabinetQrCode?cabinetCode=<电柜编号>
Authorization: Bearer <access_token>
```

## PC端电柜编辑

### 29. PC端电柜编辑修改
```
PUT /mx-ce-system/api/cabinet/pcCabinetEdit
Authorization: Bearer <access_token>
Content-Type: application/json
{
  "id": "<电柜ID>",
  "cbId": "<电柜编号>",
  "cbName": "<电柜名称>",
  "cityCode": "<城市编码>",
  "cbAddress": "<电柜地址>",
  "cbLongitude": "<经度>",
  "cbLatitude": "<纬度>"
}
```

### 30. PC端电柜图片修改
```
PUT /mx-ce-system/api/cabinet/pcCabinetImageEdit
Authorization: Bearer <access_token>
Content-Type: application/json
{
  "id": "<电柜ID>",
  "img": "<图片URL或Base64>"
}
```

## 地图相关

### 31. PC端换电柜-资产地图
```
GET /mx-ce-system/api/cabinet/pcCabinetAssetMap
Authorization: Bearer <access_token>
```

### 32. PC端-地图位置-换电柜实时位置详情
```
GET /mx-ce-system/api/cabinet/cabinetMapDetail?cabinetCode=<电柜编号>
Authorization: Bearer <access_token>
```

## 仓门实时性能

### 33. 柜门实时性能
```
GET /mx-ce-system/api/cabinet/cabinetDoorPerformance?cabinetCode=<电柜编号>&doorId=<仓门号>
Authorization: Bearer <access_token>
```

## 响应格式
```json
{"code":"00000","data":{},"msg":"操作成功"}
```
- `code === "00000"` 为成功
- 失败时返回错误码如 `A0230`（登录失效）、`B0210`（系统限流）等
- `optCabinetDoor` 成功时 `data` 为字符串：`"开仓指令发送中"`

## 实际操作验证记录

### TSD25100059（十仓柜，Pre 环境）
- ✅ 不带 doorIds、不带 mobile 开所有仓门 → 成功，返回 `开仓指令发送中`
- ✅ 带 doorIds: [1] 开单个仓门 → 成功
- ✅ 带 doorIds: [1..10] 开全部仓门 → 成功
- ✅ 操作密码 `123456` 正确

### 二维码解码
本地优先使用 `zbarimg` CLI 解码，速度快、准确率高：
```bash
# 手动解码
zbarimg /path/to/qr_code.png
# 输出: QR-Code:https://xm.miaoxianghuandian.com/invite/code.html?code=TSD25100075

# 或使用脚本（自动提取电柜编号）
bash scripts/decode_qr.sh /path/to/qr_code.png
```

备选方案（当 zbarimg 不可用时）：调用 kimi-k2.7-code 视觉模型：
```python
# API: https://tokenhub.tencentmaas.com/v1/chat/completions
# model: kimi-k2.7-code
# 传入 base64 编码的图片数据
```

## 常见电柜编号
- TSD25100059（快先森总部十仓柜，10仓门）
- TSD25100075（另一电柜）

## 踩坑提醒
- 业务 API base URL 是根路径，不带 `/mx-ce-auth` 前缀
- 仓门电池状态无直接 API，需通过 App 或管理后台查询
- token 有效期 24 小时，失效返回 A0230
- 生产环境操作需二次确认
- 传 `mobile` 开仓需要用户有有效套餐；不传 `mobile` 则任何有操作权限的账号均可开仓
