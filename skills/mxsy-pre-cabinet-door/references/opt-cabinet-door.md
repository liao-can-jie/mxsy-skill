# Cabinet Door Operation API Reference

Source: OpenAPI 3.0.1, title `系统服务`, version `2.0.0`.

## Endpoint

```text
POST https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/optCabinetDoor
```

Summary: 操控电柜门，包括一键开仓、指定开仓、单个禁用、单个启用.

Tag: 电柜接口.

Operation ID: `optCabinetDoor_1`.

## Headers

| Name | Required | Description | Example |
| --- | --- | --- | --- |
| `Accept` | recommended | Response media types accepted by the caller | `*/*` |
| `Authorization` | yes | Business API bearer authorization composed from login `data.token_type` and `data.access_token` | `Bearer <access-token>` |
| `Content-Type` | yes | JSON request body content type | `application/json` |

Get `Authorization` by using `mxsy-pre-auth-login`, then concatenate `data.token_type`, one space, and `data.access_token`.

## Request Body

Schema: `OptCabinetDoorDTO`.

| Name | Required | Type | Description | Example |
| --- | --- | --- | --- | --- |
| `devId` | yes | string | 设备编号 | `<devId>` |
| `doorIds` | conditional | integer array | 柜门编号列表；为空时仅可在禁用/启用场景表示作用于柜体 | `[1,2,3]` |
| `optType` | yes | integer | 操作类型：`1` 开启/打开仓门，`2` 禁用，`3` 启用 | `1` |
| `password` | yes | string | 操作密码；目前固定为 `123456` | `123456` |
| `mobile` | no | string | 开仓过后若有电池绑定手机号；格式 `^1[3-9]\d{9}$` | `<mobile>` |
| `remark` | no | string | 备注 | `<remark>` |

## Door Selection Rules

| Operation | `optType` | `doorIds` rule |
| --- | --- | --- |
| Open one door | `1` | Provide one door number, e.g. `[1]` |
| Open multiple doors | `1` | Provide all target door numbers, e.g. `[1,2,3]` |
| Disable one door | `2` | Provide one door number, e.g. `[1]` |
| Disable multiple doors | `2` | Provide all target door numbers, e.g. `[1,2,3]` |
| Disable whole cabinet | `2` | Omit `doorIds` or send an empty list |
| Enable one door | `3` | Provide one door number, e.g. `[1]` |
| Enable multiple doors | `3` | Provide all target door numbers, e.g. `[1,2,3]` |
| Enable whole cabinet | `3` | Omit `doorIds` or send an empty list |

Do not use empty `doorIds` for `optType: 1`.

## Progressive Rate Limit

Apply a progressive rate limit to `POST /mx-ce-system/api/cabinet/optCabinetDoor` before executing the cabinet operation.

Identity dimensions:

- User key: use the authenticated user ID when available.
- IP key: use the real client IP address after trusted proxy/header normalization.
- Enforce both dimensions when both are available. Reject the request if either dimension is rate limited.

Default parameters:

| Parameter | Value |
| --- | --- |
| Base seconds | `1` |
| Multiplier | `2` |
| Base count | `5` |

For level `n` starting at `1`:

- `limitSeconds(n) = baseSeconds * multiplier^(n - 1)`
- `limitCount(n) = baseCount * multiplier^(n - 1)`
- `windowSeconds(n) = previousWindowSeconds + limitSeconds(n) * multiplier * baseCount`
- `windowSeconds(1) = 1 * 2 * 5 = 10`

Threshold examples:

| Level | Limit seconds | Limit count | Rolling window | Trigger condition |
| --- | --- | --- | --- | --- |
| `1` | `1` | `5` | `10s` | `5` requests within `10s` trigger level `2` |
| `2` | `2` | `10` | `30s` | `10` requests within `30s` trigger level `3` |
| `3` | `4` | `20` | `70s` | `20` requests within `70s` trigger level `4` |
| `4` | `8` | `40` | `150s` | `40` requests within `150s` trigger level `5` |

Implementation rules:

