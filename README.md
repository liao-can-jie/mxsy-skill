# mxsy-skill

Codex skills for 秒享商用换电 pre 环境 workflows.

## Skills

- `mxsy-pre-auth-login`: OAuth2 `/oauth2/token` request construction, login integration, token refresh handling, and response/error-code troubleshooting for `https://pre.miaoxianghuandian.com`.

## Validation

Validate the skill with the Codex skill creator validator:

```powershell
python C:\Users\Administrator\.codex\skills\.system\skill-creator\scripts\quick_validate.py .\mxsy-pre-auth-login
```
