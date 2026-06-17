# 秒享商用换电 Skills

本仓库提供了秒享商用换电测试/生产环境相关 Skills，帮助你在支持 Skills 的智能工具中完成登录、生成接口请求、调用业务接口并分析响应。

> [!WARNING]
> 当前技能仍处于实验阶段。请谨慎使用，并**必须对 AI 发起的真实操作（包括登录、生产环境请求、开仓、禁用、启用等 API 调用）进行人工确认**。

## 技能列表

| 技能 | 简介 |
| --- | --- |
| [`mxsy-pre-auth-login`](./skills/mxsy-pre-auth-login/SKILL.md) | 秒享商用换电测试/生产环境认证登录技能。用于构造和调用 `POST /mx-ce-auth/oauth2/token`，默认使用 `grant_type=password`，支持 `password`、`captcha`、`uni_app_sms`、`uni_app_password`、`uni_app_wx`、`refresh_token` 等授权模式。`password`、`captcha` 和 `refresh_token` 请求使用安全配置中的 Basic 客户端请求头，登录成功后将 `data.token_type` 与 `data.access_token` 组合为后续业务接口的 `Authorization` 请求头；access token 到期后使用 `refresh_token` 续期。 |
| [`mxsy-pre-cabinet-door`](./skills/mxsy-pre-cabinet-door/SKILL.md) | 秒享商用换电测试/生产环境电柜门操控技能。用于构造和调用 `POST /mx-ce-system/api/cabinet/optCabinetDoor`，支持打开一个或多个仓门、禁用/启用一个或多个仓门、禁用/启用整柜，并要求从安全配置或明确用户输入获取操作密码。 |
| [`mxsy-pre-system-service`](./skills/mxsy-pre-system-service/SKILL.md) | 秒享商用换电测试/生产环境系统服务聚合技能。基于 `系统服务.md` 生成接口索引与参数明细，覆盖区域、用户、角色、菜单、部门、字典、仓储、电池、电柜、工单、企业、订单、活动等系统服务接口；已排除认证登录与电柜门操控等已有专用技能覆盖的接口。 |

> [!TIP]
> 技能会随着接口规则继续完善。提交新技能或修正接口规则时，请避免把真实 access token、refresh token、短信验证码、用户密码、Basic 客户端凭据、操作密码写入文档或提交记录。

## 环境 URL

| 环境 | 请求 URL |
| --- | --- |
| 测试环境 | `https://pre.miaoxianghuandian.com` |
| 生产环境 | `https://gateway.miaoxianghuandian.com` |

未明确指定环境时，技能默认使用测试环境。除请求 host 按环境切换外，接口路径、参数、鉴权和响应处理规则保持不变。

## 使用区别

测试环境和生产环境的使用方式只在“环境选择”和“请求 URL”上不同：

| 使用项 | 测试环境 | 生产环境 |
| --- | --- | --- |
| 提示词写法 | 明确写“测试环境”或“pre 环境”，也可以不写环境 | 必须明确写“生产环境” |
| 请求 URL | `https://pre.miaoxianghuandian.com` | `https://gateway.miaoxianghuandian.com` |
| 接口路径 | 保持原路径，例如 `/mx-ce-auth/oauth2/token` | 保持原路径，例如 `/mx-ce-auth/oauth2/token` |
| 参数和鉴权 | 按对应接口规则传参和携带 `Authorization` | 与测试环境一致，执行真实生产写操作前必须二次确认 |

示例：

```txt
使用 mxsy-pre-auth-login，测试环境登录，账号 <username>，密码 <password>。
```

```txt
使用 mxsy-pre-auth-login，生产环境登录，账号 <username>，密码 <password>。
```

```txt
使用 mxsy-pre-cabinet-door，生产环境打开电柜 <devId> 的 1、2 号仓门。执行真实请求前需要二次确认。
```

```txt
使用 mxsy-pre-system-service，帮我查找用户分页列表接口，并生成生产环境请求示例。
```

