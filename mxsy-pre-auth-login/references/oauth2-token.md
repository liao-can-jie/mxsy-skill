# OAuth2 Token API Reference

Source: OpenAPI 3.0.1, title `认证中心`, version `3.0.0`.

## Endpoint

```text
POST https://pre.miaoxianghuandian.com/mx-ce-auth/oauth2/token
```

Summary: OAuth2 认证.

Description: 登录入口.

Tag: 认证登录接口.

Operation ID: `postAccessToken`.

## Header

| Name | Required | Description | Example |
| --- | --- | --- | --- |
| `Accept` | recommended | Response media types accepted by the caller | `*/*` |
| `Authorization` | conditional | 客户端信息，Basic authorization header. For `grant_type=password` and `grant_type=captcha`, always use the fixed value shown here. | `Basic bWFsbC1hZG1pbjoxMjM0NTY=` |
| `Content-Type` | yes | Form body content type | `application/x-www-form-urlencoded` |

Use the fixed Basic header for `password` and `captcha` login. Do not print this value in final answers or logs unless the user explicitly requests a literal debug artifact.

## Form Body Parameters

| Name | Required | Applies To | Description | Example |
| --- | --- | --- | --- | --- |
| `grant_type` | yes | all modes | 授权模式 | `uni_app_sms` |
| `username` | conditional | `captcha`, `password` | 用户名 | |
| `password` | conditional | `captcha`, `password`, `uni_app_password` | 用户密码; URL-encode this value | `<password>` |
| `verifyCodeKey` | conditional | `captcha` | 验证码缓存 Key | |
| `verifyCode` | conditional | `captcha` | 验证码 | |
| `mobile` | conditional | `uni_app_sms`, `uni_app_password` | 手机号 | `<mobile>` |
| `smsCode` | conditional | `uni_app_sms` | 手机验证码 | |
| `code` | conditional | `uni_app_wx` | 授权码 | |
| `cid` | conditional | `uni_app_wx`, `uni_app_password`, `uni_app_sms` | 个推 id | |
| `refresh_token` | conditional | `refresh_token` | 刷新 token | |

## Required Fields By Grant Type

| `grant_type` | Required fields |
| --- | --- |
| `uni_app_sms` | `mobile`, `smsCode`, `cid` |
| `uni_app_password` | `mobile`, `password`, `cid` |
| `uni_app_wx` | `code`, `cid` |
| `wx_mini_app` | Not specified by the provided OpenAPI; ask for project-specific fields before implementation |
| `captcha` | `username`, `password`, `verifyCodeKey`, `verifyCode`; fixed Basic `Authorization` header |
| `password` | `username`, `password`; fixed Basic `Authorization` header |
| `refresh_token` | `refresh_token` |

## cURL Examples

SMS login:

```bash
curl --request POST \
  --url "https://pre.miaoxianghuandian.com/mx-ce-auth/oauth2/token" \
  --header "Accept: */*" \
  --header "Authorization: Basic <client-basic-token>" \
  --header "Content-Type: application/x-www-form-urlencoded" \
  --data-urlencode "grant_type=uni_app_sms" \
  --data-urlencode "mobile=<mobile>" \
  --data-urlencode "smsCode=<smsCode>" \
  --data-urlencode "cid=<cid>"
```

Mobile password login:

```bash
curl --request POST \
  --url "https://pre.miaoxianghuandian.com/mx-ce-auth/oauth2/token" \
  --header "Accept: */*" \
  --header "Authorization: Basic <client-basic-token>" \
  --header "Content-Type: application/x-www-form-urlencoded" \
  --data-urlencode "grant_type=uni_app_password" \
  --data-urlencode "mobile=<mobile>" \
  --data-urlencode "password=<password>" \
  --data-urlencode "cid=<cid>"
```

Username password login:

```bash
curl --request POST \
  --url "https://pre.miaoxianghuandian.com/mx-ce-auth/oauth2/token" \
  --header "Accept: */*" \
  --header "Authorization: Basic bWFsbC1hZG1pbjoxMjM0NTY=" \
  --header "Content-Type: application/x-www-form-urlencoded" \
  --data-urlencode "grant_type=password" \
  --data-urlencode "username=<username>" \
  --data-urlencode "password=<password>"
```

Captcha login:

```bash
curl --request POST \
  --url "https://pre.miaoxianghuandian.com/mx-ce-auth/oauth2/token" \
  --header "Accept: */*" \
  --header "Authorization: Basic bWFsbC1hZG1pbjoxMjM0NTY=" \
  --header "Content-Type: application/x-www-form-urlencoded" \
  --data-urlencode "grant_type=captcha" \
  --data-urlencode "username=<username>" \
  --data-urlencode "password=<password>" \
  --data-urlencode "verifyCodeKey=<verifyCodeKey>" \
  --data-urlencode "verifyCode=<verifyCode>"
```

Refresh token:

```bash
curl --request POST \
  --url "https://pre.miaoxianghuandian.com/mx-ce-auth/oauth2/token" \
  --header "Accept: */*" \
  --header "Authorization: Basic <client-basic-token>" \
  --header "Content-Type: application/x-www-form-urlencoded" \
  --data-urlencode "grant_type=refresh_token" \
  --data-urlencode "refresh_token=<refresh-token>"
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

On successful login, compose the authorization header for later APIs from `data.token_type` and `data.access_token`:

```text
Authorization: <token_type> <access_token>
```

If `data.token_type` is `Bearer`, use `Authorization: Bearer <access_token>`.

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
