---
name: mxsy-pre-system-service
description: Use when Codex needs to work with 秒享商用换电 test/pre or production system-service APIs from 系统服务.md, excluding authentication login and cabinet door operation skills already covered by mxsy-pre-auth-login and mxsy-pre-cabinet-door. Supports finding endpoints by title/path, constructing GET/POST/PUT/DELETE requests under /mx-ce-system, selecting the environment-specific request host, using bearer Authorization from login, handling JSON/form/multipart requests, and interpreting Result/ResultObject business responses.
---

# 秒享商用换电 Pre 系统服务

## Workflow

Use this skill for system-service APIs that are not already covered by:

- `mxsy-pre-auth-login`
- `mxsy-pre-cabinet-door`

Read `references/api-index.md` first to find the target endpoint by title, module, method, or path. Then read the matching entry in `references/api-details.md` before constructing a request.

The API reference was generated from `系统服务.md` and excludes `POST /mx-ce-system/api/cabinet/optCabinetDoor`, which belongs to `mxsy-pre-cabinet-door`.

## Request Rules

- Select the request host by environment: test/pre uses `https://pre.miaoxianghuandian.com`; production uses `https://gateway.miaoxianghuandian.com`.
- Use the test host by default when the user does not specify an environment.
- Build request URLs from the selected host plus the documented path; if a reference URL shows the test host, keep the path and replace only the host for production.
- Use paths exactly as documented; most system-service paths already include `/mx-ce-system`.
- Get `Authorization` from `mxsy-pre-auth-login`: `Authorization: <token_type> <access_token>`.
- Before executing a real production `POST`, `PUT`, `PATCH`, or `DELETE` system-service request, restate the environment, host, method, path, and key identifiers, then require explicit user confirmation. Generating non-executable examples does not require confirmation.
- If a business request reports token expiry or invalid token, use `mxsy-pre-auth-login` to refresh with `refresh_token`, then retry once.
- Use `Accept: */*` by default.
- For `application/json`, send a JSON body.
- For `application/x-www-form-urlencoded`, send form/query parameters as documented by the endpoint.
- For `multipart/form-data`, use multipart file upload; do not fake file content.
- Do not invent required IDs, mobile numbers, city IDs, user IDs, role IDs, file IDs, or bearer tokens. Ask for missing required values before making a real request.
- Never print full bearer tokens, refresh tokens, passwords, SMS codes, or personal mobile numbers in final answers, generated examples, or logs. Always use placeholders or redacted values.

## Response Rules

System-service APIs use `Result` / `ResultObject` style responses:

```json
{
  "code": "00000",
  "data": {},
  "msg": "操作成功"
}
```

Treat `code === "00000"` as success. Treat any other business `code` as failure even when HTTP status is 200.

## Reference Files

- `references/api-index.md`: compact endpoint index with title, method, path, request type, and required parameters.
- `references/api-details.md`: endpoint details with URL, request type, response type, and request parameter tables.
