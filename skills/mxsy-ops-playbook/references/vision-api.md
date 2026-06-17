# 图片分析与二维码解码

## 推荐：zbarimg（QR Code 解码）

电柜二维码图片解码首选，比视觉模型更准确：

```bash
# 安装
sudo apt-get install zbar-tools

# 解码
zbarimg /path/to/qr_image.jpg
# 输出：QR-Code:https://xm.miaoxianghuandian.com/invite/code.html?code=TSD25100075
```

从 URL 中提取电柜编号：`code=TSD25100075`

## 备选：kimi-k2.7-code（通用图片分析）

当需要识别非二维码图片内容时使用。

### API 配置
| 项目 | 值 |
|------|-----|
| Base URL | https://tokenhub.tencentmaas.com/v1 |
| 模型 | kimi-k2.7-code |
| API Key | 用户提供（需包含 Bearer token） |

### 请求示例（Python）
```python
import json
import base64
import urllib.request

with open('/path/to/image.jpg', 'rb') as f:
    img_b64 = base64.b64encode(f.read()).decode('utf-8')

payload = {
    "model": "kimi-k2.7-code",
    "messages": [{
        "role": "user",
        "content": [
            {"type": "image_url", "image_url": {"url": f"data:image/jpeg;base64,{img_b64}"}},
            {"type": "text", "text": "描述图片内容，特别是电柜二维码或编号信息"}
        ]
    }]
}

data = json.dumps(payload).encode('utf-8')
req = urllib.request.Request(
    'https://tokenhub.tencentmaas.com/v1/chat/completions',
    data=data,
    headers={
        'Authorization': 'Bearer <API_KEY>',
        'Content-Type': 'application/json'
    },
    method='POST'
)

with urllib.request.urlopen(req, timeout=60) as response:
    result = json.loads(response.read().decode('utf-8'))
    print(result['choices'][0]['message']['content'])
```

### 注意事项
- 图片需 base64 编码后作为 `data:image/jpeg;base64,<base64>` 格式传入
- 不支持 file:// URL 方式（返回 url.not_found）
- 优先使用 zbarimg 解码二维码，更准确高效