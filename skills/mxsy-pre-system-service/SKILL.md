---
name: mxsy-pre-system-service
description: Use when Codex needs to work with 秒享商用换电 pre 环境 system-service APIs from 系统服务.md, excluding authentication login and cabinet door operation skills already covered by mxsy-pre-auth-login and mxsy-pre-cabinet-door. Supports finding endpoints by title/path, constructing GET/POST/PUT/DELETE requests under /mx-ce-system, using bearer Authorization from login, handling JSON/form/multipart requests, and interpreting Result/ResultObject business responses.
---

# 秒享商用换电 Pre 系统服务

## Workflow

Use this skill for system-service APIs that are not already covered by:

- `mxsy-pre-auth-login`
- `mxsy-pre-cabinet-door`

Read `references/api-index.md` first to find the target endpoint by title, module, method, or path. Then read the matching entry in `references/api-details.md` before constructing a request.

The API reference was generated from `系统服务.md` and excludes `POST /mx-ce-system/api/cabinet/optCabinetDoor`, which belongs to `mxsy-pre-cabinet-door`.

## Request Rules

- Use the pre host `https://pre.miaoxianghuandian.com`.
- Use paths exactly as documented; most system-service paths already include `/mx-ce-system`.
- Get `Authorization` from `mxsy-pre-auth-login`: `Authorization: <token_type> <access_token>`.
- If a business request reports token expiry or invalid token, use `mxsy-pre-auth-login` to refresh with `refresh_token`, then retry once.
- Use `Accept: */*` by default.
- For `application/json`, send a JSON body.
- For `application/x-www-form-urlencoded`, send form/query parameters as documented by the endpoint.
- For `multipart/form-data`, use multipart file upload; do not fake file content.
- Do not invent required IDs, mobile numbers, city IDs, user IDs, role IDs, file IDs, or bearer tokens. Ask for missing required values before making a real request.
- Avoid printing full bearer tokens, refresh tokens, passwords, SMS codes, or personal mobile numbers in final answers or logs unless the user explicitly asks for a literal debug artifact.

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
