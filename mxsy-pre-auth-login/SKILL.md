---
name: mxsy-pre-auth-login
description: Use when Codex needs to work with the 秒享商用换电 pre 环境认证登录接口, including OAuth2 /oauth2/token request construction, grant_type parameter selection, curl/PowerShell/API-client examples, login integration, token refresh handling, and response/error-code troubleshooting for https://pre.miaoxianghuandian.com.
---

# 秒享商用换电 Pre 认证登录

## Workflow

Read `references/oauth2-token.md` before generating requests, SDK code, integration tests, API documentation, or troubleshooting guidance for this authentication endpoint.

Use the pre environment by default:

```text
https://pre.miaoxianghuandian.com
```

Call the endpoint as `POST /oauth2/token` with parameters in the query string and an `Authorization: Basic ...` header.

## Request Rules

- Do not switch to another base URL unless the user explicitly provides it.
- Do not invent `smsCode`, `password`, `refresh_token`, `cid`, mobile numbers, or client credentials. Ask the user for missing required values when a real request or executable script needs them.
- Preserve `grant_type` exactly as documented. Supported values are `uni_app_password`, `uni_app_sms`, `uni_app_wx`, `wx_mini_app`, `captcha`, `password`, and `refresh_token`.
- URL-encode query parameters, especially `password`, because the OpenAPI marks it with `allowReserved`.
- Treat HTTP 200 with business `code !== "00000"` as a failed login. Handle 400/403/404 with the same `ResultObject` response shape.
- Avoid printing full access tokens, refresh tokens, SMS codes, passwords, or Basic credentials in final answers, logs, or generated examples unless the user explicitly asks for a literal debug artifact.

## Implementation Guidance

When writing code, centralize the base URL and Basic authorization header in configuration. Keep grant-specific required fields separate so callers receive clear validation errors before the request is sent.

For app login flows:

- Use `uni_app_sms` for mobile + SMS code login.
- Use `uni_app_password` for mobile + password login.
- Use `uni_app_wx` when the app provides a WeChat authorization `code`.
- Use `refresh_token` only to renew an existing token.
- Use `captcha` or `password` only for username/password style login.

When explaining failures, map the returned business `code` and `msg` using the error-code table in `references/oauth2-token.md`.
