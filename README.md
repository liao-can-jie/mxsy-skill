# mxsy-skill

秒享商用换电 pre 环境 Codex skills 集合，用于让 Codex 按固定接口规则生成请求、执行登录、调用业务接口并解释响应。

## 技能列表

### `mxsy-pre-auth-login`

pre 环境认证登录 skill。

适用场景：

- 构造 `POST /mx-ce-auth/oauth2/token` 登录请求。
- 支持 `password`、`captcha`、`uni_app_sms`、`uni_app_password`、`uni_app_wx`、`refresh_token` 等授权模式。
- `grant_type=password` 和 `grant_type=captcha` 固定携带 Basic 客户端请求头。
- 登录成功后，从响应 `data.token_type` 和 `data.access_token` 组合后续业务接口请求头。
- 解释登录接口返回的业务码和错误信息。

关键规则：

- pre 登录地址：`https://pre.miaoxianghuandian.com/mx-ce-auth/oauth2/token`
- 请求类型：`application/x-www-form-urlencoded`
- `password` / `captcha` 登录固定客户端头：
  `Authorization: Basic bWFsbC1hZG1pbjoxMjM0NTY=`
- 后续业务接口鉴权头组合方式：
  `Authorization: <token_type> <access_token>`
- 示例：`token_type=Bearer` 时使用 `Authorization: Bearer <access_token>`

### `mxsy-pre-cabinet-door`

pre 环境电柜门操控 skill。

适用场景：

- 构造并调用 `POST /mx-ce-system/api/cabinet/optCabinetDoor`。
- 打开一个或多个仓门。
- 禁用一个或多个仓门。
- 启用一个或多个仓门。
- 禁用或启用整柜。
- 根据登录 skill 产出的 token 组合业务接口鉴权头。
- 解释电柜接口返回的业务码和错误信息。

关键规则：

- pre 电柜接口地址：`https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/optCabinetDoor`
- 请求类型：`application/json`
- 操作密码目前固定：`123456`
- `optType=1`：开启/打开仓门，必须传 `doorIds`
- `optType=2`：禁用，`doorIds` 为空或不传表示整柜禁用
- `optType=3`：启用，`doorIds` 为空或不传表示整柜启用
- 同时操作多个仓门时，`doorIds` 传数组，例如 `[1, 2, 3]`
- 不要把空 `doorIds` 用作一键开仓

## 使用示例

### 使用 Codex 调用登录

```text
使用 mxsy-pre-auth-login，pre 环境登录，grant_type=password，账号 <username>，密码 <password>，获取 access_token 和 token_type。
```

登录成功后，skill 会从响应中读取：

```text
data.token_type
data.access_token
```

并组合成后续接口使用的请求头：

```text
Authorization: Bearer <access_token>
```

### 登录接口 cURL 示例

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

### 使用 Codex 打开多个仓门

```text
使用 mxsy-pre-cabinet-door，打开电柜 TSD25100059 的 1、2 号仓门。
```

对应请求体：

```json
{
  "devId": "TSD25100059",
  "doorIds": [1, 2],
  "optType": 1,
  "password": "123456"
}
```

### 电柜开门 cURL 示例

```bash
curl --request POST \
  --url "https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/optCabinetDoor" \
  --header "Accept: */*" \
  --header "Authorization: Bearer <access-token>" \
  --header "Content-Type: application/json" \
  --data '{
    "devId": "TSD25100059",
    "doorIds": [1, 2],
    "optType": 1,
    "password": "123456"
  }'
```

### 禁用整柜

```text
使用 mxsy-pre-cabinet-door，禁用电柜 TSD25100059 整柜。
```

对应请求体：

```json
{
  "devId": "TSD25100059",
  "optType": 2,
  "password": "123456"
}
```

### 启用多个仓门

```text
使用 mxsy-pre-cabinet-door，启用电柜 TSD25100059 的 3、4、5 号仓门。
```

对应请求体：

```json
{
  "devId": "TSD25100059",
  "doorIds": [3, 4, 5],
  "optType": 3,
  "password": "123456"
}
```

## 安装 skills

将本仓库中的 skill 目录复制到 Codex skills 目录即可使用。

PowerShell 示例：

```powershell
$skillsDir = "$env:USERPROFILE\.codex\skills"
New-Item -ItemType Directory -Force $skillsDir
Copy-Item -Recurse -Force .\mxsy-pre-auth-login $skillsDir
Copy-Item -Recurse -Force .\mxsy-pre-cabinet-door $skillsDir
```

安装后重启 Codex，或开启新的 Codex 会话，使 skill 元数据重新加载。

也可以直接从 GitHub 克隆后复制：

```powershell
git clone https://github.com/liao-can-jie/mxsy-skill.git
cd mxsy-skill
$skillsDir = "$env:USERPROFILE\.codex\skills"
New-Item -ItemType Directory -Force $skillsDir
Copy-Item -Recurse -Force .\mxsy-pre-auth-login $skillsDir
Copy-Item -Recurse -Force .\mxsy-pre-cabinet-door $skillsDir
```

## 验证

如果本机有可用 Python，可以使用 Codex skill creator 校验器：

```powershell
python C:\Users\Administrator\.codex\skills\.system\skill-creator\scripts\quick_validate.py .\mxsy-pre-auth-login
python C:\Users\Administrator\.codex\skills\.system\skill-creator\scripts\quick_validate.py .\mxsy-pre-cabinet-door
```

注意：不要在 README、skill 文档、提交记录或日志中保存真实 access token、refresh token、短信验证码或用户密码。
