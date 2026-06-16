# 秒享商用换电 Skills

本仓库提供了秒享商用换电 pre 环境相关 Skills，帮助你在支持 Skills 的智能工具中完成登录、生成接口请求、调用 pre 环境业务接口并分析响应。

> [!WARNING]
> 当前技能仍处于实验阶段。请谨慎使用，并**强烈建议对 AI 发起的操作（包括登录、开仓、禁用、启用等 API 调用）进行人工审核**。

## 技能列表

| 技能 | 简介 |
| --- | --- |
| [`mxsy-pre-auth-login`](./skills/mxsy-pre-auth-login/SKILL.md) | 秒享商用换电 pre 环境认证登录技能。用于构造和调用 `POST /mx-ce-auth/oauth2/token`，默认使用 `grant_type=password`，支持 `password`、`captcha`、`uni_app_sms`、`uni_app_password`、`uni_app_wx`、`refresh_token` 等授权模式。`password` 和 `captcha` 登录固定携带 Basic 客户端请求头，登录成功后将 `data.token_type` 与 `data.access_token` 组合为后续业务接口的 `Authorization` 请求头；access token 到期后使用 `refresh_token` 续期。 |
| [`mxsy-pre-cabinet-door`](./skills/mxsy-pre-cabinet-door/SKILL.md) | 秒享商用换电 pre 环境电柜门操控技能。用于构造和调用 `POST /mx-ce-system/api/cabinet/optCabinetDoor`，支持打开一个或多个仓门、禁用/启用一个或多个仓门、禁用/启用整柜，并按接口规则固定使用操作密码 `123456`。 |

> [!TIP]
> 技能会随着 pre 环境接口规则继续完善。提交新技能或修正接口规则时，请避免把真实 access token、refresh token、短信验证码、用户密码写入文档或提交记录。

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
```

安装后重启对应智能工具，或开启新的会话，使 skill 元数据重新加载。

## 使用示例

### 登录 pre 环境

```txt
使用 mxsy-pre-auth-login，pre 环境登录，账号 <username>，密码 <password>，获取 access_token 和 token_type。
```

该技能会按接口规则调用：

```txt
POST https://pre.miaoxianghuandian.com/mx-ce-auth/oauth2/token
Content-Type: application/x-www-form-urlencoded
Authorization: Basic bWFsbC1hZG1pbjoxMjM0NTY=
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
  "password": "123456"
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
  "password": "123456"
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
  "password": "123456"
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
  "password": "123456"
}
```

### 直接使用 cURL 登录

```sh
curl --request POST \
  --url "https://pre.miaoxianghuandian.com/mx-ce-auth/oauth2/token" \
  --header "Accept: */*" \
  --header "Authorization: Basic bWFsbC1hZG1pbjoxMjM0NTY=" \
  --header "Content-Type: application/x-www-form-urlencoded" \
  --data-urlencode "grant_type=password" \
  --data-urlencode "username=<username>" \
  --data-urlencode "password=<password>"
```

### 直接使用 cURL 操控电柜门

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
    "password": "123456"
  }'
```

## 接口规则摘要

| 场景 | 规则 |
| --- | --- |
| 登录接口 | `POST https://pre.miaoxianghuandian.com/mx-ce-auth/oauth2/token` |
| 电柜门接口 | `POST https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/optCabinetDoor` |
| 默认登录方式 | 未指定 `grant_type` 时默认使用 `password` |
| token 续期 | access token 到期后使用 `grant_type=refresh_token` 和上次登录返回的 `refresh_token` 续期 |
| 登录参数位置 | `application/x-www-form-urlencoded` body |
| 电柜参数位置 | JSON body |
| 后续接口鉴权 | `Authorization: <token_type> <access_token>` |
| 开门 | `optType=1`，必须传 `doorIds` |
| 禁用 | `optType=2`，`doorIds` 为空或不传表示整柜禁用 |
| 启用 | `optType=3`，`doorIds` 为空或不传表示整柜启用 |
| 多仓门操作 | `doorIds` 传数组，例如 `[1, 2, 3]` |

## 验证

如果本机有可用 Python，可以使用 skill creator 校验器：

```sh
python C:\Users\Administrator\.codex\skills\.system\skill-creator\scripts\quick_validate.py .\skills\mxsy-pre-auth-login
python C:\Users\Administrator\.codex\skills\.system\skill-creator\scripts\quick_validate.py .\skills\mxsy-pre-cabinet-door
```

## 许可证

当前仓库尚未声明许可证。