## 安装 Skills

支持 Skills 的智能工具通常可以通过仓库地址安装。可参考如下提示词：

```txt
帮我安装 https://github.com/liao-can-jie/mxsy-skill 上的技能，可以通过 `npx skills add liao-can-jie/mxsy-skill` 来进行安装。
```

如果你的环境支持 `npx skills add`，可以直接执行：

```sh
npx skills add liao-can-jie/mxsy-skill
```

需要非交互地安装仓库内全部技能到所有支持的 Agents 时，可以执行：

```sh
npx skills add liao-can-jie/mxsy-skill --all
```

也可以手动安装，将本仓库中的 skill 目录复制到你的智能工具约定的 Skills 目录。

PowerShell 示例：

```powershell
git clone https://github.com/liao-can-jie/mxsy-skill.git
cd mxsy-skill

# 将此路径替换为你的工具实际使用的 Skills 目录。
$skillsDir = "$env:USERPROFILE\.codex\skills"
New-Item -ItemType Directory -Force $skillsDir
Copy-Item -Recurse -Force .\skills\mxsy-pre-auth-login $skillsDir
Copy-Item -Recurse -Force .\skills\mxsy-pre-cabinet-door $skillsDir
Copy-Item -Recurse -Force .\skills\mxsy-pre-system-service $skillsDir
```

安装后重启对应智能工具，或开启新的会话，使 skill 元数据重新加载。

## 使用示例

### 登录测试环境

```txt
使用 mxsy-pre-auth-login，测试环境登录，账号 <username>，密码 <password>，获取 access_token 和 token_type。
```

该技能会按接口规则调用：

```txt
POST https://pre.miaoxianghuandian.com/mx-ce-auth/oauth2/token
Content-Type: application/x-www-form-urlencoded
Authorization: Basic <client-basic-token>
```

登录成功后，后续业务接口请求头为：

```txt
Authorization: <token_type> <access_token>
```

例如 `token_type` 为 `Bearer` 时：

```txt
Authorization: Bearer <access_token>
```

access token 到期后，使用登录响应中的 `refresh_token` 续期，再用新的 `token_type` 和 `access_token` 重新组合业务接口请求头。

### 打开指定仓门

```txt
使用 mxsy-pre-cabinet-door，打开电柜 TSD25100059 的 1、2 号仓门。
```

对应请求体：

```json
{
  "devId": "TSD25100059",
  "doorIds": [1, 2],
  "optType": 1,
  "password": "<operation-password>"
}
```

### 打开多个仓门

```txt
使用 mxsy-pre-cabinet-door，打开电柜 TSD25100059 的 3、4、5 号仓门。
```

对应请求体：

```json
{
  "devId": "TSD25100059",
  "doorIds": [3, 4, 5],
  "optType": 1,
  "password": "<operation-password>"
}
```

### 禁用整柜

```txt
使用 mxsy-pre-cabinet-door，禁用电柜 TSD25100059 整柜。
```

对应请求体：

```json
{
  "devId": "TSD25100059",
  "optType": 2,
  "password": "<operation-password>"
}
```

`optType=2` 时，`doorIds` 为空或不传表示禁用整柜。

### 启用多个仓门

```txt
使用 mxsy-pre-cabinet-door，启用电柜 TSD25100059 的 3、4、5 号仓门。
```

对应请求体：

```json
{
  "devId": "TSD25100059",
  "doorIds": [3, 4, 5],
  "optType": 3,
  "password": "<operation-password>"
}
```

### 直接使用 cURL 登录

测试环境：

```sh
curl --request POST \
  --url "https://pre.miaoxianghuandian.com/mx-ce-auth/oauth2/token" \
  --header "Accept: */*" \
  --header "Authorization: Basic <client-basic-token>" \
  --header "Content-Type: application/x-www-form-urlencoded" \
  --data-urlencode "grant_type=password" \
  --data-urlencode "username=<username>" \
  --data-urlencode "password=<password>"
```

