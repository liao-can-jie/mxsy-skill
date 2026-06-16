---
name: mxsy-pre-cabinet-door
description: Use when Codex needs to operate 秒享商用换电 test/pre or production cabinet doors through the system service API, including POST /mx-ce-system/api/cabinet/optCabinetDoor request construction, environment-specific request host selection, opening one or multiple cabinet doors, disabling or enabling one door, multiple doors, or an entire cabinet, fixed operation password handling, and Authorization header usage from mxsy-pre-auth-login.
---

# 秒享商用换电 Pre 电柜门操控

## Workflow

Read `references/opt-cabinet-door.md` before generating requests, SDK code, integration tests, API documentation, or troubleshooting guidance for cabinet door operations.

Select the request host by environment. Use the test host by default when the user does not specify an environment:

```text
test/pre: https://pre.miaoxianghuandian.com
production: https://gateway.miaoxianghuandian.com
```

Call the endpoint as `POST /mx-ce-system/api/cabinet/optCabinetDoor` with a JSON body and an `Authorization: <token_type> <access_token>` header.

## Authentication

Get the token with `mxsy-pre-auth-login` first. After login succeeds, compose the business API header from login response fields:

```text
Authorization: <data.token_type> <data.access_token>
```

If `data.token_type` is `Bearer`, send `Authorization: Bearer <access_token>`.

## Request Rules

- Build the request URL from the selected environment host plus `/mx-ce-system/api/cabinet/optCabinetDoor`.
- Do not use another base URL unless the user explicitly provides it.
- Do not invent `devId`, `doorIds`, `mobile`, `remark`, or bearer tokens. Ask for missing values before making real cabinet requests.
- Always send JSON with `Content-Type: application/json` and `Accept: */*`.
- Always include `password: "123456"` unless the user explicitly provides a different operation password.
- Preserve `optType` semantics exactly: `1` opens doors, `2` disables, and `3` enables.
- For `optType: 1`, provide `doorIds`; do not treat an empty `doorIds` list as "open whole cabinet".
- For `optType: 2` or `optType: 3`, `doorIds` may be omitted or empty only when operating on the entire cabinet.
- To open, disable, or enable multiple doors, pass all target door numbers in `doorIds`.
- Treat HTTP 200 with business `code !== "00000"` as a failed operation. Handle 400/403/404 with the same `ResultObject` response shape.
- Avoid printing full bearer tokens, operation passwords, or sensitive mobile numbers in final answers, logs, or generated examples unless the user explicitly asks for a literal debug artifact.

## Implementation Guidance

Build the request body from a validated command object:

- `devId`: required device number.
- `optType`: required operation type, one of `1`, `2`, `3`.
- `password`: required operation password, default `123456`.
- `doorIds`: optional integer array; required for opening, optional for disabling/enabling the whole cabinet.
- `mobile`: optional phone number used after opening when a battery binding phone number is needed.
- `remark`: optional operation note.

When explaining failures, map returned business `code` and `msg` using the error-code table in `references/opt-cabinet-door.md`.
