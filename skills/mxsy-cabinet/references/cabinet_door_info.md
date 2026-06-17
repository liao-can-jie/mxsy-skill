# 电柜仓门状态字段说明

来源: `GET /mx-ce-system/api/cabinet/cabinetDoorInfo?cabinetCode=<编号>`

## 字段含义
| 字段 | 类型 | 说明 |
|------|------|------|
| doorId | int | 仓门编号（1-N） |
| doorStatusLabel | string | 仓门状态（如"关闭"） |
| isDoorDisable | boolean | 是否禁用 |
| doorDisableReason | string | 禁用原因（可选，"1"=原因1，"其他"=其他） |
| batteryCode | string | 电池编号（空=无电池） |
| batterySoc | int | 电池电量百分比 |
| batteryStatusLabel | string | 电池状态（如"充满"） |

## 仓门禁用原因值
- `"1"` — 原因1
- `"其他"` — 其他原因

## 示例响应（TSD25100059）
```json
{
  "doorId": 1,
  "doorStatusLabel": "关闭",
  "isDoorDisable": true,
  "doorDisableReason": "1"
},
{
  "doorId": 2,
  "doorStatusLabel": "关闭",
  "isDoorDisable": false
},
{
  "doorId": 3,
  "batteryCode": "BT106003012BLW0231016194",
  "doorStatusLabel": "关闭",
  "batterySoc": 100,
  "batteryStatusLabel": "充满",
  "isDoorDisable": false
}
```