生产环境时仅替换请求 host；执行真实生产登录前需要二次确认：

```sh
curl --request POST \
  --url "https://gateway.miaoxianghuandian.com/mx-ce-auth/oauth2/token" \
  --header "Accept: */*" \
  --header "Authorization: Basic <client-basic-token>" \
  --header "Content-Type: application/x-www-form-urlencoded" \
  --data-urlencode "grant_type=password" \
  --data-urlencode "username=<username>" \
  --data-urlencode "password=<password>"
```

### 直接使用 cURL 操控电柜门

测试环境：

```sh
curl --request POST \
  --url "https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/optCabinetDoor" \
  --header "Accept: */*" \
  --header "Authorization: Bearer <access-token>" \
  --header "Content-Type: application/json" \
  --data '{
    "devId": "TSD25100059",
    "doorIds": [1, 2],
    "optType": 1,
    "password": "<operation-password>"
  }'
```

生产环境时仅替换请求 host；执行真实生产电柜操作前需要二次确认：

```sh
curl --request POST \
  --url "https://gateway.miaoxianghuandian.com/mx-ce-system/api/cabinet/optCabinetDoor" \
  --header "Accept: */*" \
  --header "Authorization: Bearer <access-token>" \
  --header "Content-Type: application/json" \
  --data '{
    "devId": "<devId>",
    "doorIds": [1, 2],
    "optType": 1,
    "password": "<operation-password>"
  }'
```

### 查询系统服务接口

```txt
使用 mxsy-pre-system-service，帮我查找用户分页列表接口，并生成测试环境请求示例。
```

生产环境只需要在提示词中明确“生产环境”：

```txt
使用 mxsy-pre-system-service，帮我查找用户分页列表接口，并生成生产环境请求示例。
```

该技能会先检索 `references/api-index.md`，再读取 `references/api-details.md` 中对应接口的请求参数明细。认证登录和电柜门操控已由专用技能覆盖，不在该聚合技能中重复维护。

## 接口规则摘要

| 场景 | 规则 |
| --- | --- |
| 请求 URL | 测试环境 `https://pre.miaoxianghuandian.com`；生产环境 `https://gateway.miaoxianghuandian.com` |
| 登录接口 | `POST {请求URL}/mx-ce-auth/oauth2/token` |
| 电柜门接口 | `POST {请求URL}/mx-ce-system/api/cabinet/optCabinetDoor` |
| 默认登录方式 | 未指定 `grant_type` 时默认使用 `password` |
| token 续期 | access token 到期后使用 `grant_type=refresh_token` 和上次登录返回的 `refresh_token` 续期 |
| 登录参数位置 | `application/x-www-form-urlencoded` body |
| 电柜参数位置 | JSON body |
| 后续接口鉴权 | `Authorization: <token_type> <access_token>` |
| 系统服务聚合接口 | 使用 `mxsy-pre-system-service` 从接口索引中查找；已排除已有专用技能覆盖的接口 |
| 生产环境真实操作 | 登录、写入、删除、电柜开仓/禁用/启用等真实请求执行前必须二次确认 |
| 开门 | `optType=1`，必须传 `doorIds` |
| 禁用 | `optType=2`，`doorIds` 为空或不传表示整柜禁用 |
| 启用 | `optType=3`，`doorIds` 为空或不传表示整柜启用 |
| 多仓门操作 | `doorIds` 传数组，例如 `[1, 2, 3]` |

## 验证

如果本机有可用 Python，可以使用 skill creator 校验器：

```sh
python C:\Users\Administrator\.codex\skills\.system\skill-creator\scripts\quick_validate.py .\skills\mxsy-pre-auth-login
python C:\Users\Administrator\.codex\skills\.system\skill-creator\scripts\quick_validate.py .\skills\mxsy-pre-cabinet-door
python C:\Users\Administrator\.codex\skills\.system\skill-creator\scripts\quick_validate.py .\skills\mxsy-pre-system-service
```

## 许可证

当前仓库尚未声明许可证。
