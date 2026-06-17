# 生产环境额外 API（2026-06-16 验证）

## 用户查询
```
POST /mx-ce-system/api/userManagement/registerUserList
```
查询用户绑定电池：
```json
{"mobile": "15359571908", "pageCurrent": 1, "pageSize": 10}
```
返回：`batteryCode`（绑定电池编号）

## 电池位置
```
POST /mx-ce-system/api/battery/batteryPosition
Content-Type: application/x-www-form-urlencoded
```
参数：`batteryCode=BT104803012ZGJX231112216`
返回：经纬度 + 地址（不含电柜编号）

## 电池详情
```
POST /mx-ce-system/api/battery/batteryDetail
Content-Type: application/x-www-form-urlencoded
```
参数：`batteryCode=BT104803012ZGJX231112216`
返回：SOC、电压、电流、温度、循环次数等

## 电柜仓门状态
```
GET /mx-ce-system/api/cabinet/cabinetDoorInfo?cabinetCode=<电柜编号>
```
⚠️ 生产环境用 GET，Pre 环境也用 GET。
返回每个仓门的 `batteryCode`、`batterySoc`、`doorStatusLabel`、`isDoorDisable`

## 电柜列表（带筛选）
```
POST /mx-ce-system/api/cabinet/pcCabinetList
Content-Type: application/json
```
筛选参数：
- `netName`: 网点名称（模糊匹配，如"县后"）
- `cityCode`: 城市编码（注意权限限制，可能报 D0011）
- `pageCurrent`, `pageSize`: 分页

示例：查询厦门县后
```json
{"netName": "县后", "pageCurrent": 1, "pageSize": 20}
```

## 操作日志
```
POST /mx-ce-system/api/cabinet/pcCabinetOperationLog
Content-Type: application/json
```
参数：`cbId`（电柜编号）, `pageCurrent`, `pageSize`
返回：操作记录含 `context`（操作内容）、`result`（执行结果）、`createDate`

## 满电阀值调节
```
POST /mx-ce-system/api/cabinet/adjustBatteryFull
Content-Type: application/json
```
参数：`devId`, `fullBatteryStd`（百分比）, `password`（固定"123456"）

## 绑定电池（检查用户）
```
POST /mx-ce-system/api/mealOperate/bindBattery
```
返回错误 `{"code":"B0001","msg":"当前电池已被其他用户绑定"}` 表示该手机号已绑定电池。

## 响应码速查
| code | 含义 |
|------|------|
| 00000 | 成功 |
| A0230 | token 失效，需重新登录 |
| D0011 | 查询数据范围超过权限（cityCode 无权限） |
| B0001 | 系统执行出错（业务错误） |