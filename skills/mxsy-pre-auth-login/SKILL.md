---
name: mxsy-pre-auth-login
description: Use when Codex needs to work with the 秒享商用换电 test/pre or production authentication login API, including OAuth2 /mx-ce-auth/oauth2/token request construction, environment-specific request host selection, default password grant login, grant_type parameter selection, fixed Basic authorization for password/captcha login, access token header composition, access-token expiry handling with refresh_token, curl/PowerShell/API-client examples, login integration, token refresh handling, and response/error-code troubleshooting.
---

# 秒享商用换电 Pre 认证登录

## Workflow

Read `references/oauth2-token.md` before generating requests, SDK code, integration tests, API documentation, or troubleshooting guidance for this authentication endpoint.

Select the request host by environment. Use the test host by default when the user does not specify an environment:

```text
test/pre: https://pre.miaoxianghuandian.com
production: https://gateway.miaoxianghuandian.com
```

Call the endpoint as `POST /mx-ce-auth/oauth2/token` with `application/x-www-form-urlencoded` body parameters.

## Request Rules

- Build the request URL from the selected environment host plus `/mx-ce-auth/oauth2/token`.
- Do not use another base URL unless the user explicitly provides it.
- Do not invent `smsCode`, `password`, `refresh_token`, `cid`, mobile numbers, or client credentials. Ask the user for missing required values when a real request or executable script needs them.
- Default `grant_type` to `password` when the user asks to log in but does not specify a grant type.
- For `grant_type=password` and `grant_type=captcha`, always send `Authorization: Basic bWFsbC1hZG1pbjoxMjM0NTY=`.
- Send OAuth parameters in the form body, not in the query string. Use `Content-Type: application/x-www-form-urlencoded` and `Accept: */*` for curl/API-client examples.
- Preserve `grant_type` exactly as documented. Supported values are `uni_app_password`, `uni_app_sms`, `uni_app_wx`, `wx_mini_app`, `captcha`, `password`, and `refresh_token`.
- URL-encode form parameters, especially `password`.
- Treat HTTP 200 with business `code !== "00000"` as a failed login. Handle 400/403/404 with the same `ResultObject` response shape.
- Avoid printing full access tokens, refresh tokens, SMS codes, passwords, or Basic credentials in final answers, logs, or generated examples unless the user explicitly asks for a literal debug artifact.

## Token Header Composition

When login succeeds, read `data.token_type` and `data.access_token`. Build the authorization header for later business APIs as:

```text
Authorization: <token_type> <access_token>
```

For example, if `token_type` is `Bearer`, the later request header must be `Authorization: Bearer <access_token>`.

## Token Refresh

When a later business API indicates the access token is expired or invalid, refresh the token before retrying the business request.

Use `grant_type=refresh_token` with the existing `refresh_token` value. Send the OAuth parameters in the form body and include the fixed Basic client header:

```text
Authorization: Basic bWFsbC1hZG1pbjoxMjM0NTY=
```

If refresh succeeds, replace the stored `access_token`, `refresh_token`, `token_type`, and expiry metadata with the new response values, then rebuild the business API header as `Authorization: <token_type> <access_token>`. If refresh fails, perform a fresh `password` login after confirming required credentials are available.

## Implementation Guidance

When writing code, centralize the base URL and Basic authorization header in configuration. Keep grant-specific required fields separate so callers receive clear validation errors before the request is sent.

For app login flows:

- Use `uni_app_sms` for mobile + SMS code login.
- Use `uni_app_password` for mobile + password login.
- Use `uni_app_wx` when the app provides a WeChat authorization `code`.
- Use `refresh_token` to renew an expired access token before retrying a business API request.
- Use `captcha` or `password` only for username/password style login.

When explaining failures, map the returned business `code` and `msg` using the error-code table in `references/oauth2-token.md`.