- Count every request that reaches this endpoint before the cabinet operation is sent, including business-failed requests. Exclude CORS preflight requests.
- Use a rolling window per identity key. A Redis sorted set keyed by endpoint plus identity is a suitable implementation: remove entries older than the largest active window, add the current request timestamp, then count entries within each level window.
- Evaluate from the highest configured level down to level `1`; the highest matched level determines the next limit level.
- When a level is triggered, apply the next level's minimum request interval. For example, `5` requests in `10s` activates level `2`, so the identity must wait at least `2s` before another accepted request. `10` requests in `30s` activates level `3`, so the wait becomes `4s`.
- Store the last accepted timestamp per identity and reject requests whose elapsed time is less than the active level's `limitSeconds`.
- Cap the maximum level to a configured value if the backend needs an upper bound. Without a cap, continue the same multiplier formula.
- Return the standard business response code `B0210` (`系统限流`) when rejecting a request, preferably with HTTP `200` and a clear `msg` consistent with existing API behavior.

## cURL Examples

Open multiple doors:

```bash
curl --request POST \
  --url "https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/optCabinetDoor" \
  --header "Accept: */*" \
  --header "Authorization: Bearer <access-token>" \
  --header "Content-Type: application/json" \
  --data '{
    "devId": "<devId>",
    "doorIds": [1, 2, 3],
    "optType": 1,
    "password": "123456",
    "remark": "<remark>"
  }'
```

Disable whole cabinet:

```bash
curl --request POST \
  --url "https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/optCabinetDoor" \
  --header "Accept: */*" \
  --header "Authorization: Bearer <access-token>" \
  --header "Content-Type: application/json" \
  --data '{
    "devId": "<devId>",
    "optType": 2,
    "password": "123456",
    "remark": "<remark>"
  }'
```

Enable multiple doors:

```bash
curl --request POST \
  --url "https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/optCabinetDoor" \
  --header "Accept: */*" \
  --header "Authorization: Bearer <access-token>" \
  --header "Content-Type: application/json" \
  --data '{
    "devId": "<devId>",
    "doorIds": [1, 2, 3],
    "optType": 3,
    "password": "123456",
    "remark": "<remark>"
  }'
```

## Response Shape

Success and business errors use the `Result` / `ResultObject` shape:

```json
{
  "code": "00000",
  "data": {},
  "msg": "操作成功"
}
```

`code` is a string. `00000` means success; every other value means failure, even when the HTTP status is 200.

HTTP response mappings from the OpenAPI:

| HTTP status | Schema |
| --- | --- |
| `200` | `Result` |
| `400` | `ResultObject` |
| `403` | `ResultObject` |
| `404` | `ResultObject` |

## Business Codes

| Code | Message |
| --- | --- |
| `00000` | 操作成功 |
| `A0201` | 用户不存在 |
| `A0201` | 余额不足 |
| `A0203` | 用户已注销,如需注册,请联系客服 |
| `A0204` | 用户账户已被禁用 |
| `A0205` | 用户账户已被锁定 |
| `A0205` | 用户账户未实名认证 |
| `A0210` | 用户名或密码错误 |
| `A0210` | 未设置密码 |
| `A0213` | 用户密码修改失败 |
| `A0230` | 登录状态失效，请重新登录 |
| `A0231` | token已被禁止访问 |
| `A0300` | 访问权限异常 |
| `A0301` | 访问未授权 |
| `A0302` | 演示环境禁止新增、修改和删除重要数据，请本地部署后测试 |
| `A0303` | 您的请求已提交，请不要重复提交或等待片刻再尝试。 |
| `A0400` | 用户请求参数错误 |
| `A0401` | 请求资源不存在 |
| `A0410` | 请求必填参数为空 |
| `A0704` | 用户未绑定电池 |
| `B0001` | 系统执行出错 |
| `B0210` | 系统限流 |
| `B0220` | 系统功能降级 |
| `B0400` | 短信验证码错误 |
| `B0401` | 验证码错误 |
| `B0502` | 手机号已被使用 |
| `B0504` | 该账户未绑定手机号 |
| `B0505` | 该手机号已被其他账户绑定 |
| `B0600` | 定位失败 |
| `B0601` | 该区域无此业务 |
| `D0001` | 未绑定电池 |
| `D0002` | 微信已绑定其他账号 |
| `D0003` | 数据一致性错误 |
| `D0005` | 账号已绑定微信 |
| `D0006` | 预下单响应参数校验失败 |
| `D0007` | 无法识别该电柜 |
| `D0008` | 请购买套餐 |
| `D0009` | 不支持该电柜类型的操作,请联系客服 |
| `D0010` | 换电失败 |
| `D0011` | 查询数据范围超过权限 |
| `D0012` | IP不允许访问 |
| `D0013` | 操作失败 |
| `D0014` | mqtt指令发送失败 |
