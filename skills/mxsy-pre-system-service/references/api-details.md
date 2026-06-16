# System Service API Details

Generated from `D:/download/system-service.md` source content. Search this file by endpoint title or path before constructing a request.

Common response shape: `code` string, `data`, `msg`; `00000` means success. Non-`00000` business codes are failures even when HTTP status is 200.

## 01.区域接口 / 所属城市列表

- Method: `GET`
- Path: `/mx-ce-system/api/v1/areas/options`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/areas/options`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 02.用户接口 / 新增用户

- Method: `POST`
- Path: `/mx-ce-system/api/v1/users`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/users`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `userForm` | 用户表单对象 | `body` | `true` | `UserForm` | `UserForm` |
| `userForm.id` | 用户ID | `` | `false` | `integer(int64)` | `` |
| `userForm.username` | 用户名 | `` | `true` | `string` | `` |
| `userForm.nickname` | 昵称 | `` | `true` | `string` | `` |
| `userForm.mobile` | 手机号码 | `` | `false` | `string` | `` |
| `userForm.gender` | 性别 | `` | `false` | `integer(int32)` | `` |
| `userForm.avatar` | 用户头像 | `` | `false` | `string` | `` |
| `userForm.email` | 邮箱 | `` | `false` | `string` | `` |
| `userForm.status` | 用户状态(1:正常;0:禁用) | `` | `false` | `integer(int32)` | `` |
| `userForm.deptId` | 部门ID | `` | `false` | `integer(int64)` | `` |
| `userForm.roleIds` | 角色ID集合 | `` | `true` | `array` | `integer(int64)` |
| `userForm.cityIds` | 城市ID集合 | `` | `true` | `array` | `string` |

## 02.用户接口 / 导出用户

- Method: `GET`
- Path: `/mx-ce-system/api/v1/users/_export`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/users/_export`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `queryParams` |  | `query` | `true` | `UserPageQuery` | `UserPageQuery` |
| `queryParams.pageNum` | 页码 | `` | `false` | `integer(int32)` | `` |
| `queryParams.pageSize` | 每页记录数 | `` | `false` | `integer(int32)` | `` |
| `queryParams.keywords` | 关键字(用户名/昵称/手机号) | `` | `false` | `string` | `` |
| `queryParams.status` | 用户状态 | `` | `false` | `integer(int32)` | `` |
| `queryParams.deptId` | 部门ID | `` | `false` | `integer(int64)` | `` |

## 02.用户接口 / 导入用户

- Method: `POST`
- Path: `/mx-ce-system/api/v1/users/_import`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/users/_import`
- Request type: `multipart/form-data`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `deptId` | 部门ID | `query` | `true` | `integer(int64)` | `` |
| `file` |  | `query` | `true` | `file` | `` |

## 02.用户接口 / 删除用户

- Method: `DELETE`
- Path: `/mx-ce-system/api/v1/users/{ids}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/users/{ids}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `ids` | 用户ID，多个以英文逗号(,)分割 | `path` | `true` | `string` | `` |

## 02.用户接口 / 修改用户

- Method: `PUT`
- Path: `/mx-ce-system/api/v1/users/{userId}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/users/{userId}`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `userId` | 用户ID | `path` | `true` | `integer(int64)` | `` |
| `userForm` | 用户表单对象 | `body` | `true` | `UserForm` | `UserForm` |
| `userForm.id` | 用户ID | `` | `false` | `integer(int64)` | `` |
| `userForm.username` | 用户名 | `` | `true` | `string` | `` |
| `userForm.nickname` | 昵称 | `` | `true` | `string` | `` |
| `userForm.mobile` | 手机号码 | `` | `false` | `string` | `` |
| `userForm.gender` | 性别 | `` | `false` | `integer(int32)` | `` |
| `userForm.avatar` | 用户头像 | `` | `false` | `string` | `` |
| `userForm.email` | 邮箱 | `` | `false` | `string` | `` |
| `userForm.status` | 用户状态(1:正常;0:禁用) | `` | `false` | `integer(int32)` | `` |
| `userForm.deptId` | 部门ID | `` | `false` | `integer(int64)` | `` |
| `userForm.roleIds` | 角色ID集合 | `` | `true` | `array` | `integer(int64)` |
| `userForm.cityIds` | 城市ID集合 | `` | `true` | `array` | `string` |

## 02.用户接口 / 用户表单数据

- Method: `GET`
- Path: `/mx-ce-system/api/v1/users/{userId}/form`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/users/{userId}/form`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `userId` | 用户ID | `path` | `true` | `integer(int64)` | `` |

## 02.用户接口 / 修改用户密码

- Method: `GET`
- Path: `/mx-ce-system/api/v1/users/{userId}/password`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/users/{userId}/password`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `userId` | 用户ID | `path` | `true` | `integer(int64)` | `` |
| `password` |  | `query` | `true` | `string` | `` |

## 02.用户接口 / 修改用户状态

- Method: `PATCH`
- Path: `/mx-ce-system/api/v1/users/{userId}/status`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/users/{userId}/status`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `userId` | 用户ID | `path` | `true` | `integer(int64)` | `` |
| `status` | 用户状态(1:启用;0:禁用) | `query` | `true` | `integer(int32)` | `` |

## 02.用户接口 / 移动端个人信息

- Method: `GET`
- Path: `/mx-ce-system/api/v1/users/getUserInfoFromApp`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/users/getUserInfoFromApp`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 02.用户接口 / 获取当前登录用户信息

- Method: `GET`
- Path: `/mx-ce-system/api/v1/users/me`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/users/me`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 02.用户接口 / 用户分页列表

- Method: `GET`
- Path: `/mx-ce-system/api/v1/users/pages`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/users/pages`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `keywords` | 关键字(用户名/昵称/手机号) | `query` | `false` | `string` | `` |
| `status` | 用户状态 | `query` | `false` | `string` | `` |
| `deptId` | 部门ID | `query` | `false` | `string` | `` |
| `pageNum` | 页码 | `query` | `false` | `string` | `` |
| `pageSize` | 每页记录数 | `query` | `false` | `string` | `` |

## 02.用户接口 / 根据手机号获取可切换角色列表

- Method: `GET`
- Path: `/mx-ce-system/api/v1/users/switch/{mobile}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/users/switch/{mobile}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `mobile` | 手机号 | `path` | `true` | `string` | `` |

## 02.用户接口 / 用户导入模板下载

- Method: `GET`
- Path: `/mx-ce-system/api/v1/users/template`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/users/template`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 02.用户接口 / 手机换绑

- Method: `PATCH`
- Path: `/mx-ce-system/api/v1/users/update/{mobile}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/users/update/{mobile}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `mobile` | 手机号 | `path` | `true` | `string` | `` |
| `smsCode` | 验证码 | `query` | `true` | `string` | `` |

## 03.角色接口 / 新增角色

- Method: `POST`
- Path: `/mx-ce-system/api/v1/roles`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/roles`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `roleForm` | 角色表单对象 | `body` | `true` | `RoleForm` | `RoleForm` |
| `roleForm.id` | 角色ID | `` | `false` | `integer(int64)` | `` |
| `roleForm.name` | 角色名称 | `` | `true` | `string` | `` |
| `roleForm.code` | 角色编码 | `` | `true` | `string` | `` |
| `roleForm.sort` | 排序 | `` | `false` | `integer(int32)` | `` |
| `roleForm.status` | 角色状态(1-正常；0-停用) | `` | `false` | `integer(int32)` | `` |
| `roleForm.dataScope` | 数据权限 | `` | `false` | `integer(int32)` | `` |

## 03.角色接口 / 修改角色

- Method: `PUT`
- Path: `/mx-ce-system/api/v1/roles/{id}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/roles/{id}`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `roleForm` | 角色表单对象 | `body` | `true` | `RoleForm` | `RoleForm` |
| `roleForm.id` | 角色ID | `` | `false` | `integer(int64)` | `` |
| `roleForm.name` | 角色名称 | `` | `true` | `string` | `` |
| `roleForm.code` | 角色编码 | `` | `true` | `string` | `` |
| `roleForm.sort` | 排序 | `` | `false` | `integer(int32)` | `` |
| `roleForm.status` | 角色状态(1-正常；0-停用) | `` | `false` | `integer(int32)` | `` |
| `roleForm.dataScope` | 数据权限 | `` | `false` | `integer(int32)` | `` |

## 03.角色接口 / 删除角色

- Method: `DELETE`
- Path: `/mx-ce-system/api/v1/roles/{ids}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/roles/{ids}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `ids` | 删除角色，多个以英文逗号(,)分割 | `path` | `true` | `string` | `` |

## 03.角色接口 / 角色表单数据

- Method: `GET`
- Path: `/mx-ce-system/api/v1/roles/{roleId}/form`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/roles/{roleId}/form`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `roleId` | 角色ID | `path` | `true` | `integer(int64)` | `` |

## 03.角色接口 / 获取角色的菜单ID集合

- Method: `GET`
- Path: `/mx-ce-system/api/v1/roles/{roleId}/menuIds`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/roles/{roleId}/menuIds`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `roleId` | 角色ID | `path` | `true` | `integer(int64)` | `` |

## 03.角色接口 / 分配菜单权限给角色

- Method: `PUT`
- Path: `/mx-ce-system/api/v1/roles/{roleId}/menus`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/roles/{roleId}/menus`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `roleId` |  | `path` | `true` | `integer(int64)` | `` |
| `integers` | integer | `body` | `true` | `array` | `` |

## 03.角色接口 / 修改角色状态

- Method: `PUT`
- Path: `/mx-ce-system/api/v1/roles/{roleId}/status`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/roles/{roleId}/status`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `roleId` | 角色ID | `path` | `true` | `integer(int64)` | `` |
| `status` | 状态(1:启用;0:禁用) | `query` | `true` | `integer(int32)` | `` |

## 03.角色接口 / 角色下拉列表

- Method: `GET`
- Path: `/mx-ce-system/api/v1/roles/options`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/roles/options`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 03.角色接口 / 角色分页列表

- Method: `GET`
- Path: `/mx-ce-system/api/v1/roles/pages`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/roles/pages`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `keywords` | 关键字(角色名称/角色编码) | `query` | `false` | `string` | `` |
| `pageNum` | 页码 | `query` | `false` | `string` | `` |
| `pageSize` | 每页记录数 | `query` | `false` | `string` | `` |

## 04.菜单接口 / 菜单列表

- Method: `GET`
- Path: `/mx-ce-system/api/v1/menus`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/menus`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `keywords` | 关键字(菜单名称) | `query` | `false` | `string` | `` |
| `status` | 状态(1->显示；0->隐藏) | `query` | `false` | `string` | `` |

## 04.菜单接口 / 新增菜单

- Method: `POST`
- Path: `/mx-ce-system/api/v1/menus`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/menus`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `menuForm` | 菜单表单对象 | `body` | `true` | `MenuForm` | `MenuForm` |
| `menuForm.id` | 菜单ID | `` | `false` | `integer(int64)` | `` |
| `menuForm.parentId` | 父菜单ID | `` | `false` | `integer(int64)` | `` |
| `menuForm.name` | 菜单名称 | `` | `false` | `string` | `` |
| `menuForm.title` | 标题 | `` | `false` | `string` | `` |
| `menuForm.type` | 菜单类型(1-菜单；2-目录；3-外链；4-按钮权限),可用值:NULL,MENU,CATALOG,EXTLINK,BUTTON | `` | `false` | `string` | `` |
| `menuForm.path` | 路由路径 | `` | `false` | `string` | `` |
| `menuForm.component` | 组件路径(vue页面完整路径，省略.vue后缀) | `` | `false` | `string` | `` |
| `menuForm.perm` | 权限标识 | `` | `false` | `string` | `` |
| `menuForm.visible` | 显示状态(1:显示;0:隐藏) | `` | `false` | `integer(int32)` | `` |
| `menuForm.sort` | 排序(数字越小排名越靠前) | `` | `false` | `integer(int32)` | `` |
| `menuForm.icon` | 菜单图标 | `` | `false` | `string` | `` |
| `menuForm.redirect` | 跳转路径 | `` | `false` | `string` | `` |
| `menuForm.keepAlive` | 是否开启缓存 0=否 1=是 | `` | `false` | `integer(int32)` | `` |
| `menuForm.componentName` | 组件名称 | `` | `false` | `string` | `` |

## 04.菜单接口 / 修改菜单

- Method: `PUT`
- Path: `/mx-ce-system/api/v1/menus/{id}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/menus/{id}`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `menuForm` | 菜单表单对象 | `body` | `true` | `MenuForm` | `MenuForm` |
| `menuForm.id` | 菜单ID | `` | `false` | `integer(int64)` | `` |
| `menuForm.parentId` | 父菜单ID | `` | `false` | `integer(int64)` | `` |
| `menuForm.name` | 菜单名称 | `` | `false` | `string` | `` |
| `menuForm.title` | 标题 | `` | `false` | `string` | `` |
| `menuForm.type` | 菜单类型(1-菜单；2-目录；3-外链；4-按钮权限),可用值:NULL,MENU,CATALOG,EXTLINK,BUTTON | `` | `false` | `string` | `` |
| `menuForm.path` | 路由路径 | `` | `false` | `string` | `` |
| `menuForm.component` | 组件路径(vue页面完整路径，省略.vue后缀) | `` | `false` | `string` | `` |
| `menuForm.perm` | 权限标识 | `` | `false` | `string` | `` |
| `menuForm.visible` | 显示状态(1:显示;0:隐藏) | `` | `false` | `integer(int32)` | `` |
| `menuForm.sort` | 排序(数字越小排名越靠前) | `` | `false` | `integer(int32)` | `` |
| `menuForm.icon` | 菜单图标 | `` | `false` | `string` | `` |
| `menuForm.redirect` | 跳转路径 | `` | `false` | `string` | `` |
| `menuForm.keepAlive` | 是否开启缓存 0=否 1=是 | `` | `false` | `integer(int32)` | `` |
| `menuForm.componentName` | 组件名称 | `` | `false` | `string` | `` |

## 04.菜单接口 / 删除菜单

- Method: `DELETE`
- Path: `/mx-ce-system/api/v1/menus/{id}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/menus/{id}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 菜单ID，多个以英文(,)分割 | `path` | `true` | `integer(int64)` | `` |

## 04.菜单接口 / 菜单表单数据

- Method: `GET`
- Path: `/mx-ce-system/api/v1/menus/{id}/form`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/menus/{id}/form`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 菜单ID | `path` | `true` | `integer(int64)` | `` |

## 04.菜单接口 / 修改菜单显示状态

- Method: `PATCH`
- Path: `/mx-ce-system/api/v1/menus/{menuId}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/menus/{menuId}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `menuId` | 菜单ID | `path` | `true` | `integer(int64)` | `` |
| `visible` | 显示状态(1:显示;0:隐藏) | `query` | `true` | `integer(int32)` | `` |

## 04.菜单接口 / 菜单下拉列表

- Method: `GET`
- Path: `/mx-ce-system/api/v1/menus/options`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/menus/options`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 04.菜单接口 / 资源（菜单+权限）列表

- Method: `GET`
- Path: `/mx-ce-system/api/v1/menus/resources`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/menus/resources`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 04.菜单接口 / 路由列表

- Method: `GET`
- Path: `/mx-ce-system/api/v1/menus/routes`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/menus/routes`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 05.部门接口 / 获取部门列表

- Method: `GET`
- Path: `/mx-ce-system/api/v1/dept`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/dept`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `keywords` | 关键字(部门名称) | `query` | `false` | `string` | `` |
| `status` | 状态(1->正常；0->禁用) | `query` | `false` | `string` | `` |

## 05.部门接口 / 新增部门

- Method: `POST`
- Path: `/mx-ce-system/api/v1/dept`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/dept`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `deptForm` | 部门表单对象 | `body` | `true` | `DeptForm` | `DeptForm` |
| `deptForm.id` | 部门ID | `` | `false` | `integer(int64)` | `` |
| `deptForm.name` | 部门名称 | `` | `false` | `string` | `` |
| `deptForm.parentId` | 父部门ID | `` | `true` | `integer(int64)` | `` |
| `deptForm.status` | 状态(1:启用;0:禁用) | `` | `false` | `integer(int32)` | `` |
| `deptForm.sort` | 排序(数字越小排名越靠前) | `` | `false` | `integer(int32)` | `` |

## 05.部门接口 / 修改部门

- Method: `PUT`
- Path: `/mx-ce-system/api/v1/dept/{deptId}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/dept/{deptId}`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `deptId` |  | `path` | `true` | `integer(int64)` | `` |
| `deptForm` | 部门表单对象 | `body` | `true` | `DeptForm` | `DeptForm` |
| `deptForm.id` | 部门ID | `` | `false` | `integer(int64)` | `` |
| `deptForm.name` | 部门名称 | `` | `false` | `string` | `` |
| `deptForm.parentId` | 父部门ID | `` | `true` | `integer(int64)` | `` |
| `deptForm.status` | 状态(1:启用;0:禁用) | `` | `false` | `integer(int32)` | `` |
| `deptForm.sort` | 排序(数字越小排名越靠前) | `` | `false` | `integer(int32)` | `` |

## 05.部门接口 / 获取部门表单数据

- Method: `GET`
- Path: `/mx-ce-system/api/v1/dept/{deptId}/form`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/dept/{deptId}/form`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `deptId` | 部门ID | `path` | `true` | `integer(int64)` | `` |

## 05.部门接口 / 删除部门

- Method: `DELETE`
- Path: `/mx-ce-system/api/v1/dept/{ids}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/dept/{ids}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `ids` | 部门ID，多个以英文逗号(,)分割 | `path` | `true` | `string` | `` |

## 05.部门接口 / 获取部门下拉选项

- Method: `GET`
- Path: `/mx-ce-system/api/v1/dept/options`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/dept/options`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 新增字典

- Method: `POST`
- Path: `/mx-ce-system/api/v1/dict/items`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/dict/items`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `dictForm` | 字典表单对象 | `body` | `true` | `DictForm` | `DictForm` |
| `dictForm.id` | 字典ID | `` | `false` | `integer(int64)` | `` |
| `dictForm.typeCode` | 类型编码 | `` | `false` | `string` | `` |
| `dictForm.name` | 字典名称 | `` | `false` | `string` | `` |
| `dictForm.value` | 字典值 | `` | `false` | `string` | `` |
| `dictForm.status` | 状态(1:启用;0:禁用) | `` | `false` | `integer(int32)` | `` |
| `dictForm.sort` | 排序 | `` | `false` | `integer(int32)` | `` |
| `dictForm.remark` | 字典备注 | `` | `false` | `string` | `` |

## 06.字典接口 / 修改字典

- Method: `PUT`
- Path: `/mx-ce-system/api/v1/dict/items/{id}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/dict/items/{id}`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` |  | `path` | `true` | `integer(int64)` | `` |
| `dictForm` | 字典表单对象 | `body` | `true` | `DictForm` | `DictForm` |
| `dictForm.id` | 字典ID | `` | `false` | `integer(int64)` | `` |
| `dictForm.typeCode` | 类型编码 | `` | `false` | `string` | `` |
| `dictForm.name` | 字典名称 | `` | `false` | `string` | `` |
| `dictForm.value` | 字典值 | `` | `false` | `string` | `` |
| `dictForm.status` | 状态(1:启用;0:禁用) | `` | `false` | `integer(int32)` | `` |
| `dictForm.sort` | 排序 | `` | `false` | `integer(int32)` | `` |
| `dictForm.remark` | 字典备注 | `` | `false` | `string` | `` |

## 06.字典接口 / 字典数据表单数据

- Method: `GET`
- Path: `/mx-ce-system/api/v1/dict/items/{id}/form`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/dict/items/{id}/form`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 字典ID | `path` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 删除字典

- Method: `DELETE`
- Path: `/mx-ce-system/api/v1/dict/items/{ids}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/dict/items/{ids}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `ids` | 字典ID，多个以英文逗号(,)拼接 | `path` | `true` | `string` | `` |

## 06.字典接口 / 字典数据分页列表

- Method: `GET`
- Path: `/mx-ce-system/api/v1/dict/items/pages`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/dict/items/pages`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `queryParams` | 字典数据项分页查询对象 | `query` | `true` | `DictPageQuery` | `DictPageQuery` |
| `queryParams.pageNum` | 页码 | `` | `false` | `integer(int32)` | `` |
| `queryParams.pageSize` | 每页记录数 | `` | `false` | `integer(int32)` | `` |
| `queryParams.keywords` | 关键字(字典项名称) | `` | `false` | `string` | `` |
| `queryParams.typeCode` | 字典类型编码 | `` | `false` | `string` | `` |

## 06.字典接口 / 字典下拉列表

- Method: `GET`
- Path: `/mx-ce-system/api/v1/dict/options`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/dict/options`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `typeCode` | 字典类型编码 | `query` | `true` | `string` | `` |

## 06.字典接口 / 字典分页列表

- Method: `GET`
- Path: `/mx-ce-system/api/v1/dict/page`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/dict/page`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `keywords` | 关键字(字典项名称) | `query` | `false` | `string` | `` |
| `typeCode` | 字典类型编码 | `query` | `false` | `string` | `` |
| `pageNum` | 页码 | `query` | `false` | `string` | `` |
| `pageSize` | 每页记录数 | `query` | `false` | `string` | `` |

## 06.字典接口 / 新增字典类型

- Method: `POST`
- Path: `/mx-ce-system/api/v1/dict/types`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/dict/types`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `dictTypeForm` | 字典类型 | `body` | `true` | `DictTypeForm` | `DictTypeForm` |
| `dictTypeForm.id` | 字典类型ID | `` | `false` | `integer(int64)` | `` |
| `dictTypeForm.name` | 类型名称 | `` | `false` | `string` | `` |
| `dictTypeForm.code` | 类型编码 | `` | `false` | `string` | `` |
| `dictTypeForm.status` | 类型状态(1:启用;0:禁用) | `` | `false` | `integer(int32)` | `` |
| `dictTypeForm.remark` | 备注 | `` | `false` | `string` | `` |

## 06.字典接口 / 修改字典类型

- Method: `PUT`
- Path: `/mx-ce-system/api/v1/dict/types/{id}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/dict/types/{id}`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` |  | `path` | `true` | `integer(int64)` | `` |
| `dictTypeForm` | 字典类型 | `body` | `true` | `DictTypeForm` | `DictTypeForm` |
| `dictTypeForm.id` | 字典类型ID | `` | `false` | `integer(int64)` | `` |
| `dictTypeForm.name` | 类型名称 | `` | `false` | `string` | `` |
| `dictTypeForm.code` | 类型编码 | `` | `false` | `string` | `` |
| `dictTypeForm.status` | 类型状态(1:启用;0:禁用) | `` | `false` | `integer(int32)` | `` |
| `dictTypeForm.remark` | 备注 | `` | `false` | `string` | `` |

## 06.字典接口 / 字典类型表单数据

- Method: `GET`
- Path: `/mx-ce-system/api/v1/dict/types/{id}/form`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/dict/types/{id}/form`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 字典ID | `path` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 删除字典类型

- Method: `DELETE`
- Path: `/mx-ce-system/api/v1/dict/types/{ids}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/dict/types/{ids}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `ids` | 字典类型ID，多个以英文逗号(,)分割 | `path` | `true` | `string` | `` |

## 06.字典接口 / 获取字典类型在数据项

- Method: `GET`
- Path: `/mx-ce-system/api/v1/dict/types/{typeCode}/items`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/dict/types/{typeCode}/items`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `typeCode` | 字典类型编码 | `path` | `true` | `string` | `` |

## 06.字典接口 / 字典类型分页列表

- Method: `GET`
- Path: `/mx-ce-system/api/v1/dict/types/pages`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/dict/types/pages`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `keywords` | 关键字(类型名称/类型编码) | `query` | `false` | `string` | `` |
| `pageNum` | 页码 | `query` | `false` | `string` | `` |
| `pageSize` | 每页记录数 | `query` | `false` | `string` | `` |

## 06.字典接口 / 资金流水列表

- Method: `POST`
- Path: `/mx-ce-system/api/capitalFlow`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/capitalFlow`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `capitalFlowListDTO` | 入参实体类 | `body` | `true` | `CapitalFlowListDTO` | `CapitalFlowListDTO` |
| `capitalFlowListDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `capitalFlowListDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `capitalFlowListDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `capitalFlowListDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `capitalFlowListDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `capitalFlowListDTO.mobile` | 手机号 | `` | `false` | `string` | `` |
| `capitalFlowListDTO.flowType` | 流水类型,可用值:1=租赁收入,2=续租收入,3=押金缴纳,4=信用免押,5=余额充值,6=违约逾期,7=租赁退款,8=余额提现,9=信用免押解冻,10=押金解冻,11=渠道提现,12=老带新返佣,13=渠道返佣 | `` | `false` | `string(int32)` | `` |
| `capitalFlowListDTO.orderNumber` | 关联单号 | `` | `false` | `string` | `` |
| `capitalFlowListDTO.payType` | 支付方式,可用值:1=微信支付,2=支付宝支付,3=余额支付,4=芝麻支付,5=代付,6=微信小程序支付,7=美团支付 | `` | `false` | `string(int32)` | `` |
| `capitalFlowListDTO.transactionId` | 流水单号 | `` | `false` | `string` | `` |
| `capitalFlowListDTO.startTime` | 开始时间 | `` | `false` | `string` | `` |
| `capitalFlowListDTO.endTime` | 结束时间 | `` | `false` | `string` | `` |
| `capitalFlowListDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |

## 06.字典接口 / 资金流水导出

- Method: `POST`
- Path: `/mx-ce-system/api/capitalFlow/export`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/capitalFlow/export`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `capitalFlowListDTO` | 入参实体类 | `body` | `true` | `CapitalFlowListDTO` | `CapitalFlowListDTO` |
| `capitalFlowListDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `capitalFlowListDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `capitalFlowListDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `capitalFlowListDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `capitalFlowListDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `capitalFlowListDTO.mobile` | 手机号 | `` | `false` | `string` | `` |
| `capitalFlowListDTO.flowType` | 流水类型,可用值:1=租赁收入,2=续租收入,3=押金缴纳,4=信用免押,5=余额充值,6=违约逾期,7=租赁退款,8=余额提现,9=信用免押解冻,10=押金解冻,11=渠道提现,12=老带新返佣,13=渠道返佣 | `` | `false` | `string(int32)` | `` |
| `capitalFlowListDTO.orderNumber` | 关联单号 | `` | `false` | `string` | `` |
| `capitalFlowListDTO.payType` | 支付方式,可用值:1=微信支付,2=支付宝支付,3=余额支付,4=芝麻支付,5=代付,6=微信小程序支付,7=美团支付 | `` | `false` | `string(int32)` | `` |
| `capitalFlowListDTO.transactionId` | 流水单号 | `` | `false` | `string` | `` |
| `capitalFlowListDTO.startTime` | 开始时间 | `` | `false` | `string` | `` |
| `capitalFlowListDTO.endTime` | 结束时间 | `` | `false` | `string` | `` |
| `capitalFlowListDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |

## 06.字典接口 / 换电订单收入记录

- Method: `POST`
- Path: `/mx-ce-system/api/changeOrderIncome`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/changeOrderIncome`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `changeOrderIncomeDTO` | 换电订单收入记录信息 | `body` | `true` | `ChangeOrderIncomeDTO` | `ChangeOrderIncomeDTO` |
| `changeOrderIncomeDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `changeOrderIncomeDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `changeOrderIncomeDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `changeOrderIncomeDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `changeOrderIncomeDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `changeOrderIncomeDTO.mobile` | 手机号 | `` | `false` | `string` | `` |
| `changeOrderIncomeDTO.businessType` | 业务类型 1=换电下单 2=续租 7=退租 | `` | `false` | `integer(int32)` | `` |
| `changeOrderIncomeDTO.orderSn` | 订单编号 | `` | `false` | `string` | `` |
| `changeOrderIncomeDTO.payType` | 支付方式 1=微信 2=支付宝 3=余额支付 4=企业支付 | `` | `false` | `integer(int32)` | `` |
| `changeOrderIncomeDTO.affiliatedEnterprise` | 所属企业 | `` | `false` | `integer(int64)` | `` |
| `changeOrderIncomeDTO.payStartTime` | 支付开始时间 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `changeOrderIncomeDTO.payEndTime` | 支付结束时间 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `changeOrderIncomeDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |
| `changeOrderIncomeDTO.userType` | 用户类型 1=用户/渠道 2=企业用户 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 换电订单收入记录导出

- Method: `POST`
- Path: `/mx-ce-system/api/exportChangeOrderIncome`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/exportChangeOrderIncome`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `changeOrderIncomeDTO` | 换电订单收入记录信息 | `body` | `true` | `ChangeOrderIncomeDTO` | `ChangeOrderIncomeDTO` |
| `changeOrderIncomeDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `changeOrderIncomeDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `changeOrderIncomeDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `changeOrderIncomeDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `changeOrderIncomeDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `changeOrderIncomeDTO.mobile` | 手机号 | `` | `false` | `string` | `` |
| `changeOrderIncomeDTO.businessType` | 业务类型 1=换电下单 2=续租 7=退租 | `` | `false` | `integer(int32)` | `` |
| `changeOrderIncomeDTO.orderSn` | 订单编号 | `` | `false` | `string` | `` |
| `changeOrderIncomeDTO.payType` | 支付方式 1=微信 2=支付宝 3=余额支付 4=企业支付 | `` | `false` | `integer(int32)` | `` |
| `changeOrderIncomeDTO.affiliatedEnterprise` | 所属企业 | `` | `false` | `integer(int64)` | `` |
| `changeOrderIncomeDTO.payStartTime` | 支付开始时间 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `changeOrderIncomeDTO.payEndTime` | 支付结束时间 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `changeOrderIncomeDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |
| `changeOrderIncomeDTO.userType` | 用户类型 1=用户/渠道 2=企业用户 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 获取企业下拉列表

- Method: `GET`
- Path: `/mx-ce-system/api/getEnterprise`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/getEnterprise`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cityCode` | 城市编码 | `query` | `true` | `string` | `` |

## 06.字典接口 / 后台充值记录

- Method: `POST`
- Path: `/mx-ce-system/api/rechargeRecord`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/rechargeRecord`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `rechargeRecordDTO` | 入参实体类 | `body` | `true` | `RechargeRecordDTO` | `RechargeRecordDTO` |
| `rechargeRecordDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `rechargeRecordDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `rechargeRecordDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `rechargeRecordDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `rechargeRecordDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `rechargeRecordDTO.mobile` | 手机号 | `` | `false` | `string` | `` |
| `rechargeRecordDTO.startTime` | 开始时间 | `` | `false` | `string` | `` |
| `rechargeRecordDTO.endTime` | 结束时间 | `` | `false` | `string` | `` |

## 06.字典接口 / 后台充值记录导出

- Method: `POST`
- Path: `/mx-ce-system/api/rechargeRecord/export`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/rechargeRecord/export`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `rechargeRecordDTO` | 入参实体类 | `body` | `true` | `RechargeRecordDTO` | `RechargeRecordDTO` |
| `rechargeRecordDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `rechargeRecordDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `rechargeRecordDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `rechargeRecordDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `rechargeRecordDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `rechargeRecordDTO.mobile` | 手机号 | `` | `false` | `string` | `` |
| `rechargeRecordDTO.startTime` | 开始时间 | `` | `false` | `string` | `` |
| `rechargeRecordDTO.endTime` | 结束时间 | `` | `false` | `string` | `` |

## 06.字典接口 / 后台充值撤回

- Method: `PUT`
- Path: `/mx-ce-system/api/rechargeRecord/withdraw/{id}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/rechargeRecord/withdraw/{id}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 提现审核分页列表

- Method: `POST`
- Path: `/mx-ce-system/api/withdrawAudit`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/withdrawAudit`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `withdrawAuditDTO` | 入参实体类 | `body` | `true` | `WithdrawAuditDTO` | `WithdrawAuditDTO` |
| `withdrawAuditDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `withdrawAuditDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `withdrawAuditDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `withdrawAuditDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `withdrawAuditDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `withdrawAuditDTO.mobile` | 手机号 | `` | `false` | `string` | `` |
| `withdrawAuditDTO.withdrawStatus` | 提现状态,可用值:0=待审核,1=驳回,2=提现成功,3=提现失败 | `` | `false` | `string(int32)` | `` |
| `withdrawAuditDTO.orderType` | 订单类型,可用值:0=用户提现,1=渠道提现 | `` | `false` | `string(int32)` | `` |
| `withdrawAuditDTO.startTime` | 开始时间 | `` | `false` | `string` | `` |
| `withdrawAuditDTO.endTime` | 结束时间 | `` | `false` | `string` | `` |
| `withdrawAuditDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |

## 06.字典接口 / withdrawAgain

- Method: `PUT`
- Path: `/mx-ce-system/api/withdrawAudit/Again/{id}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/withdrawAudit/Again/{id}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 提现审核记录ID | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 提现审核导出

- Method: `POST`
- Path: `/mx-ce-system/api/withdrawAudit/export`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/withdrawAudit/export`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `withdrawAuditDTO` | 入参实体类 | `body` | `true` | `WithdrawAuditDTO` | `WithdrawAuditDTO` |
| `withdrawAuditDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `withdrawAuditDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `withdrawAuditDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `withdrawAuditDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `withdrawAuditDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `withdrawAuditDTO.mobile` | 手机号 | `` | `false` | `string` | `` |
| `withdrawAuditDTO.withdrawStatus` | 提现状态,可用值:0=待审核,1=驳回,2=提现成功,3=提现失败 | `` | `false` | `string(int32)` | `` |
| `withdrawAuditDTO.orderType` | 订单类型,可用值:0=用户提现,1=渠道提现 | `` | `false` | `string(int32)` | `` |
| `withdrawAuditDTO.startTime` | 开始时间 | `` | `false` | `string` | `` |
| `withdrawAuditDTO.endTime` | 结束时间 | `` | `false` | `string` | `` |
| `withdrawAuditDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |

## 06.字典接口 / 提现审核不通过

- Method: `PUT`
- Path: `/mx-ce-system/api/withdrawAudit/fail`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/withdrawAudit/fail`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 提现审核记录ID | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 提现审核订单状态下拉列表

- Method: `GET`
- Path: `/mx-ce-system/api/withdrawAudit/statusList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/withdrawAudit/statusList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 提现审核通过

- Method: `PUT`
- Path: `/mx-ce-system/api/withdrawAudit/success`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/withdrawAudit/success`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 提现审核记录ID | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 提现审核订单类型下拉列表

- Method: `GET`
- Path: `/mx-ce-system/api/withdrawAudit/typeList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/withdrawAudit/typeList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 提现对账详情

- Method: `POST`
- Path: `/mx-ce-system/api/withdrawAudit/withdrawCheckDetail`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/withdrawAudit/withdrawCheckDetail`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `withdrawCheckListDTO` | 提现对账列表查询参数 | `body` | `true` | `WithdrawCheckListDTO` | `WithdrawCheckListDTO` |
| `withdrawCheckListDTO.withdrawId` | 提现id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 提现对账列表

- Method: `POST`
- Path: `/mx-ce-system/api/withdrawAudit/withdrawCheckList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/withdrawAudit/withdrawCheckList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `withdrawCheckListDTO` | 提现对账列表查询参数 | `body` | `true` | `WithdrawCheckListDTO` | `WithdrawCheckListDTO` |
| `withdrawCheckListDTO.withdrawId` | 提现id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / PC-新增电柜调拨

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/add`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/add`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `brand` | 品牌id | `query` | `true` | `integer(int32)` | `` |
| `model` | 型号id | `query` | `true` | `integer(int32)` | `` |
| `warehouseInLocation` | 调入位置  1=库存仓 2=运营仓 3=退货仓 4=报废仓  5=维修仓 | `query` | `true` | `integer(int32)` | `` |
| `warehouseOutLocation` | 调出位置   1=库存仓  2=运营仓 5=维修仓 | `query` | `true` | `integer(int32)` | `` |
| `transferDescription` | 调拨说明 | `query` | `true` | `string` | `` |
| `id` | 仓储调拨id，用户重新编辑提交,新增不需要传 | `query` | `true` | `integer(int64)` | `` |
| `wareType` | 调拨类型 1=仓储调拨 2=城市调拨 | `query` | `true` | `integer(int32)` | `` |
| `file` |  | `query` | `false` | `file` | `` |
| `outCity` | 调出城市 | `query` | `false` | `string` | `` |
| `inCity` | 调入城市 | `query` | `false` | `string` | `` |

## 06.字典接口 / PC-新增预约入仓

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/addAppointment`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/addAppointment`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `warehouseAppointmentAddDTO` | 仓储预约新增数据 | `body` | `true` | `WarehouseAppointmentAddDTO` | `WarehouseAppointmentAddDTO` |
| `warehouseAppointmentAddDTO.warehouseType` | 采购类型 1:电池 2:电柜 | `` | `true` | `integer(int32)` | `` |
| `warehouseAppointmentAddDTO.brand` | 品牌 | `` | `true` | `integer(int32)` | `` |
| `warehouseAppointmentAddDTO.model` | 型号 | `` | `true` | `integer(int32)` | `` |
| `warehouseAppointmentAddDTO.purchaseNumber` | 采购数量 | `` | `true` | `integer(int32)` | `` |
| `warehouseAppointmentAddDTO.cityCode` | 城市归属 | `` | `true` | `string` | `` |
| `warehouseAppointmentAddDTO.purchaseNo` | 采购单号 | `` | `false` | `string` | `` |

## 06.字典接口 / PC-新增预约单调拨详情

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/addDetails`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/addDetails`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 预约入仓id | `query` | `true` | `integer(int64)` | `` |
| `warehouseDetailsId` | 预约单详情id，用户重新编辑提交,新增不需要传 | `query` | `true` | `integer(int64)` | `` |
| `warehouseInLocation` | 调入位置  1=库存仓  3=退货仓 | `query` | `true` | `integer(int32)` | `` |
| `transferDescription` | 调拨说明 | `query` | `true` | `string` | `` |
| `file` |  | `query` | `true` | `file` | `` |

## 06.字典接口 / 移动端-新增调拨

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/addWarehouse`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/addWarehouse`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `warehouseDTO` | 新增仓储调拨信息 | `body` | `true` | `WarehouseDTO` | `WarehouseDTO` |
| `warehouseDTO.id` | 仓储调拨id | `` | `false` | `integer(int64)` | `` |
| `warehouseDTO.warehouseInLocation` | 调入位置,筛选条件  1=库存仓 2=运营仓 3=退货仓 4=报废仓 5=维修仓 | `` | `true` | `integer(int32)` | `` |
| `warehouseDTO.warehouseOutLocation` | 调出位置 ,筛选条件  1=库存仓 5=维修仓 2=运营仓 | `` | `true` | `integer(int32)` | `` |
| `warehouseDTO.warehouseType` | 调拨类型 1=电池 2=电柜 | `` | `true` | `integer(int32)` | `` |
| `warehouseDTO.brand` | 品牌 | `` | `true` | `integer(int32)` | `` |
| `warehouseDTO.model` | 型号 | `` | `true` | `integer(int32)` | `` |
| `warehouseDTO.transferDescription` | 调拨说明 | `` | `true` | `string` | `` |
| `warehouseDTO.deviceNumber` | 设备编号 可存在两个设备编号 | `` | `true` | `array` | `string` |

## 06.字典接口 / pc-端新增电池调拨

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/addWarehousePc`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/addWarehousePc`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `brand` | 品牌id | `query` | `true` | `integer(int32)` | `` |
| `model` | 型号id | `query` | `true` | `integer(int32)` | `` |
| `warehouseInLocation` | 调入位置  1=库存仓 2=运营仓 3=退货仓 4=报废仓  5=维修仓 | `query` | `true` | `integer(int32)` | `` |
| `warehouseOutLocation` | 调出位置   1=库存仓  2=运营仓 5=维修仓 | `query` | `true` | `integer(int32)` | `` |
| `transferDescription` | 调拨说明 | `query` | `true` | `string` | `` |
| `id` | 仓储调拨id，用户重新编辑提交,新增不需要传 | `query` | `true` | `integer(int64)` | `` |
| `wareType` | 调拨类型 1=仓储调拨 2=城市调拨 | `query` | `true` | `integer(int32)` | `` |
| `file` |  | `query` | `false` | `file` | `` |
| `outCity` | 调出城市 | `query` | `false` | `string` | `` |
| `inCity` | 调入城市 | `query` | `false` | `string` | `` |

## 06.字典接口 / PC-电柜信息列表

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/cabinetList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/cabinetList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `warehouseCabinetInfoDTO` | 电柜信息数据 | `body` | `true` | `WarehouseCabinetInfoDTO` | `WarehouseCabinetInfoDTO` |
| `warehouseCabinetInfoDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `warehouseCabinetInfoDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `warehouseCabinetInfoDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `warehouseCabinetInfoDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `warehouseCabinetInfoDTO.id` | 仓储调拨id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / PC-删除预约入仓

- Method: `DELETE`
- Path: `/mx-ce-system/api/wareHouse/deleteAppointment`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/deleteAppointment`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 预约入仓id | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / PC-电池删除调拨单

- Method: `DELETE`
- Path: `/mx-ce-system/api/wareHouse/deleteBatteryWarehouse`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/deleteBatteryWarehouse`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `调拨id` |  | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / PC-删除电柜调拨

- Method: `DELETE`
- Path: `/mx-ce-system/api/wareHouse/deleteCabinetWarehouse`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/deleteCabinetWarehouse`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 调拨id | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / PC-电柜调拨详情

- Method: `GET`
- Path: `/mx-ce-system/api/wareHouse/detail`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/detail`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 仓储调拨id | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / PC-预约入仓详情

- Method: `GET`
- Path: `/mx-ce-system/api/wareHouse/detailAppointment`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/detailAppointment`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 预约入仓id | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / PC-设备编号导入模版下载

- Method: `GET`
- Path: `/mx-ce-system/api/wareHouse/download`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/download`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / PC-审核电池调拨

- Method: `PUT`
- Path: `/mx-ce-system/api/wareHouse/examineBatteryWarehouse`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/examineBatteryWarehouse`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `examineWarehouseDTO` | 审核信息 | `body` | `true` | `ExamineWarehouseDTO` | `ExamineWarehouseDTO` |
| `examineWarehouseDTO.warehouseId` | 仓储调拨id | `` | `false` | `integer(int64)` | `` |
| `examineWarehouseDTO.reviewedDetails` | 审核失败原因 | `` | `false` | `string` | `` |
| `examineWarehouseDTO.reviewedResult` | 审核结果 1=审核成功 2=审核失败 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / PC-审核电柜调拨

- Method: `PUT`
- Path: `/mx-ce-system/api/wareHouse/examineCabinetWarehouse`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/examineCabinetWarehouse`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `examineWarehouseDTO` | 审核信息 | `body` | `true` | `ExamineWarehouseDTO` | `ExamineWarehouseDTO` |
| `examineWarehouseDTO.warehouseId` | 仓储调拨id | `` | `false` | `integer(int64)` | `` |
| `examineWarehouseDTO.reviewedDetails` | 审核失败原因 | `` | `false` | `string` | `` |
| `examineWarehouseDTO.reviewedResult` | 审核结果 1=审核成功 2=审核失败 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / PC-审核预约入仓预约单详情

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/examineDetails`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/examineDetails`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `warehouseDetailsExamineDTO` | 仓库明细审核DTO | `body` | `true` | `WarehouseDetailsExamineDTO` | `WarehouseDetailsExamineDTO` |
| `warehouseDetailsExamineDTO.billNumber` | 单据编号 | `` | `false` | `string` | `` |
| `warehouseDetailsExamineDTO.examineResult` | 审批结果 1=审批成功 2=审批失败 | `` | `false` | `integer(int32)` | `` |
| `warehouseDetailsExamineDTO.examineFailReason` | 审批失败原因 | `` | `false` | `string` | `` |

## 06.字典接口 / 调拨审核

- Method: `PUT`
- Path: `/mx-ce-system/api/wareHouse/examineWarehouse`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/examineWarehouse`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `examineWarehouseDTO` | 审核信息 | `body` | `true` | `ExamineWarehouseDTO` | `ExamineWarehouseDTO` |
| `examineWarehouseDTO.warehouseId` | 仓储调拨id | `` | `false` | `integer(int64)` | `` |
| `examineWarehouseDTO.reviewedDetails` | 审核失败原因 | `` | `false` | `string` | `` |
| `examineWarehouseDTO.reviewedResult` | 审核结果 1=审核成功 2=审核失败 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / PC-电柜调拨列表导出

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/export`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/export`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `warehouseQueryCabinetDTO` | 仓储调拨电柜查询数据 | `body` | `true` | `WarehouseQueryCabinetDTO` | `WarehouseQueryCabinetDTO` |
| `warehouseQueryCabinetDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `warehouseQueryCabinetDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `warehouseQueryCabinetDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `warehouseQueryCabinetDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `warehouseQueryCabinetDTO.billNumber` | 单据编号 | `` | `false` | `string` | `` |
| `warehouseQueryCabinetDTO.status` | 筛选条件，状态 1=待审核,2=已审核,3=已驳回 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryCabinetDTO.cityCode` | 筛选条件,城市,厦门或者广州 | `` | `false` | `string` | `` |
| `warehouseQueryCabinetDTO.createDate` | 开始日期,筛选条件 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `warehouseQueryCabinetDTO.endTime` | 结束时间,筛选条件  yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `warehouseQueryCabinetDTO.warehouseInLocation` | 调入位置,筛选条件  1=库存仓 2=运营仓 3=退货仓 4=报废仓 5=维修仓 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryCabinetDTO.warehouseOutLocation` | 调出位置 ,筛选条件  1=库存仓 2=运营仓  5=返修仓 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryCabinetDTO.warehouseType` | 调拨类型 1=仓储调拨 2=城市调拨 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryCabinetDTO.brand` | 品牌 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryCabinetDTO.model` | 型号 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / PC-导出预约入仓列表

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/exportAppointment`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/exportAppointment`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `warehouseQueryAppointmentDTO` | 仓储预约查询数据 | `body` | `true` | `WarehouseQueryAppointmentDTO` | `WarehouseQueryAppointmentDTO` |
| `warehouseQueryAppointmentDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `warehouseQueryAppointmentDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `warehouseQueryAppointmentDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `warehouseQueryAppointmentDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `warehouseQueryAppointmentDTO.billNumber` | 单据编号 | `` | `false` | `string` | `` |
| `warehouseQueryAppointmentDTO.purchaseNumber` | 采购单号 | `` | `false` | `string` | `` |
| `warehouseQueryAppointmentDTO.startTime` | 时间范围,开始时间  yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `warehouseQueryAppointmentDTO.endTime` | 时间范围,结束时间 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `warehouseQueryAppointmentDTO.warehouseType` | 订单类型 1=电池 2=电柜 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryAppointmentDTO.status` | 状态 1=待结案 2=已结案 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryAppointmentDTO.brand` | 品牌 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryAppointmentDTO.model` | 型号 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryAppointmentDTO.cityCode` | 城市编码 | `` | `false` | `string` | `` |

## 06.字典接口 / PC-电柜信息导出

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/exportCabinet`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/exportCabinet`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `warehouseCabinetInfoDTO` | 电柜信息数据 | `body` | `true` | `WarehouseCabinetInfoDTO` | `WarehouseCabinetInfoDTO` |
| `warehouseCabinetInfoDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `warehouseCabinetInfoDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `warehouseCabinetInfoDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `warehouseCabinetInfoDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `warehouseCabinetInfoDTO.id` | 仓储调拨id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / PC-导出电池调拨列表

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/exportWarehouse`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/exportWarehouse`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `warehouseQueryPcDTO` | 仓储调拨pc端查询条件 | `body` | `true` | `WarehouseQueryPcDTO` | `WarehouseQueryPcDTO` |
| `warehouseQueryPcDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `warehouseQueryPcDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `warehouseQueryPcDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `warehouseQueryPcDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `warehouseQueryPcDTO.billNumber` | 单据编号 | `` | `false` | `string` | `` |
| `warehouseQueryPcDTO.status` | 筛选条件，状态 1=待审核,2=已审核,3=已驳回 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryPcDTO.cityCode` | 筛选条件,城市,厦门或者广州 | `` | `false` | `string` | `` |
| `warehouseQueryPcDTO.createDate` | 开始日期,筛选条件 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `warehouseQueryPcDTO.endTime` | 结束时间,筛选条件 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `warehouseQueryPcDTO.warehouseInLocation` | 调入位置,筛选条件  1=库存仓 2=运营仓 3=退货仓 4=报废仓  5=维修仓 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryPcDTO.warehouseOutLocation` | 调出位置 ,筛选条件  1=库存仓 2=返修仓 5=运营仓 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryPcDTO.warehouseType` | 调拨类型 1=仓储调拨 2=城市调拨 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryPcDTO.brand` | 品牌 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryPcDTO.model` | 型号 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / PC-电池调拨信息导出

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/exportWarehouseBattery`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/exportWarehouseBattery`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `warehouseBatteryDTO` | 仓储调拨电池数据 | `body` | `true` | `WarehouseBatteryDTO` | `WarehouseBatteryDTO` |
| `warehouseBatteryDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `warehouseBatteryDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `warehouseBatteryDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `warehouseBatteryDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `warehouseBatteryDTO.id` | 仓储调拨id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 获取城市列表

- Method: `GET`
- Path: `/mx-ce-system/api/wareHouse/getWarehouseCity`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/getWarehouseCity`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / PC-电柜调拨列表

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/list`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/list`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `warehouseQueryCabinetDTO` | 仓储调拨电柜查询数据 | `body` | `true` | `WarehouseQueryCabinetDTO` | `WarehouseQueryCabinetDTO` |
| `warehouseQueryCabinetDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `warehouseQueryCabinetDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `warehouseQueryCabinetDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `warehouseQueryCabinetDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `warehouseQueryCabinetDTO.billNumber` | 单据编号 | `` | `false` | `string` | `` |
| `warehouseQueryCabinetDTO.status` | 筛选条件，状态 1=待审核,2=已审核,3=已驳回 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryCabinetDTO.cityCode` | 筛选条件,城市,厦门或者广州 | `` | `false` | `string` | `` |
| `warehouseQueryCabinetDTO.createDate` | 开始日期,筛选条件 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `warehouseQueryCabinetDTO.endTime` | 结束时间,筛选条件  yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `warehouseQueryCabinetDTO.warehouseInLocation` | 调入位置,筛选条件  1=库存仓 2=运营仓 3=退货仓 4=报废仓 5=维修仓 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryCabinetDTO.warehouseOutLocation` | 调出位置 ,筛选条件  1=库存仓 2=运营仓  5=返修仓 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryCabinetDTO.warehouseType` | 调拨类型 1=仓储调拨 2=城市调拨 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryCabinetDTO.brand` | 品牌 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryCabinetDTO.model` | 型号 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / PC-预约入仓列表

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/listAppointment`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/listAppointment`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `warehouseQueryAppointmentDTO` | 仓储预约查询数据 | `body` | `true` | `WarehouseQueryAppointmentDTO` | `WarehouseQueryAppointmentDTO` |
| `warehouseQueryAppointmentDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `warehouseQueryAppointmentDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `warehouseQueryAppointmentDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `warehouseQueryAppointmentDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `warehouseQueryAppointmentDTO.billNumber` | 单据编号 | `` | `false` | `string` | `` |
| `warehouseQueryAppointmentDTO.purchaseNumber` | 采购单号 | `` | `false` | `string` | `` |
| `warehouseQueryAppointmentDTO.startTime` | 时间范围,开始时间  yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `warehouseQueryAppointmentDTO.endTime` | 时间范围,结束时间 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `warehouseQueryAppointmentDTO.warehouseType` | 订单类型 1=电池 2=电柜 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryAppointmentDTO.status` | 状态 1=待结案 2=已结案 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryAppointmentDTO.brand` | 品牌 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryAppointmentDTO.model` | 型号 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryAppointmentDTO.cityCode` | 城市编码 | `` | `false` | `string` | `` |

## 06.字典接口 / PC-预约单详情列表

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/listDetails`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/listDetails`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `warehouseQueryDetailsDTO` | 预约详情查询数据 | `body` | `true` | `WarehouseQueryDetailsDTO` | `WarehouseQueryDetailsDTO` |
| `warehouseQueryDetailsDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `warehouseQueryDetailsDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `warehouseQueryDetailsDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `warehouseQueryDetailsDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `warehouseQueryDetailsDTO.id` | 预约入仓id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 获取仓储调拨调入位置下拉列表-依据调出位置得到对应的值

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/listOptionWareHouse`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/listOptionWareHouse`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `optionWareHouseDTO` | 仓储调拨下拉框数据 | `body` | `true` | `OptionWareHouseDTO` | `OptionWareHouseDTO` |
| `optionWareHouseDTO.wareHouseOUTLocation` | 调出位置id  1=库存仓  2=运营仓 5=维修仓 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 获取仓储调拨品牌下拉列表

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/listWareHouseBrand`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/listWareHouseBrand`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `optionWareHouseBrandDTO` | 仓储品牌下拉框数据 | `body` | `true` | `OptionWareHouseBrandDTO` | `OptionWareHouseBrandDTO` |
| `optionWareHouseBrandDTO.warehouseType` | 调拨类型 1=电池 2=电柜 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 获取仓储调拨型号下拉列表

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/listWareHouseModel`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/listWareHouseModel`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `optionWareHouseModelDTO` | 获取型号下拉框数据 | `body` | `true` | `OptionWareHouseModelDTO` | `OptionWareHouseModelDTO` |
| `optionWareHouseModelDTO.warehouseType` | 调拨类型 1=电池 2=电柜 | `` | `false` | `integer(int32)` | `` |
| `optionWareHouseModelDTO.companyId` | 品牌id | `` | `false` | `string` | `` |

## 06.字典接口 / PC-预约入仓订单状态下拉列表

- Method: `GET`
- Path: `/mx-ce-system/api/wareHouse/reservationStatusOptions`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/reservationStatusOptions`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / PC-预约入仓调入位置下拉列表

- Method: `GET`
- Path: `/mx-ce-system/api/wareHouse/reservationWarehouseInLocation`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/reservationWarehouseInLocation`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 移动端-仓储调拨调拨列表

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/screenWarehouse`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/screenWarehouse`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `warehouseQueryDTO` | 仓储调拨筛选查询数据 | `body` | `true` | `WarehouseQueryDTO` | `WarehouseQueryDTO` |
| `warehouseQueryDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `warehouseQueryDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `warehouseQueryDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `warehouseQueryDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `warehouseQueryDTO.status` | 筛选条件，状态 1=待审核,2=已审核,3=已驳回 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryDTO.cityCode` | 筛选条件,城市,厦门或者广州 | `` | `false` | `string` | `` |
| `warehouseQueryDTO.createDate` | 开始日期,筛选条件 | `` | `false` | `string` | `` |
| `warehouseQueryDTO.endTime` | 结束时间,筛选条件 | `` | `false` | `string` | `` |
| `warehouseQueryDTO.warehouseType` | 调拨类型,筛选条件 2=电柜,1=电池 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryDTO.warehouseInLocation` | 调入位置,筛选条件  1=库存仓 2=运营仓 3=退货仓 4=报废仓 5=维修仓 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryDTO.warehouseOutLocation` | 调出位置 ,筛选条件  1=库存仓 5=维修仓 2=运营仓 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryDTO.keyWords` | 关键字,模糊查询 单据编号 制单人 | `` | `false` | `string` | `` |

## 06.字典接口 / PC-端电池调拨列表

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/screenWarehousePc`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/screenWarehousePc`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `warehouseQueryPcDTO` | 仓储调拨pc端查询条件 | `body` | `true` | `WarehouseQueryPcDTO` | `WarehouseQueryPcDTO` |
| `warehouseQueryPcDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `warehouseQueryPcDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `warehouseQueryPcDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `warehouseQueryPcDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `warehouseQueryPcDTO.billNumber` | 单据编号 | `` | `false` | `string` | `` |
| `warehouseQueryPcDTO.status` | 筛选条件，状态 1=待审核,2=已审核,3=已驳回 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryPcDTO.cityCode` | 筛选条件,城市,厦门或者广州 | `` | `false` | `string` | `` |
| `warehouseQueryPcDTO.createDate` | 开始日期,筛选条件 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `warehouseQueryPcDTO.endTime` | 结束时间,筛选条件 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `warehouseQueryPcDTO.warehouseInLocation` | 调入位置,筛选条件  1=库存仓 2=运营仓 3=退货仓 4=报废仓  5=维修仓 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryPcDTO.warehouseOutLocation` | 调出位置 ,筛选条件  1=库存仓 2=返修仓 5=运营仓 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryPcDTO.warehouseType` | 调拨类型 1=仓储调拨 2=城市调拨 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryPcDTO.brand` | 品牌 | `` | `false` | `integer(int32)` | `` |
| `warehouseQueryPcDTO.model` | 型号 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 订单状态下拉列表

- Method: `GET`
- Path: `/mx-ce-system/api/wareHouse/statusOptions`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/statusOptions`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / PC-电池调拨信息列表

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/warehouseBattery`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/warehouseBattery`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `warehouseBatteryDTO` | 仓储调拨电池数据 | `body` | `true` | `WarehouseBatteryDTO` | `WarehouseBatteryDTO` |
| `warehouseBatteryDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `warehouseBatteryDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `warehouseBatteryDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `warehouseBatteryDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `warehouseBatteryDTO.id` | 仓储调拨id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / PC-电柜调拨详情审批信息列表

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/warehouseCabinetExamine`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/warehouseCabinetExamine`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `warehouseExamineDetailsDTO` | 审核信息 | `body` | `true` | `WarehouseExamineDetailsDTO` | `WarehouseExamineDetailsDTO` |
| `warehouseExamineDetailsDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `warehouseExamineDetailsDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `warehouseExamineDetailsDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `warehouseExamineDetailsDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `warehouseExamineDetailsDTO.id` | 仓储调拨id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / PC-端电池调拨详情

- Method: `GET`
- Path: `/mx-ce-system/api/wareHouse/warehouseDetails`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/warehouseDetails`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 仓储调拨id | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 移动端-调拨详情

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/warehouseDetails`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/warehouseDetails`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `warehouseDetailsDTO` | 仓储调拨详情id | `body` | `true` | `WarehouseDetailsDTO` | `WarehouseDetailsDTO` |
| `warehouseDetailsDTO.warehouseId` | 单据编号 | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / PC-电池调拨详情审批信息列表

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/warehouseExamine`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/warehouseExamine`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `warehouseExamineDetailsDTO` | 审核信息 | `body` | `true` | `WarehouseExamineDetailsDTO` | `WarehouseExamineDetailsDTO` |
| `warehouseExamineDetailsDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `warehouseExamineDetailsDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `warehouseExamineDetailsDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `warehouseExamineDetailsDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `warehouseExamineDetailsDTO.id` | 仓储调拨id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 获取调入位置下拉列表-单独数据

- Method: `GET`
- Path: `/mx-ce-system/api/wareHouse/warehouseInLocation`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/warehouseInLocation`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 获取调出位置下拉列表-单独数据

- Method: `GET`
- Path: `/mx-ce-system/api/wareHouse/warehouseOutLocation`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/warehouseOutLocation`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 移动端-驳回信息分页列表

- Method: `POST`
- Path: `/mx-ce-system/api/wareHouse/warehouseReject`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/wareHouse/warehouseReject`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `warehouseRejectDTO` | 仓储调拨驳回 | `body` | `true` | `WarehouseRejectDTO` | `WarehouseRejectDTO` |
| `warehouseRejectDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `warehouseRejectDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `warehouseRejectDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `warehouseRejectDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `warehouseRejectDTO.warehouseId` | 仓储调拨id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 获取仓门禁用原因列表

- Method: `POST`
- Path: `/mx-ce-system/api/smsDoor/disableReason`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/smsDoor/disableReason`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `smsDoorDisableReasonDTO` | 仓门禁用原因列表 | `body` | `true` | `SmsDoorDisableReasonDTO` | `SmsDoorDisableReasonDTO` |
| `smsDoorDisableReasonDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `smsDoorDisableReasonDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `smsDoorDisableReasonDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `smsDoorDisableReasonDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `smsDoorDisableReasonDTO.disableReason` | 仓门禁用原因 | `` | `false` | `string` | `` |

## 06.字典接口 / 新增仓门禁用原因

- Method: `POST`
- Path: `/mx-ce-system/api/smsDoor/disableReason/add`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/smsDoor/disableReason/add`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `smsDoorAddDisableReasonDTO` | 新增仓门禁用原因 | `body` | `true` | `SmsDoorAddDisableReasonDTO` | `SmsDoorAddDisableReasonDTO` |
| `smsDoorAddDisableReasonDTO.id` | 仓门禁用原因id,新增时不传，修改时传 | `` | `false` | `integer(int64)` | `` |
| `smsDoorAddDisableReasonDTO.disableReason` | 仓门禁用原因 | `` | `false` | `string` | `` |

## 06.字典接口 / 删除仓门禁用原因

- Method: `DELETE`
- Path: `/mx-ce-system/api/smsDoor/disableReason/delete`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/smsDoor/disableReason/delete`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` |  | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 仓门禁用记录

- Method: `POST`
- Path: `/mx-ce-system/api/smsDoor/disableRecord`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/smsDoor/disableRecord`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `smsDoorDisableRecordDTO` | 仓门禁用记录列表 | `body` | `true` | `SmsDoorDisableRecordDTO` | `SmsDoorDisableRecordDTO` |
| `smsDoorDisableRecordDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `smsDoorDisableRecordDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `smsDoorDisableRecordDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `smsDoorDisableRecordDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `smsDoorDisableRecordDTO.cityCode` | 城市编码 | `` | `false` | `string` | `` |
| `smsDoorDisableRecordDTO.cabinetCode` | 电柜编号 | `` | `false` | `string` | `` |
| `smsDoorDisableRecordDTO.disableReason` | 仓门禁用原因 | `` | `false` | `string` | `` |
| `smsDoorDisableRecordDTO.disableStatus` | 禁用状态 0=已恢复 1=禁用 | `` | `false` | `integer(int32)` | `` |
| `smsDoorDisableRecordDTO.startTime` | 筛选条件,开始时间 | `` | `false` | `string` | `` |
| `smsDoorDisableRecordDTO.endTime` | 筛选条件,结束时间 | `` | `false` | `string` | `` |

## 06.字典接口 / 导出仓门禁用记录

- Method: `POST`
- Path: `/mx-ce-system/api/smsDoor/disableRecord/export`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/smsDoor/disableRecord/export`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `smsDoorDisableRecordDTO` | 仓门禁用记录列表 | `body` | `true` | `SmsDoorDisableRecordDTO` | `SmsDoorDisableRecordDTO` |
| `smsDoorDisableRecordDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `smsDoorDisableRecordDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `smsDoorDisableRecordDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `smsDoorDisableRecordDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `smsDoorDisableRecordDTO.cityCode` | 城市编码 | `` | `false` | `string` | `` |
| `smsDoorDisableRecordDTO.cabinetCode` | 电柜编号 | `` | `false` | `string` | `` |
| `smsDoorDisableRecordDTO.disableReason` | 仓门禁用原因 | `` | `false` | `string` | `` |
| `smsDoorDisableRecordDTO.disableStatus` | 禁用状态 0=已恢复 1=禁用 | `` | `false` | `integer(int32)` | `` |
| `smsDoorDisableRecordDTO.startTime` | 筛选条件,开始时间 | `` | `false` | `string` | `` |
| `smsDoorDisableRecordDTO.endTime` | 筛选条件,结束时间 | `` | `false` | `string` | `` |

## 06.字典接口 / 仓门开启记录列表

- Method: `POST`
- Path: `/mx-ce-system/api/smsDoor/enableRecord`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/smsDoor/enableRecord`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `smsDoorEnableRecordDTO` | 仓门启用记录列表 | `body` | `true` | `SmsDoorEnableRecordDTO` | `SmsDoorEnableRecordDTO` |
| `smsDoorEnableRecordDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `smsDoorEnableRecordDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `smsDoorEnableRecordDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `smsDoorEnableRecordDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `smsDoorEnableRecordDTO.cabinetCode` | 换电柜编号 | `` | `false` | `string` | `` |
| `smsDoorEnableRecordDTO.openReason` | 开仓原因 | `` | `false` | `string` | `` |
| `smsDoorEnableRecordDTO.startTime` | 筛选条件,开始时间 | `` | `false` | `string` | `` |
| `smsDoorEnableRecordDTO.endTime` | 筛选条件,结束时间 | `` | `false` | `string` | `` |
| `smsDoorEnableRecordDTO.cityCode` | 城市编码 | `` | `false` | `string` | `` |

## 06.字典接口 / 导出仓门开启记录

- Method: `POST`
- Path: `/mx-ce-system/api/smsDoor/enableRecord/export`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/smsDoor/enableRecord/export`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `smsDoorEnableRecordDTO` | 仓门启用记录列表 | `body` | `true` | `SmsDoorEnableRecordDTO` | `SmsDoorEnableRecordDTO` |
| `smsDoorEnableRecordDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `smsDoorEnableRecordDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `smsDoorEnableRecordDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `smsDoorEnableRecordDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `smsDoorEnableRecordDTO.cabinetCode` | 换电柜编号 | `` | `false` | `string` | `` |
| `smsDoorEnableRecordDTO.openReason` | 开仓原因 | `` | `false` | `string` | `` |
| `smsDoorEnableRecordDTO.startTime` | 筛选条件,开始时间 | `` | `false` | `string` | `` |
| `smsDoorEnableRecordDTO.endTime` | 筛选条件,结束时间 | `` | `false` | `string` | `` |
| `smsDoorEnableRecordDTO.cityCode` | 城市编码 | `` | `false` | `string` | `` |

## 06.字典接口 / 禁用原因下拉列表

- Method: `GET`
- Path: `/mx-ce-system/api/SmsDoorDisableReasonController/optionList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/SmsDoorDisableReasonController/optionList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 新增城市

- Method: `POST`
- Path: `/mx-ce-system/pc/regionManagement/addRegion`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/regionManagement/addRegion`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `regionListDTO` | 城市列表数据dto | `body` | `true` | `RegionListDTO` | `RegionListDTO` |
| `regionListDTO.province` | 所属省份 | `` | `true` | `integer(int64)` | `` |
| `regionListDTO.city` | 所属城市 | `` | `true` | `string` | `` |
| `regionListDTO.cityCode` | 城市编码 | `` | `true` | `string` | `` |

## 06.字典接口 / 删除城市

- Method: `DELETE`
- Path: `/mx-ce-system/pc/regionManagement/deleteRegion`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/regionManagement/deleteRegion`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 城市id | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 禁启用城市

- Method: `POST`
- Path: `/mx-ce-system/pc/regionManagement/enableRegion`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/regionManagement/enableRegion`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enableRegionDTO` | 禁启用城市 | `body` | `true` | `EnableRegionDTO` | `EnableRegionDTO` |
| `enableRegionDTO.id` | 城市id | `` | `true` | `integer(int64)` | `` |
| `enableRegionDTO.status` | 城市状态 0 =禁用 1=启用 | `` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 获取区域编码

- Method: `GET`
- Path: `/mx-ce-system/pc/regionManagement/getCity`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/regionManagement/getCity`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `city` | 城市名称 | `query` | `true` | `string` | `` |

## 06.字典接口 / 获取省份

- Method: `GET`
- Path: `/mx-ce-system/pc/regionManagement/getProvince`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/regionManagement/getProvince`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 城市列表

- Method: `POST`
- Path: `/mx-ce-system/pc/regionManagement/regionList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/regionManagement/regionList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `regionManagementListDTO` | 城市列表数据dto | `body` | `true` | `RegionManagementListDTO` | `RegionManagementListDTO` |
| `regionManagementListDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `regionManagementListDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `regionManagementListDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `regionManagementListDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `regionManagementListDTO.province` | 所属省份 | `` | `false` | `string` | `` |

## 06.字典接口 / 生成企业员工数据

- Method: `POST`
- Path: `/mx-ce-system/exportMealOrder/generateEnterpriseStaffs`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/exportMealOrder/generateEnterpriseStaffs`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 生成套餐订单数据

- Method: `POST`
- Path: `/mx-ce-system/exportMealOrder/generateMealOrders`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/exportMealOrder/generateMealOrders`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 生成用户数据

- Method: `POST`
- Path: `/mx-ce-system/exportMealOrder/generateUsers`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/exportMealOrder/generateUsers`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `count` |  | `query` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 导出电池列表

- Method: `POST`
- Path: `/mx-ce-system/api/battery/_export`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/_export`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `batteryPcPageDTO` | 电池分页查询条件 | `body` | `true` | `BatteryPcPageDTO` | `BatteryPcPageDTO` |
| `batteryPcPageDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `batteryPcPageDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `batteryPcPageDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `batteryPcPageDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `batteryPcPageDTO.batteryCode` | 电池编号，模糊查询 | `` | `false` | `string` | `` |
| `batteryPcPageDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |
| `batteryPcPageDTO.operationalStatus` | 运营状态 1=柜仓中 2=租赁中 3=运营异常 4=电池异常 | `` | `false` | `integer(int32)` | `` |
| `batteryPcPageDTO.businessStatus` | 业务状态,1、库存，2、运营，3、退货，4、报废 5、维修 | `` | `false` | `integer(int32)` | `` |
| `batteryPcPageDTO.companyId` | 品牌编码 | `` | `false` | `integer(int32)` | `` |
| `batteryPcPageDTO.modelId` | 型号ID | `` | `false` | `integer(int32)` | `` |
| `batteryPcPageDTO.protocol` | 电池协议，保留字段 | `` | `false` | `integer(int32)` | `` |
| `batteryPcPageDTO.onlineStatus` | 在线状态,1、在线，0、离线 | `` | `false` | `integer(int32)` | `` |
| `batteryPcPageDTO.locationStatus` | 定位状态,1、定位，0、未定位 | `` | `false` | `integer(int32)` | `` |
| `batteryPcPageDTO.batteryStatus` | 电池状态,0、移动，1、静止，2、存储，3、休眠 | `` | `false` | `integer(int32)` | `` |
| `batteryPcPageDTO.tenantName` | 承租人,只匹配完整的姓名 | `` | `false` | `string` | `` |
| `batteryPcPageDTO.tenantPhone` | 承租人手机号,只匹配完整手机号 | `` | `false` | `string` | `` |

## 06.字典接口 / 允许充放电

- Method: `POST`
- Path: `/mx-ce-system/api/battery/allowDischarge`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/allowDischarge`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `batteryCode` | 电池编号 | `query` | `true` | `string` | `` |

## 06.字典接口 / PC端-电池-资产地图

- Method: `POST`
- Path: `/mx-ce-system/api/battery/batteryAssetMap`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/batteryAssetMap`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 电池资产

- Method: `POST`
- Path: `/mx-ce-system/api/battery/batteryAssets`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/batteryAssets`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cityCode` | 所属城市 | `query` | `false` | `string` | `` |

## 06.字典接口 / 电池详情

- Method: `POST`
- Path: `/mx-ce-system/api/battery/batteryDetail`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/batteryDetail`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `batteryCode` | 电池编号 | `query` | `true` | `string` | `` |

## 06.字典接口 / PC端-电池详情-资产地图

- Method: `POST`
- Path: `/mx-ce-system/api/battery/batteryDetailAssetMap`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/batteryDetailAssetMap`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `batteryCode` | 电池编号 | `query` | `true` | `string` | `` |

## 06.字典接口 / 电池故障数统计

- Method: `POST`
- Path: `/mx-ce-system/api/battery/batteryFault/{year}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/batteryFault/{year}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `year` | 年份 | `path` | `true` | `string` | `` |
| `cityCode` | 城市编码 | `query` | `false` | `string` | `` |

## 06.字典接口 / 移动端-电池列表

- Method: `POST`
- Path: `/mx-ce-system/api/battery/batteryList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/batteryList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `batteryPageDTO` | 电池分页查询条件 | `body` | `true` | `BatteryPageDTO` | `BatteryPageDTO` |
| `batteryPageDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `batteryPageDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `batteryPageDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `batteryPageDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `batteryPageDTO.batteryCode` | 电池编号，模糊查询 | `` | `false` | `string` | `` |
| `batteryPageDTO.onlineStatus` | 在线状态,1、在线，0、离线 | `` | `false` | `integer(int32)` | `` |
| `batteryPageDTO.businessStatus` | 业务状态,1、库存中，2、运营中，5、报废中，6、维修中 | `` | `false` | `integer(int32)` | `` |
| `batteryPageDTO.cityCode` | 城市归属 | `` | `false` | `string` | `` |
| `batteryPageDTO.batteryRange` | 电量范围,1、<20%，2、20%-50%，3、51%-80%，4、>80% | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / PC端-电池列表筛选查询

- Method: `POST`
- Path: `/mx-ce-system/api/battery/batteryListPc`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/batteryListPc`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `batteryPcPageDTO` | 电池分页查询条件 | `body` | `true` | `BatteryPcPageDTO` | `BatteryPcPageDTO` |
| `batteryPcPageDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `batteryPcPageDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `batteryPcPageDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `batteryPcPageDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `batteryPcPageDTO.batteryCode` | 电池编号，模糊查询 | `` | `false` | `string` | `` |
| `batteryPcPageDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |
| `batteryPcPageDTO.operationalStatus` | 运营状态 1=柜仓中 2=租赁中 3=运营异常 4=电池异常 | `` | `false` | `integer(int32)` | `` |
| `batteryPcPageDTO.businessStatus` | 业务状态,1、库存，2、运营，3、退货，4、报废 5、维修 | `` | `false` | `integer(int32)` | `` |
| `batteryPcPageDTO.companyId` | 品牌编码 | `` | `false` | `integer(int32)` | `` |
| `batteryPcPageDTO.modelId` | 型号ID | `` | `false` | `integer(int32)` | `` |
| `batteryPcPageDTO.protocol` | 电池协议，保留字段 | `` | `false` | `integer(int32)` | `` |
| `batteryPcPageDTO.onlineStatus` | 在线状态,1、在线，0、离线 | `` | `false` | `integer(int32)` | `` |
| `batteryPcPageDTO.locationStatus` | 定位状态,1、定位，0、未定位 | `` | `false` | `integer(int32)` | `` |
| `batteryPcPageDTO.batteryStatus` | 电池状态,0、移动，1、静止，2、存储，3、休眠 | `` | `false` | `integer(int32)` | `` |
| `batteryPcPageDTO.tenantName` | 承租人,只匹配完整的姓名 | `` | `false` | `string` | `` |
| `batteryPcPageDTO.tenantPhone` | 承租人手机号,只匹配完整手机号 | `` | `false` | `string` | `` |

## 06.字典接口 / 电池型号数量

- Method: `POST`
- Path: `/mx-ce-system/api/battery/batteryModelNum`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/batteryModelNum`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cityCode` | 所属城市 | `query` | `false` | `string` | `` |

## 06.字典接口 / PC端-电池营运信息

- Method: `POST`
- Path: `/mx-ce-system/api/battery/batteryOperationInfo`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/batteryOperationInfo`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `batteryOperationInfoPageDTO` | 电池营运信息分页查询条件 | `body` | `true` | `BatteryOperationInfoPageDTO` | `BatteryOperationInfoPageDTO` |
| `batteryOperationInfoPageDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `batteryOperationInfoPageDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `batteryOperationInfoPageDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `batteryOperationInfoPageDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `batteryOperationInfoPageDTO.batteryCode` | 电池编号 | `` | `true` | `string` | `` |

## 06.字典接口 / PC端-电池参数曲线

- Method: `POST`
- Path: `/mx-ce-system/api/battery/batteryParameterCurve`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/batteryParameterCurve`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `batteryCode` | 电池编号 | `query` | `true` | `string` | `` |
| `startTime` | 开始时间 | `query` | `true` | `string` | `` |
| `endTime` | 结束时间 | `query` | `true` | `string` | `` |

## 06.字典接口 / PC端-充放电记录导出

- Method: `GET`
- Path: `/mx-ce-system/api/battery/batteryParamsDataExport`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/batteryParamsDataExport`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `batteryCode` | 电池编号 | `query` | `true` | `string` | `` |
| `startTime` | 开始时间 | `query` | `true` | `string` | `` |
| `endTime` | 结束时间 | `query` | `true` | `string` | `` |

## 06.字典接口 / 电池当前定位

- Method: `POST`
- Path: `/mx-ce-system/api/battery/batteryPosition`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/batteryPosition`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `batteryCode` | 电池编号 | `query` | `true` | `string` | `` |

## 06.字典接口 / PC端-电池品牌列表,包含型号

- Method: `GET`
- Path: `/mx-ce-system/api/battery/brandOptions`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/brandOptions`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / PC端-电池业务类型列表

- Method: `GET`
- Path: `/mx-ce-system/api/battery/businessOptions`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/businessOptions`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 电柜故障数统计

- Method: `POST`
- Path: `/mx-ce-system/api/battery/cabinetFault/{year}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/cabinetFault/{year}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `year` | 年份 | `path` | `true` | `string` | `` |
| `cityCode` | 城市编码 | `query` | `false` | `string` | `` |

## 06.字典接口 / PC端-充放电记录

- Method: `POST`
- Path: `/mx-ce-system/api/battery/chargeDischargeRecord`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/chargeDischargeRecord`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `chargeDischargeRecordPageDTO` | 电池充放电记录分页查询条件，查询时间范围不能超过7天 | `body` | `true` | `ChargeDischargeRecordPageDTO` | `ChargeDischargeRecordPageDTO` |
| `chargeDischargeRecordPageDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `chargeDischargeRecordPageDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `chargeDischargeRecordPageDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `chargeDischargeRecordPageDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `chargeDischargeRecordPageDTO.batteryCode` | 电池编号 | `` | `true` | `string` | `` |
| `chargeDischargeRecordPageDTO.type` | 类型，1：充电，0：放电 | `` | `false` | `integer(int32)` | `` |
| `chargeDischargeRecordPageDTO.startTime` | 开始时间，格式yyyy-MM-dd HH:mm:ss | `` | `true` | `string` | `` |
| `chargeDischargeRecordPageDTO.endTime` | 结束时间，格式yyyy-MM-dd HH:mm:ss | `` | `true` | `string` | `` |

## 06.字典接口 / 禁止充电

- Method: `POST`
- Path: `/mx-ce-system/api/battery/disableCharge`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/disableCharge`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `batteryCode` | 电池编号 | `query` | `true` | `string` | `` |

## 06.字典接口 / 禁止放电

- Method: `POST`
- Path: `/mx-ce-system/api/battery/disableDischarge`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/disableDischarge`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `batteryCode` | 电池编号 | `query` | `true` | `string` | `` |

## 06.字典接口 / PC端-电池在线状态列表

- Method: `GET`
- Path: `/mx-ce-system/api/battery/onlineOptions`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/onlineOptions`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 全部重启

- Method: `POST`
- Path: `/mx-ce-system/api/battery/remoteRestartAll`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/remoteRestartAll`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 重启BMS

- Method: `POST`
- Path: `/mx-ce-system/api/battery/remoteRestartBms`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/remoteRestartBms`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `batteryCode` | 电池编号 | `query` | `true` | `string` | `` |

## 06.字典接口 / 重启DTU

- Method: `POST`
- Path: `/mx-ce-system/api/battery/remoteRestartDtu`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/remoteRestartDtu`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / PC端-电池状态列表

- Method: `GET`
- Path: `/mx-ce-system/api/battery/statusOptions`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/statusOptions`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / PC端-充放电记录，时长和次数

- Method: `GET`
- Path: `/mx-ce-system/api/battery/totalBatCur`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/totalBatCur`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `batteryCode` | 电池编号 | `query` | `true` | `string` | `` |
| `startTime` | 开始时间 | `query` | `true` | `string` | `` |
| `endTime` | 结束时间 | `query` | `true` | `string` | `` |

## 06.字典接口 / PC端-行程轨迹

- Method: `GET`
- Path: `/mx-ce-system/api/battery/tripTrack`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/tripTrack`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `batteryCode` | 电池编号 | `query` | `true` | `string` | `` |
| `startTime` | 开始时间 | `query` | `true` | `string` | `` |
| `endTime` | 结束时间 | `query` | `true` | `string` | `` |

## 06.字典接口 / 行程轨迹导入

- Method: `POST`
- Path: `/mx-ce-system/api/battery/tripTrackImport/{batteryCode}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/tripTrackImport/{batteryCode}`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `batteryCode` |  | `path` | `true` | `string` | `` |
| `tripTrackVos` | 行程轨迹 | `body` | `true` | `array` | `TripTrackVo` |
| `tripTrackVos.longitude` | 经度 | `` | `false` | `string` | `` |
| `tripTrackVos.latitude` | 纬度 | `` | `false` | `string` | `` |
| `tripTrackVos.createDate` | 时间 | `` | `false` | `string(date-time)` | `` |
| `tripTrackVos.speed` | 速度 | `` | `false` | `string` | `` |
| `tripTrackVos.mileage` | 里程 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 验证密码接口

- Method: `POST`
- Path: `/mx-ce-system/api/battery/validatePassword`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/battery/validatePassword`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `passwordRequest` | PasswordRequest | `body` | `true` | `PasswordRequest` | `PasswordRequest` |
| `passwordRequest.passWord` | 密码 | `` | `false` | `string` | `` |

## 06.字典接口 / 布放验收

- Method: `PUT`
- Path: `/mx-ce-system/api/omsCabinetLayoutController/acceptanceCabinetLayout`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/omsCabinetLayoutController/acceptanceCabinetLayout`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetLayoutUpdateDTO` | 布放验收提交数据 | `body` | `true` | `CabinetLayoutUpdateDTO` | `CabinetLayoutUpdateDTO` |
| `cabinetLayoutUpdateDTO.layoutId` | 布放单ID | `` | `false` | `integer(int64)` | `` |
| `cabinetLayoutUpdateDTO.auditResult` | 审核结果 1、审核成功，2、审核驳回 | `` | `true` | `integer(int32)` | `` |
| `cabinetLayoutUpdateDTO.rejectReason` | 驳回原因 | `` | `false` | `string` | `` |

## 06.字典接口 / 新增布放单

- Method: `POST`
- Path: `/mx-ce-system/api/omsCabinetLayoutController/addCabinetLayout`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/omsCabinetLayoutController/addCabinetLayout`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetLayoutSubmitDTO` | 电柜布放单提交数据 | `body` | `true` | `CabinetLayoutSubmitDTO` | `CabinetLayoutSubmitDTO` |
| `cabinetLayoutSubmitDTO.layoutId` | 布放单ID | `` | `false` | `integer(int64)` | `` |
| `cabinetLayoutSubmitDTO.netName` | 网点名称 | `` | `true` | `string` | `` |
| `cabinetLayoutSubmitDTO.cityCode` | 布放城市编码 | `` | `true` | `string` | `` |
| `cabinetLayoutSubmitDTO.deploymentQuantity` | 布放数量（台） | `` | `true` | `integer(int32)` | `` |
| `cabinetLayoutSubmitDTO.cbCompanyId` | 布放电柜品牌ID | `` | `false` | `integer(int32)` | `` |
| `cabinetLayoutSubmitDTO.contacts` | 联系人 | `` | `false` | `string` | `` |
| `cabinetLayoutSubmitDTO.contactNumber` | 联系电话 | `` | `false` | `string` | `` |
| `cabinetLayoutSubmitDTO.layoutAddress` | 布放地址 | `` | `true` | `string` | `` |
| `cabinetLayoutSubmitDTO.positionImages` | 布放位置图 | `` | `true` | `string` | `` |

## 06.字典接口 / deleteCabinetLayout

- Method: `DELETE`
- Path: `/mx-ce-system/api/omsCabinetLayoutController/deleteCabinetLayout`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/omsCabinetLayoutController/deleteCabinetLayout`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `layoutId` | 布放单ID | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 导出电柜布放单分页

- Method: `POST`
- Path: `/mx-ce-system/api/omsCabinetLayoutController/exportCabinetLayoutList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/omsCabinetLayoutController/exportCabinetLayoutList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `pcCabinetLayoutListPageDTO` | PC端-电柜布放列表分页筛选条件 | `body` | `true` | `PcCabinetLayoutListPageDTO` | `PcCabinetLayoutListPageDTO` |
| `pcCabinetLayoutListPageDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `pcCabinetLayoutListPageDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `pcCabinetLayoutListPageDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `pcCabinetLayoutListPageDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `pcCabinetLayoutListPageDTO.startTime` | 开始时间 | `` | `false` | `string` | `` |
| `pcCabinetLayoutListPageDTO.endTime` | 结束时间 | `` | `false` | `string` | `` |
| `pcCabinetLayoutListPageDTO.layOutStatus` | 订单状态 1、待布放，2、待验收，3、已驳回，4、已验收 | `` | `false` | `integer(int32)` | `` |
| `pcCabinetLayoutListPageDTO.cityCode` | 城市归属 | `` | `false` | `string` | `` |
| `pcCabinetLayoutListPageDTO.orderNo` | 单据编号 | `` | `false` | `string` | `` |
| `pcCabinetLayoutListPageDTO.layoutAddress` | 布放地址 | `` | `false` | `string` | `` |
| `pcCabinetLayoutListPageDTO.contacts` | 联系人 | `` | `false` | `string` | `` |
| `pcCabinetLayoutListPageDTO.contactNumber` | 联系电话 | `` | `false` | `string` | `` |

## 06.字典接口 / 布放明细详情

- Method: `GET`
- Path: `/mx-ce-system/api/omsCabinetLayoutController/getCabinetLayoutDetail`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/omsCabinetLayoutController/getCabinetLayoutDetail`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `layoutId` | 布放单ID | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 查看布放工单信息-订单详情

- Method: `GET`
- Path: `/mx-ce-system/api/omsCabinetLayoutController/getCabinetLayoutInfo`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/omsCabinetLayoutController/getCabinetLayoutInfo`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `layoutId` | 布放单ID | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 电柜布放单分页列表

- Method: `POST`
- Path: `/mx-ce-system/api/omsCabinetLayoutController/getCabinetLayoutList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/omsCabinetLayoutController/getCabinetLayoutList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetLayoutListPageDTO` | 电柜布放列表分页筛选条件 | `body` | `true` | `CabinetLayoutListPageDTO` | `CabinetLayoutListPageDTO` |
| `cabinetLayoutListPageDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `cabinetLayoutListPageDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `cabinetLayoutListPageDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `cabinetLayoutListPageDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `cabinetLayoutListPageDTO.startTime` | 开始时间 | `` | `false` | `string` | `` |
| `cabinetLayoutListPageDTO.endTime` | 结束时间 | `` | `false` | `string` | `` |
| `cabinetLayoutListPageDTO.layOutStatus` | 订单状态 1、待布放，2、待验收，3、已驳回，4、已验收 | `` | `false` | `integer(int32)` | `` |
| `cabinetLayoutListPageDTO.cityCode` | 城市归属 | `` | `false` | `string` | `` |
| `cabinetLayoutListPageDTO.keyword` | 网点编号、名称、地址等关键字，中间不能有空格 | `` | `false` | `string` | `` |

## 06.字典接口 / 驳回信息分页列表

- Method: `POST`
- Path: `/mx-ce-system/api/omsCabinetLayoutController/getCabinetLayoutRejectList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/omsCabinetLayoutController/getCabinetLayoutRejectList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetLayoutRejectPageDTO` | 电柜布放驳回分页筛选条件 | `body` | `true` | `CabinetLayoutRejectPageDTO` | `CabinetLayoutRejectPageDTO` |
| `cabinetLayoutRejectPageDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `cabinetLayoutRejectPageDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `cabinetLayoutRejectPageDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `cabinetLayoutRejectPageDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `cabinetLayoutRejectPageDTO.layoutId` | 布放单ID | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / PC端-电柜布放单分页

- Method: `POST`
- Path: `/mx-ce-system/api/omsCabinetLayoutController/pcCabinetLayoutList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/omsCabinetLayoutController/pcCabinetLayoutList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `pcCabinetLayoutListPageDTO` | PC端-电柜布放列表分页筛选条件 | `body` | `true` | `PcCabinetLayoutListPageDTO` | `PcCabinetLayoutListPageDTO` |
| `pcCabinetLayoutListPageDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `pcCabinetLayoutListPageDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `pcCabinetLayoutListPageDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `pcCabinetLayoutListPageDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `pcCabinetLayoutListPageDTO.startTime` | 开始时间 | `` | `false` | `string` | `` |
| `pcCabinetLayoutListPageDTO.endTime` | 结束时间 | `` | `false` | `string` | `` |
| `pcCabinetLayoutListPageDTO.layOutStatus` | 订单状态 1、待布放，2、待验收，3、已驳回，4、已验收 | `` | `false` | `integer(int32)` | `` |
| `pcCabinetLayoutListPageDTO.cityCode` | 城市归属 | `` | `false` | `string` | `` |
| `pcCabinetLayoutListPageDTO.orderNo` | 单据编号 | `` | `false` | `string` | `` |
| `pcCabinetLayoutListPageDTO.layoutAddress` | 布放地址 | `` | `false` | `string` | `` |
| `pcCabinetLayoutListPageDTO.contacts` | 联系人 | `` | `false` | `string` | `` |
| `pcCabinetLayoutListPageDTO.contactNumber` | 联系电话 | `` | `false` | `string` | `` |

## 06.字典接口 / 布放提交

- Method: `PUT`
- Path: `/mx-ce-system/api/omsCabinetLayoutController/submitCabinetLayoutDetail`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/omsCabinetLayoutController/submitCabinetLayoutDetail`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetLayoutDetailSubmitDTO` | 电柜布放明细提交数据 | `body` | `true` | `CabinetLayoutDetailSubmitDTO` | `CabinetLayoutDetailSubmitDTO` |
| `cabinetLayoutDetailSubmitDTO.rejectId` | 驳回处理ID | `` | `false` | `integer(int64)` | `` |
| `cabinetLayoutDetailSubmitDTO.cabinetInfoList` | 换电柜信息 | `` | `true` | `array` | `cabinetInfo` |
| `cabinetLayoutDetailSubmitDTO.cabinetInfoList.cbId` | 电柜ID | `` | `true` | `string` | `` |
| `cabinetLayoutDetailSubmitDTO.cabinetInfoList.netName` | 网点名称 | `` | `true` | `string` | `` |
| `cabinetLayoutDetailSubmitDTO.layoutId` | 布放单ID | `` | `true` | `integer(int64)` | `` |
| `cabinetLayoutDetailSubmitDTO.cabinetAddress` | 详细地址 | `` | `true` | `string` | `` |
| `cabinetLayoutDetailSubmitDTO.layoutPosition` | 地址经纬度,逗号分隔 | `` | `true` | `string` | `` |
| `cabinetLayoutDetailSubmitDTO.layoutImages` | 电柜布放图 | `` | `true` | `string` | `` |

## 06.字典接口 / 编辑布放单

- Method: `POST`
- Path: `/mx-ce-system/api/omsCabinetLayoutController/updateCabinetLayout`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/omsCabinetLayoutController/updateCabinetLayout`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetLayoutSubmitDTO` | 电柜布放单提交数据 | `body` | `true` | `CabinetLayoutSubmitDTO` | `CabinetLayoutSubmitDTO` |
| `cabinetLayoutSubmitDTO.layoutId` | 布放单ID | `` | `false` | `integer(int64)` | `` |
| `cabinetLayoutSubmitDTO.netName` | 网点名称 | `` | `true` | `string` | `` |
| `cabinetLayoutSubmitDTO.cityCode` | 布放城市编码 | `` | `true` | `string` | `` |
| `cabinetLayoutSubmitDTO.deploymentQuantity` | 布放数量（台） | `` | `true` | `integer(int32)` | `` |
| `cabinetLayoutSubmitDTO.cbCompanyId` | 布放电柜品牌ID | `` | `false` | `integer(int32)` | `` |
| `cabinetLayoutSubmitDTO.contacts` | 联系人 | `` | `false` | `string` | `` |
| `cabinetLayoutSubmitDTO.contactNumber` | 联系电话 | `` | `false` | `string` | `` |
| `cabinetLayoutSubmitDTO.layoutAddress` | 布放地址 | `` | `true` | `string` | `` |
| `cabinetLayoutSubmitDTO.positionImages` | 布放位置图 | `` | `true` | `string` | `` |

## 06.字典接口 / 修改容量识别

- Method: `PATCH`
- Path: `/mx-ce-system/api/cabinet/{cbId}/capacityEnable`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/{cbId}/capacityEnable`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `capacityEnable` | 容量识别(1:打开;0:关闭) | `query` | `true` | `integer(int32)` | `` |
| `cbId` | 电柜ID | `path` | `true` | `string` | `` |

## 06.字典接口 / 电池满电阀值

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/adjustBatteryFull`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/adjustBatteryFull`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `adjustCabinetBatteryFullDTO` | 调整电柜电池满电阀值 | `body` | `true` | `AdjustCabinetBatteryFullDTO` | `AdjustCabinetBatteryFullDTO` |
| `adjustCabinetBatteryFullDTO.devId` | 设备编号 | `` | `true` | `string` | `` |
| `adjustCabinetBatteryFullDTO.fullBatteryStd` | 满电阀值 | `` | `true` | `integer(int32)` | `` |
| `adjustCabinetBatteryFullDTO.password` | 控制密码 6位数字,默认123456 | `` | `true` | `string` | `` |

## 06.字典接口 / 调整音量大小

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/adjustVolume`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/adjustVolume`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `adjustCabinetVolumeDTO` | 调整电柜音量 | `body` | `true` | `AdjustCabinetVolumeDTO` | `AdjustCabinetVolumeDTO` |
| `adjustCabinetVolumeDTO.devId` | 设备编号 | `` | `true` | `string` | `` |
| `adjustCabinetVolumeDTO.volume` | 音量大小 | `` | `true` | `integer(int32)` | `` |
| `adjustCabinetVolumeDTO.password` | 密码 | `` | `true` | `string` | `` |

## 06.字典接口 / 批量调整电柜满电阀值

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/batchAdjustBatteryFull`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/batchAdjustBatteryFull`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `devIds` |  | `query` | `true` | `array` | `string` |
| `fullBatteryStd` |  | `query` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 告警数据

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/cabinetAlarmData`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/cabinetAlarmData`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetAlarmDataDTO` | 告警数据列表分页 | `body` | `true` | `CabinetAlarmDataDTO` | `CabinetAlarmDataDTO` |
| `cabinetAlarmDataDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `cabinetAlarmDataDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `cabinetAlarmDataDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `cabinetAlarmDataDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `cabinetAlarmDataDTO.cabinetCode` | 电柜编号 | `` | `true` | `string` | `` |

## 06.字典接口 / 电柜资产

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/cabinetAssets`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/cabinetAssets`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cityCode` | 所属城市 | `query` | `false` | `string` | `` |

## 06.字典接口 / 电柜详情

- Method: `GET`
- Path: `/mx-ce-system/api/cabinet/cabinetDetail`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/cabinetDetail`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetCode` | 电柜编号 | `query` | `true` | `string` | `` |

## 06.字典接口 / PC端-换电柜详情-资产地图

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/cabinetDetailAssetMap`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/cabinetDetailAssetMap`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetCode` | 电柜编号 | `query` | `true` | `string` | `` |

## 06.字典接口 / 柜仓信息

- Method: `GET`
- Path: `/mx-ce-system/api/cabinet/cabinetDoorInfo`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/cabinetDoorInfo`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetCode` | 电柜编号 | `query` | `true` | `string` | `` |

## 06.字典接口 / 电柜仓门型号数量

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/cabinetDoorModel`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/cabinetDoorModel`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cityCode` | 所属城市 | `query` | `false` | `string` | `` |

## 06.字典接口 / 柜门实时性能

- Method: `GET`
- Path: `/mx-ce-system/api/cabinet/cabinetDoorPerformance`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/cabinetDoorPerformance`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetCode` | 电柜编号 | `query` | `true` | `string` | `` |
| `doorId` | 电柜门编号 | `query` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 电柜仓位数据

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/cabinetDoorPosition`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/cabinetDoorPosition`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cityCode` | 所属城市 | `query` | `false` | `string` | `` |

## 06.字典接口 / 移动端柜效查询

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/cabinetEffect`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/cabinetEffect`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetEffectPageDTO` | 柜效分页查询条件 | `body` | `true` | `CabinetEffectPageDTO` | `CabinetEffectPageDTO` |
| `cabinetEffectPageDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `cabinetEffectPageDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `cabinetEffectPageDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `cabinetEffectPageDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `cabinetEffectPageDTO.cabinetCode` | 柜子编号,模糊查询 | `` | `false` | `string` | `` |
| `cabinetEffectPageDTO.date` | 日期 1=今日 2=昨日 3=近七天 4=本月 5=上月 | `` | `false` | `integer(int32)` | `` |
| `cabinetEffectPageDTO.onlineStatus` | 在线状态,1、在线，0、离线 | `` | `false` | `integer(int32)` | `` |
| `cabinetEffectPageDTO.businessStatus` | 业务状态,1、库存中，2、运营中，4、退货中，5、报废中，6、维修中，7、告警中 | `` | `false` | `integer(int32)` | `` |
| `cabinetEffectPageDTO.cityCode` | 城市归属 | `` | `false` | `string` | `` |
| `cabinetEffectPageDTO.changeCountRange` | 换电次数范围,1、<= 100，2、100-500，3、>=500 移动端筛选条件 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 移动端-柜效查询换电总次合计

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/cabinetEffectChangeTotal`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/cabinetEffectChangeTotal`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetEffectPageDTO` | 柜效分页查询条件 | `body` | `true` | `CabinetEffectPageDTO` | `CabinetEffectPageDTO` |
| `cabinetEffectPageDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `cabinetEffectPageDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `cabinetEffectPageDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `cabinetEffectPageDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `cabinetEffectPageDTO.cabinetCode` | 柜子编号,模糊查询 | `` | `false` | `string` | `` |
| `cabinetEffectPageDTO.date` | 日期 1=今日 2=昨日 3=近七天 4=本月 5=上月 | `` | `false` | `integer(int32)` | `` |
| `cabinetEffectPageDTO.onlineStatus` | 在线状态,1、在线，0、离线 | `` | `false` | `integer(int32)` | `` |
| `cabinetEffectPageDTO.businessStatus` | 业务状态,1、库存中，2、运营中，4、退货中，5、报废中，6、维修中，7、告警中 | `` | `false` | `integer(int32)` | `` |
| `cabinetEffectPageDTO.cityCode` | 城市归属 | `` | `false` | `string` | `` |
| `cabinetEffectPageDTO.changeCountRange` | 换电次数范围,1、<= 100，2、100-500，3、>=500 移动端筛选条件 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 电柜列表

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/cabinetList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/cabinetList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetListPageDTO` | 电柜列表分页筛选条件 | `body` | `true` | `CabinetListPageDTO` | `CabinetListPageDTO` |
| `cabinetListPageDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `cabinetListPageDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `cabinetListPageDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `cabinetListPageDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `cabinetListPageDTO.longitude` | 经度,计算与电柜距离 | `` | `false` | `string` | `` |
| `cabinetListPageDTO.latitude` | 纬度,计算与电柜距离 | `` | `false` | `string` | `` |
| `cabinetListPageDTO.keywords` | 电柜名称/编号，关键字模糊查询 | `` | `false` | `string` | `` |
| `cabinetListPageDTO.onlineStatus` | 在线状态,1、在线，0、离线 | `` | `false` | `integer(int32)` | `` |
| `cabinetListPageDTO.businessStatus` | 业务状态,1、库存中，2、运营中，5、报废中，6、维修中 | `` | `false` | `integer(int32)` | `` |
| `cabinetListPageDTO.cityCode` | 城市归属 | `` | `false` | `string` | `` |
| `cabinetListPageDTO.emptyCount` | 空仓数 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / PC-地图位置-换电柜实时位置详情

- Method: `GET`
- Path: `/mx-ce-system/api/cabinet/cabinetMapDetail`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/cabinetMapDetail`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetCode` | 电柜编号 | `query` | `true` | `string` | `` |

## 06.字典接口 / 移动端-电柜操作日志

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/cabinetOperationLog`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/cabinetOperationLog`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetOperationLogDTO` | 电柜操作日志列表分页 | `body` | `true` | `CabinetOperationLogDTO` | `CabinetOperationLogDTO` |
| `cabinetOperationLogDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `cabinetOperationLogDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `cabinetOperationLogDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `cabinetOperationLogDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `cabinetOperationLogDTO.cabinetCode` | 电柜编号 | `` | `true` | `string` | `` |

## 06.字典接口 / 导出换电柜告警信息

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/exportCabinetAlarmData`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/exportCabinetAlarmData`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetAlarmDataDTO` | 告警数据列表分页 | `body` | `true` | `CabinetAlarmDataDTO` | `CabinetAlarmDataDTO` |
| `cabinetAlarmDataDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `cabinetAlarmDataDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `cabinetAlarmDataDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `cabinetAlarmDataDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `cabinetAlarmDataDTO.cabinetCode` | 电柜编号 | `` | `true` | `string` | `` |

## 06.字典接口 / 柜仓信息-导出表格

- Method: `GET`
- Path: `/mx-ce-system/api/cabinet/exportCabinetBatterySn`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/exportCabinetBatterySn`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetCode` | 电柜编号 | `query` | `true` | `string` | `` |

## 06.字典接口 / 导出PC端柜效查询

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/exportPcCabinetEffect`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/exportPcCabinetEffect`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `pCCabinetEffectPageDTO` | 电柜柜效分页查询条件 | `body` | `true` | `PCCabinetEffectPageDTO` | `PCCabinetEffectPageDTO` |
| `pCCabinetEffectPageDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `pCCabinetEffectPageDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `pCCabinetEffectPageDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `pCCabinetEffectPageDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `pCCabinetEffectPageDTO.cabinetCode` | 柜子编号,模糊查询 | `` | `false` | `string` | `` |
| `pCCabinetEffectPageDTO.month` | 月份 | `` | `false` | `string` | `` |
| `pCCabinetEffectPageDTO.onlineStatus` | 在线状态,1、在线，0、离线 | `` | `false` | `integer(int32)` | `` |
| `pCCabinetEffectPageDTO.businessStatus` | 业务状态,1、库存中，2、运营中，4、退货中，5、报废中，6、维修中，7、告警中 | `` | `false` | `integer(int32)` | `` |
| `pCCabinetEffectPageDTO.cityCode` | 城市归属 | `` | `false` | `string` | `` |
| `pCCabinetEffectPageDTO.startTime` | 开始时间 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `pCCabinetEffectPageDTO.endTime` | 结束时间 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |

## 06.字典接口 / 导出PC端柜效查询详情-换电查询

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/exportPcCabinetEffectDetail`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/exportPcCabinetEffectDetail`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetEffectDetailPageDTO` | 柜效详情分页查询 | `body` | `true` | `CabinetEffectDetailPageDTO` | `CabinetEffectDetailPageDTO` |
| `cabinetEffectDetailPageDTO.month` | 月份 | `` | `false` | `string` | `` |
| `cabinetEffectDetailPageDTO.cabinetCode` | 换电柜编号 | `` | `false` | `string` | `` |

## 06.字典接口 / 导出PC端柜效查询-用电查询

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/exportPcCabinetEffectDetailByPower`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/exportPcCabinetEffectDetailByPower`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetEffectDetailPageDTO` | 柜效详情分页查询 | `body` | `true` | `CabinetEffectDetailPageDTO` | `CabinetEffectDetailPageDTO` |
| `cabinetEffectDetailPageDTO.month` | 月份 | `` | `false` | `string` | `` |
| `cabinetEffectDetailPageDTO.cabinetCode` | 换电柜编号 | `` | `false` | `string` | `` |

## 06.字典接口 / 操控电柜禁启用

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/optCabinetStatus`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/optCabinetStatus`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `optCabinetStatusDTO` | 操作柜体状态 | `body` | `true` | `OptCabinetStatusDTO` | `OptCabinetStatusDTO` |
| `optCabinetStatusDTO.devId` | 设备编号 | `` | `true` | `string` | `` |
| `optCabinetStatusDTO.optStatus` | 禁启用 0、启用 1、禁用 | `` | `true` | `integer(int32)` | `` |
| `optCabinetStatusDTO.password` | 密码 | `` | `true` | `string` | `` |

## 06.字典接口 / PC端-换电柜-资产地图

- Method: `GET`
- Path: `/mx-ce-system/api/cabinet/pcCabinetAssetMap`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/pcCabinetAssetMap`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / PC端-换电柜列表-业务状态下拉列表

- Method: `GET`
- Path: `/mx-ce-system/api/cabinet/pcCabinetBusinessStatusList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/pcCabinetBusinessStatusList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / PC端-换电柜编辑修改

- Method: `PUT`
- Path: `/mx-ce-system/api/cabinet/pcCabinetEdit`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/pcCabinetEdit`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `pcCabinetEditDTO` | PC端换电柜编辑 | `body` | `true` | `PcCabinetEditDTO` | `PcCabinetEditDTO` |
| `pcCabinetEditDTO.id` | 换电柜ID | `` | `true` | `integer(int64)` | `` |
| `pcCabinetEditDTO.cbId` | 换电柜编号 | `` | `true` | `string` | `` |
| `pcCabinetEditDTO.cbName` | 换电柜名称 | `` | `true` | `string` | `` |
| `pcCabinetEditDTO.cityCode` | 城市归属 | `` | `true` | `string` | `` |
| `pcCabinetEditDTO.cbAddress` | 换电柜地址 | `` | `true` | `string` | `` |
| `pcCabinetEditDTO.cbLongitude` | 换电柜经度 | `` | `true` | `string` | `` |
| `pcCabinetEditDTO.cbLatitude` | 换电柜纬度 | `` | `true` | `string` | `` |

## 06.字典接口 / PC端柜效查询

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/pcCabinetEffect`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/pcCabinetEffect`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `pCCabinetEffectPageDTO` | 电柜柜效分页查询条件 | `body` | `true` | `PCCabinetEffectPageDTO` | `PCCabinetEffectPageDTO` |
| `pCCabinetEffectPageDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `pCCabinetEffectPageDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `pCCabinetEffectPageDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `pCCabinetEffectPageDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `pCCabinetEffectPageDTO.cabinetCode` | 柜子编号,模糊查询 | `` | `false` | `string` | `` |
| `pCCabinetEffectPageDTO.month` | 月份 | `` | `false` | `string` | `` |
| `pCCabinetEffectPageDTO.onlineStatus` | 在线状态,1、在线，0、离线 | `` | `false` | `integer(int32)` | `` |
| `pCCabinetEffectPageDTO.businessStatus` | 业务状态,1、库存中，2、运营中，4、退货中，5、报废中，6、维修中，7、告警中 | `` | `false` | `integer(int32)` | `` |
| `pCCabinetEffectPageDTO.cityCode` | 城市归属 | `` | `false` | `string` | `` |
| `pCCabinetEffectPageDTO.startTime` | 开始时间 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `pCCabinetEffectPageDTO.endTime` | 结束时间 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |

## 06.字典接口 / PC-柜效查询柜效详情列表-换电查询

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/PcCabinetEffectDetail`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/PcCabinetEffectDetail`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetEffectDetailPageDTO` | 柜效详情分页查询 | `body` | `true` | `CabinetEffectDetailPageDTO` | `CabinetEffectDetailPageDTO` |
| `cabinetEffectDetailPageDTO.month` | 月份 | `` | `false` | `string` | `` |
| `cabinetEffectDetailPageDTO.cabinetCode` | 换电柜编号 | `` | `false` | `string` | `` |

## 06.字典接口 / PC-柜效查询柜效详情列表-用电查询

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/PcCabinetEffectDetailByPower`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/PcCabinetEffectDetailByPower`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetEffectDetailPageDTO` | 柜效详情分页查询 | `body` | `true` | `CabinetEffectDetailPageDTO` | `CabinetEffectDetailPageDTO` |
| `cabinetEffectDetailPageDTO.month` | 月份 | `` | `false` | `string` | `` |
| `cabinetEffectDetailPageDTO.cabinetCode` | 换电柜编号 | `` | `false` | `string` | `` |

## 06.字典接口 / PC端-换电柜图片修改

- Method: `PUT`
- Path: `/mx-ce-system/api/cabinet/pcCabinetImageEdit`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/pcCabinetImageEdit`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `pcCabinetImageEditDTO` | PC端换电柜图片编辑 | `body` | `true` | `PcCabinetImageEditDTO` | `PcCabinetImageEditDTO` |
| `pcCabinetImageEditDTO.id` | 换电柜ID | `` | `true` | `integer(int64)` | `` |
| `pcCabinetImageEditDTO.img` | 图片,http、https://开头且不能超过三张图片，多张图片用逗号隔开 | `` | `true` | `string` | `` |

## 06.字典接口 / PC端-电柜列表

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/pcCabinetList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/pcCabinetList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `pcCabinetListPageDTO` | PC端电柜列表分页筛选条件 | `body` | `true` | `PcCabinetListPageDTO` | `PcCabinetListPageDTO` |
| `pcCabinetListPageDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `pcCabinetListPageDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `pcCabinetListPageDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `pcCabinetListPageDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `pcCabinetListPageDTO.total` |  | `` | `false` | `integer(int64)` | `` |
| `pcCabinetListPageDTO.caId` | 电柜编号，模糊查询 | `` | `false` | `string` | `` |
| `pcCabinetListPageDTO.netName` | 网点名称，模糊查询 | `` | `false` | `string` | `` |
| `pcCabinetListPageDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |
| `pcCabinetListPageDTO.snCode` | 电池编号，模糊查询 | `` | `false` | `string` | `` |
| `pcCabinetListPageDTO.brandId` | 品牌 | `` | `false` | `integer(int32)` | `` |
| `pcCabinetListPageDTO.modelId` | 型号 | `` | `false` | `integer(int32)` | `` |
| `pcCabinetListPageDTO.onlineStatus` | 在线状态,可用值:0=离线,1=在线 | `` | `false` | `string(integer(int32))` | `` |
| `pcCabinetListPageDTO.businessStatus` | 业务状态,可用值:1=库存,2=运营,3=换货,4=退货,5=报废,6=维修,7=告警 | `` | `false` | `string(integer(int32))` | `` |
| `pcCabinetListPageDTO.protocol` | 电柜协议，保留字段 | `` | `false` | `integer(int32)` | `` |
| `pcCabinetListPageDTO.simNo` | CCID，模糊查询 | `` | `false` | `string` | `` |
| `pcCabinetListPageDTO.exceptionStatus` | 换电柜异常：1=市电/空开故障、2=待充电、3=仓异常、4=禁用 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / PC端-换电柜导出表格

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/pcCabinetList_export`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/pcCabinetList_export`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `pcCabinetListPageDTO` | PC端电柜列表分页筛选条件 | `body` | `true` | `PcCabinetListPageDTO` | `PcCabinetListPageDTO` |
| `pcCabinetListPageDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `pcCabinetListPageDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `pcCabinetListPageDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `pcCabinetListPageDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `pcCabinetListPageDTO.total` |  | `` | `false` | `integer(int64)` | `` |
| `pcCabinetListPageDTO.caId` | 电柜编号，模糊查询 | `` | `false` | `string` | `` |
| `pcCabinetListPageDTO.netName` | 网点名称，模糊查询 | `` | `false` | `string` | `` |
| `pcCabinetListPageDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |
| `pcCabinetListPageDTO.snCode` | 电池编号，模糊查询 | `` | `false` | `string` | `` |
| `pcCabinetListPageDTO.brandId` | 品牌 | `` | `false` | `integer(int32)` | `` |
| `pcCabinetListPageDTO.modelId` | 型号 | `` | `false` | `integer(int32)` | `` |
| `pcCabinetListPageDTO.onlineStatus` | 在线状态,可用值:0=离线,1=在线 | `` | `false` | `string(integer(int32))` | `` |
| `pcCabinetListPageDTO.businessStatus` | 业务状态,可用值:1=库存,2=运营,3=换货,4=退货,5=报废,6=维修,7=告警 | `` | `false` | `string(integer(int32))` | `` |
| `pcCabinetListPageDTO.protocol` | 电柜协议，保留字段 | `` | `false` | `integer(int32)` | `` |
| `pcCabinetListPageDTO.simNo` | CCID，模糊查询 | `` | `false` | `string` | `` |
| `pcCabinetListPageDTO.exceptionStatus` | 换电柜异常：1=市电/空开故障、2=待充电、3=仓异常、4=禁用 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / PC端-换电柜列表-在线状态下拉列表

- Method: `GET`
- Path: `/mx-ce-system/api/cabinet/pcCabinetOnlineStatusList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/pcCabinetOnlineStatusList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / PC端-电柜详情-操作日志

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/pcCabinetOperationLog`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/pcCabinetOperationLog`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `pcCabinetOperationLogDTO` | 电柜操作日志筛选分页 | `body` | `true` | `PcCabinetOperationLogDTO` | `PcCabinetOperationLogDTO` |
| `pcCabinetOperationLogDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `pcCabinetOperationLogDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `pcCabinetOperationLogDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `pcCabinetOperationLogDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `pcCabinetOperationLogDTO.cbId` | 电柜编号 | `` | `true` | `string` | `` |
| `pcCabinetOperationLogDTO.snCode` | 电池编号 | `` | `false` | `string` | `` |
| `pcCabinetOperationLogDTO.mobile` | 手机号，完整手机号 | `` | `false` | `string` | `` |
| `pcCabinetOperationLogDTO.startTime` | 开始日期 | `` | `false` | `string` | `` |
| `pcCabinetOperationLogDTO.endTime` | 结束日期 | `` | `false` | `string` | `` |

## 06.字典接口 / PC端-导出操作日志

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/pcCabinetOperationLog_export`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/pcCabinetOperationLog_export`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `pcCabinetOperationLogDTO` | 电柜操作日志筛选分页 | `body` | `true` | `PcCabinetOperationLogDTO` | `PcCabinetOperationLogDTO` |
| `pcCabinetOperationLogDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `pcCabinetOperationLogDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `pcCabinetOperationLogDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `pcCabinetOperationLogDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `pcCabinetOperationLogDTO.cbId` | 电柜编号 | `` | `true` | `string` | `` |
| `pcCabinetOperationLogDTO.snCode` | 电池编号 | `` | `false` | `string` | `` |
| `pcCabinetOperationLogDTO.mobile` | 手机号，完整手机号 | `` | `false` | `string` | `` |
| `pcCabinetOperationLogDTO.startTime` | 开始日期 | `` | `false` | `string` | `` |
| `pcCabinetOperationLogDTO.endTime` | 结束日期 | `` | `false` | `string` | `` |

## 06.字典接口 / PC端-换电柜二维码

- Method: `GET`
- Path: `/mx-ce-system/api/cabinet/pcCabinetQrCode`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/pcCabinetQrCode`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetCode` |  | `query` | `true` | `string` | `` |

## 06.字典接口 / PC端-在柜电池导出

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/pcInCabinetBatteryExport`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/pcInCabinetBatteryExport`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `pcCabinetListPageDTO` | PC端电柜列表分页筛选条件 | `body` | `true` | `PcCabinetListPageDTO` | `PcCabinetListPageDTO` |
| `pcCabinetListPageDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `pcCabinetListPageDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `pcCabinetListPageDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `pcCabinetListPageDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `pcCabinetListPageDTO.total` |  | `` | `false` | `integer(int64)` | `` |
| `pcCabinetListPageDTO.caId` | 电柜编号，模糊查询 | `` | `false` | `string` | `` |
| `pcCabinetListPageDTO.netName` | 网点名称，模糊查询 | `` | `false` | `string` | `` |
| `pcCabinetListPageDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |
| `pcCabinetListPageDTO.snCode` | 电池编号，模糊查询 | `` | `false` | `string` | `` |
| `pcCabinetListPageDTO.brandId` | 品牌 | `` | `false` | `integer(int32)` | `` |
| `pcCabinetListPageDTO.modelId` | 型号 | `` | `false` | `integer(int32)` | `` |
| `pcCabinetListPageDTO.onlineStatus` | 在线状态,可用值:0=离线,1=在线 | `` | `false` | `string(integer(int32))` | `` |
| `pcCabinetListPageDTO.businessStatus` | 业务状态,可用值:1=库存,2=运营,3=换货,4=退货,5=报废,6=维修,7=告警 | `` | `false` | `string(integer(int32))` | `` |
| `pcCabinetListPageDTO.protocol` | 电柜协议，保留字段 | `` | `false` | `integer(int32)` | `` |
| `pcCabinetListPageDTO.simNo` | CCID，模糊查询 | `` | `false` | `string` | `` |
| `pcCabinetListPageDTO.exceptionStatus` | 换电柜异常：1=市电/空开故障、2=待充电、3=仓异常、4=禁用 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 远程重启

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/remoteRestart`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/remoteRestart`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `remoteRestartCabinetDTO` | 远程重启 | `body` | `true` | `RemoteRestartCabinetDTO` | `RemoteRestartCabinetDTO` |
| `remoteRestartCabinetDTO.devId` | 设备编号 | `` | `true` | `string` | `` |
| `remoteRestartCabinetDTO.option` | 设置选项,1=普通重启,2=状态清空并重启 | `` | `false` | `integer(int32)` | `` |
| `remoteRestartCabinetDTO.password` | 控制密码 6位数字,默认123456 | `` | `true` | `string` | `` |

## 06.字典接口 / 远程电柜上报地址

- Method: `POST`
- Path: `/mx-ce-system/api/cabinet/reportCabinetAddr`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/cabinet/reportCabinetAddr`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `reportCabinetAddrDTO` | 修改电柜上报地址 | `body` | `true` | `ReportCabinetAddrDTO` | `ReportCabinetAddrDTO` |
| `reportCabinetAddrDTO.devId` | 设备编号 | `` | `true` | `string` | `` |
| `reportCabinetAddrDTO.password` | 密码 | `` | `true` | `string` | `` |
| `reportCabinetAddrDTO.domainName` | 域名 | `` | `true` | `string` | `` |
| `reportCabinetAddrDTO.port` | 端口 | `` | `true` | `integer(int32)` | `` |
| `reportCabinetAddrDTO.remark` | 备注 | `` | `false` | `string` | `` |

## 06.字典接口 / 获取短信验证码,测试用

- Method: `GET`
- Path: `/mx-ce-system/api/getSmsCode/{mobile}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/getSmsCode/{mobile}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `mobile` |  | `path` | `true` | `string` | `` |

## 06.字典接口 / 加密手机短信验证码

- Method: `POST`
- Path: `/mx-ce-system/api/sendSmsCode`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/sendSmsCode`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `apiSendSmsDTO` | ApiSendSmsDTO | `body` | `true` | `ApiSendSmsDTO` | `ApiSendSmsDTO` |
| `apiSendSmsDTO.mobile` | 手机号码(需加密字段) | `` | `true` | `string` | `` |

## 06.字典接口 / 验证手机验证码

- Method: `GET`
- Path: `/mx-ce-system/api/validSmsCode/{mobile}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/validSmsCode/{mobile}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `mobile` |  | `path` | `true` | `string` | `` |
| `smsCode` | 手机验证码 | `query` | `true` | `string` | `` |

## 06.字典接口 / 电池品牌列表

- Method: `GET`
- Path: `/mx-ce-system/api/supplierManagement/batteryBrandList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/supplierManagement/batteryBrandList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 所有电池型号列表

- Method: `GET`
- Path: `/mx-ce-system/api/supplierManagement/batteryModelALL`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/supplierManagement/batteryModelALL`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 电池型号列表

- Method: `GET`
- Path: `/mx-ce-system/api/supplierManagement/batteryModelList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/supplierManagement/batteryModelList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `companyId` | 品牌ID | `query` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 电池供应商详情

- Method: `GET`
- Path: `/mx-ce-system/api/supplierManagement/batterySupplier`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/supplierManagement/batterySupplier`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 型号ID | `query` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 新建电池供应商

- Method: `POST`
- Path: `/mx-ce-system/api/supplierManagement/batterySupplier`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/supplierManagement/batterySupplier`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `batterySupplierDTO` | 入参实体类 | `body` | `true` | `batterySupplierDTO` | `batterySupplierDTO` |
| `batterySupplierDTO.id` | ID | `` | `false` | `integer(int32)` | `` |
| `batterySupplierDTO.brandName` | 品牌名称,不能存在空格 | `` | `false` | `string` | `` |
| `batterySupplierDTO.ratedVoltage` | 额定电压 | `` | `true` | `integer(int32)` | `` |
| `batterySupplierDTO.ratedCapacity` | 额定电容 | `` | `false` | `integer(int32)` | `` |
| `batterySupplierDTO.model` | 型号 | `` | `true` | `string` | `` |
| `batterySupplierDTO.batterySize` | 电池尺寸 | `` | `false` | `string` | `` |
| `batterySupplierDTO.batteryWeight` | 电池重量 | `` | `false` | `string` | `` |
| `batterySupplierDTO.maxEstimatedMileage` | 最大里程Km,精准到两位小数，大于零且是正数 | `` | `true` | `number` | `` |
| `batterySupplierDTO.productPicture` | 产品图片 | `` | `false` | `string` | `` |

## 06.字典接口 / 编辑电池供应商

- Method: `PUT`
- Path: `/mx-ce-system/api/supplierManagement/batterySupplier`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/supplierManagement/batterySupplier`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `batterySupplierDTO` | 入参实体类 | `body` | `true` | `batterySupplierDTO` | `batterySupplierDTO` |
| `batterySupplierDTO.id` | ID | `` | `false` | `integer(int32)` | `` |
| `batterySupplierDTO.brandName` | 品牌名称,不能存在空格 | `` | `false` | `string` | `` |
| `batterySupplierDTO.ratedVoltage` | 额定电压 | `` | `true` | `integer(int32)` | `` |
| `batterySupplierDTO.ratedCapacity` | 额定电容 | `` | `false` | `integer(int32)` | `` |
| `batterySupplierDTO.model` | 型号 | `` | `true` | `string` | `` |
| `batterySupplierDTO.batterySize` | 电池尺寸 | `` | `false` | `string` | `` |
| `batterySupplierDTO.batteryWeight` | 电池重量 | `` | `false` | `string` | `` |
| `batterySupplierDTO.maxEstimatedMileage` | 最大里程Km,精准到两位小数，大于零且是正数 | `` | `true` | `number` | `` |
| `batterySupplierDTO.productPicture` | 产品图片 | `` | `false` | `string` | `` |

## 06.字典接口 / 删除电池供应商

- Method: `DELETE`
- Path: `/mx-ce-system/api/supplierManagement/batterySupplier`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/supplierManagement/batterySupplier`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 型号ID | `query` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 电池供应商列表

- Method: `POST`
- Path: `/mx-ce-system/api/supplierManagement/batterySupplierList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/supplierManagement/batterySupplierList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `batterySupplierListDTO` | 入参实体类 | `body` | `true` | `BatterySupplierListDTO` | `BatterySupplierListDTO` |
| `batterySupplierListDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `batterySupplierListDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `batterySupplierListDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `batterySupplierListDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `batterySupplierListDTO.companyId` | 品牌ID | `` | `false` | `integer(int32)` | `` |
| `batterySupplierListDTO.typeId` | 型号ID | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 机柜品牌列表

- Method: `GET`
- Path: `/mx-ce-system/api/supplierManagement/cabinetBrandList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/supplierManagement/cabinetBrandList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 机柜型号列表

- Method: `GET`
- Path: `/mx-ce-system/api/supplierManagement/cabinetModelList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/supplierManagement/cabinetModelList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `companyId` | 品牌ID | `query` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 新增电柜供应商协议下拉选择

- Method: `GET`
- Path: `/mx-ce-system/api/supplierManagement/cabinetProtocolList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/supplierManagement/cabinetProtocolList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 机柜供应商详情

- Method: `GET`
- Path: `/mx-ce-system/api/supplierManagement/cabinetSupplier`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/supplierManagement/cabinetSupplier`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 型号ID | `query` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 新增机柜供应商

- Method: `POST`
- Path: `/mx-ce-system/api/supplierManagement/cabinetSupplier`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/supplierManagement/cabinetSupplier`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetSupplierDTO` | 入参实体类 | `body` | `true` | `CabinetSupplierDTO` | `CabinetSupplierDTO` |
| `cabinetSupplierDTO.id` | ID | `` | `false` | `integer(int32)` | `` |
| `cabinetSupplierDTO.brandName` | 品牌名称,不能存在空格 | `` | `false` | `string` | `` |
| `cabinetSupplierDTO.protocol` | 协议 | `` | `false` | `integer(int32)` | `` |
| `cabinetSupplierDTO.model` | 型号 | `` | `true` | `string` | `` |
| `cabinetSupplierDTO.cabinetSize` | 机柜尺寸 | `` | `false` | `string` | `` |
| `cabinetSupplierDTO.doorNum` | 仓位数 | `` | `true` | `integer(int32)` | `` |
| `cabinetSupplierDTO.doorSize` | 仓位尺寸(mm*mm*mm) | `` | `false` | `string` | `` |
| `cabinetSupplierDTO.screenSize` | 屏幕尺寸 | `` | `false` | `number` | `` |
| `cabinetSupplierDTO.waterproofGrade` | 防水等级 | `` | `false` | `string` | `` |
| `cabinetSupplierDTO.productPicture` | 产品图片 | `` | `false` | `string` | `` |

## 06.字典接口 / 编辑机柜供应商

- Method: `PUT`
- Path: `/mx-ce-system/api/supplierManagement/cabinetSupplier`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/supplierManagement/cabinetSupplier`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetSupplierDTO` | 入参实体类 | `body` | `true` | `CabinetSupplierDTO` | `CabinetSupplierDTO` |
| `cabinetSupplierDTO.id` | ID | `` | `false` | `integer(int32)` | `` |
| `cabinetSupplierDTO.brandName` | 品牌名称,不能存在空格 | `` | `false` | `string` | `` |
| `cabinetSupplierDTO.protocol` | 协议 | `` | `false` | `integer(int32)` | `` |
| `cabinetSupplierDTO.model` | 型号 | `` | `true` | `string` | `` |
| `cabinetSupplierDTO.cabinetSize` | 机柜尺寸 | `` | `false` | `string` | `` |
| `cabinetSupplierDTO.doorNum` | 仓位数 | `` | `true` | `integer(int32)` | `` |
| `cabinetSupplierDTO.doorSize` | 仓位尺寸(mm*mm*mm) | `` | `false` | `string` | `` |
| `cabinetSupplierDTO.screenSize` | 屏幕尺寸 | `` | `false` | `number` | `` |
| `cabinetSupplierDTO.waterproofGrade` | 防水等级 | `` | `false` | `string` | `` |
| `cabinetSupplierDTO.productPicture` | 产品图片 | `` | `false` | `string` | `` |

## 06.字典接口 / 删除电池供应商

- Method: `DELETE`
- Path: `/mx-ce-system/api/supplierManagement/cabinetSupplier`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/supplierManagement/cabinetSupplier`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 型号ID | `query` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 机柜供应商列表

- Method: `POST`
- Path: `/mx-ce-system/api/supplierManagement/cabinetSupplierList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/supplierManagement/cabinetSupplierList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetSupplierListDTO` | 入参实体类 | `body` | `true` | `CabinetSupplierListDTO` | `CabinetSupplierListDTO` |
| `cabinetSupplierListDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `cabinetSupplierListDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `cabinetSupplierListDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `cabinetSupplierListDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `cabinetSupplierListDTO.companyId` | 品牌ID | `` | `false` | `integer(int32)` | `` |
| `cabinetSupplierListDTO.typeId` | 型号ID | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 取消工单

- Method: `GET`
- Path: `/mx-ce-system/api/workOrders/cancelWorkOrders`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/workOrders/cancelWorkOrders`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 工单id | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 删除工单

- Method: `DELETE`
- Path: `/mx-ce-system/api/workOrders/deleteWorkOrders`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/workOrders/deleteWorkOrders`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 工单id | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 故障定义启用-禁用

- Method: `GET`
- Path: `/mx-ce-system/api/workOrders/enableOmsWorkFaultDefinitionOrders`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/workOrders/enableOmsWorkFaultDefinitionOrders`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 故障定义id | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 导出pc端故障检修列表

- Method: `POST`
- Path: `/mx-ce-system/api/workOrders/exportWorkOrdersPc`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/workOrders/exportWorkOrdersPc`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `workOrderPcDTO` | pc端工单列表 | `body` | `true` | `WorkOrderPcDTO` | `WorkOrderPcDTO` |
| `workOrderPcDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `workOrderPcDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `workOrderPcDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `workOrderPcDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `workOrderPcDTO.workId` | 工单编号 | `` | `false` | `string` | `` |
| `workOrderPcDTO.deviceId` | 设备编号 | `` | `false` | `string` | `` |
| `workOrderPcDTO.workType` | 工单类型 1=电池 2=电柜 | `` | `false` | `integer(int32)` | `` |
| `workOrderPcDTO.workStatus` | 工单状态 1=待检修 2=已检修 3=已取消 | `` | `false` | `integer(int32)` | `` |
| `workOrderPcDTO.faultNameId` | 故障名称id | `` | `false` | `integer(int64)` | `` |
| `workOrderPcDTO.faultReasonId` | 故障原因 | `` | `false` | `integer(int64)` | `` |
| `workOrderPcDTO.cityCode` | 城市编码 | `` | `false` | `string` | `` |
| `workOrderPcDTO.createDate` | 筛选条件,开始时间 yyyy-MM-dd | `` | `false` | `string` | `` |
| `workOrderPcDTO.endDate` | 筛选条件,结束时间 yyyy-MM-dd | `` | `false` | `string` | `` |

## 06.字典接口 / 故障定义列表

- Method: `POST`
- Path: `/mx-ce-system/api/workOrders/listOmsWorkFaultDefinitionOrders`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/workOrders/listOmsWorkFaultDefinitionOrders`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `workFaultDefinitionDTO` | 故障定义 | `body` | `true` | `WorkFaultDefinitionDTO` | `WorkFaultDefinitionDTO` |
| `workFaultDefinitionDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `workFaultDefinitionDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `workFaultDefinitionDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `workFaultDefinitionDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `workFaultDefinitionDTO.faultName` | 故障名称 | `` | `false` | `string` | `` |
| `workFaultDefinitionDTO.workType` | 设备类型,1=电池 2=电柜 | `` | `false` | `integer(int32)` | `` |
| `workFaultDefinitionDTO.faultLevel` | 故障等级 1=一级故障 2=二级故障 3=三级故障 | `` | `false` | `integer(int32)` | `` |
| `workFaultDefinitionDTO.faultReason` | 故障原因 | `` | `false` | `string` | `` |
| `workFaultDefinitionDTO.status` | 状态 1=启用中 2=已禁用 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / PC端获取故障等级

- Method: `GET`
- Path: `/mx-ce-system/api/workOrders/listOmsWorkFaultLevel`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/workOrders/listOmsWorkFaultLevel`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 故障id | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 获取故障等级下拉列表

- Method: `GET`
- Path: `/mx-ce-system/api/workOrders/listOmsWorkFaultLevelOrders`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/workOrders/listOmsWorkFaultLevelOrders`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 获取故障名称下拉列表

- Method: `GET`
- Path: `/mx-ce-system/api/workOrders/listOmsWorkFaultNameOrders`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/workOrders/listOmsWorkFaultNameOrders`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 获取故障原因下拉列表

- Method: `POST`
- Path: `/mx-ce-system/api/workOrders/listOmsWorkFaultReasonOrders`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/workOrders/listOmsWorkFaultReasonOrders`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `faultReasonDTO` | 获取故障原因数据 | `body` | `true` | `FaultReasonDTO` | `FaultReasonDTO` |
| `faultReasonDTO.id` | 故障原因id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 获取工单状态下拉列表

- Method: `GET`
- Path: `/mx-ce-system/api/workOrders/listOmsWorkStatusOrders`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/workOrders/listOmsWorkStatusOrders`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 获取工单类型下拉列表

- Method: `GET`
- Path: `/mx-ce-system/api/workOrders/listOmsWorkTypeOrders`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/workOrders/listOmsWorkTypeOrders`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / pc端故障检修列表

- Method: `POST`
- Path: `/mx-ce-system/api/workOrders/listWorkOrdersPc`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/workOrders/listWorkOrdersPc`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `workOrderPcDTO` | pc端工单列表 | `body` | `true` | `WorkOrderPcDTO` | `WorkOrderPcDTO` |
| `workOrderPcDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `workOrderPcDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `workOrderPcDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `workOrderPcDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `workOrderPcDTO.workId` | 工单编号 | `` | `false` | `string` | `` |
| `workOrderPcDTO.deviceId` | 设备编号 | `` | `false` | `string` | `` |
| `workOrderPcDTO.workType` | 工单类型 1=电池 2=电柜 | `` | `false` | `integer(int32)` | `` |
| `workOrderPcDTO.workStatus` | 工单状态 1=待检修 2=已检修 3=已取消 | `` | `false` | `integer(int32)` | `` |
| `workOrderPcDTO.faultNameId` | 故障名称id | `` | `false` | `integer(int64)` | `` |
| `workOrderPcDTO.faultReasonId` | 故障原因 | `` | `false` | `integer(int64)` | `` |
| `workOrderPcDTO.cityCode` | 城市编码 | `` | `false` | `string` | `` |
| `workOrderPcDTO.createDate` | 筛选条件,开始时间 yyyy-MM-dd | `` | `false` | `string` | `` |
| `workOrderPcDTO.endDate` | 筛选条件,结束时间 yyyy-MM-dd | `` | `false` | `string` | `` |

## 06.字典接口 / 检修提交

- Method: `POST`
- Path: `/mx-ce-system/api/workOrders/maintenance`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/workOrders/maintenance`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `maintenanceDTO` | 检修工单 | `body` | `true` | `MaintenanceDTO` | `MaintenanceDTO` |
| `maintenanceDTO.workId` | 工单编号 | `` | `false` | `string` | `` |
| `maintenanceDTO.maintenanceResult` |  | `` | `false` | `string` | `` |

## 06.字典接口 / 故障定义新增

- Method: `POST`
- Path: `/mx-ce-system/api/workOrders/newOmsWorkFaultDefinitionOrders`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/workOrders/newOmsWorkFaultDefinitionOrders`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `newWorkFaultDefinitionDTO` | 新建故障定义 | `body` | `true` | `NewWorkFaultDefinitionDTO` | `NewWorkFaultDefinitionDTO` |
| `newWorkFaultDefinitionDTO.id` | 故障定义id 为空则新增,不为空则修改 | `` | `false` | `integer(int64)` | `` |
| `newWorkFaultDefinitionDTO.faultName` | 故障名称 | `` | `true` | `string` | `` |
| `newWorkFaultDefinitionDTO.workType` | 设备类型,1=电池 2=电柜 | `` | `true` | `integer(int32)` | `` |
| `newWorkFaultDefinitionDTO.faultLevel` | 故障等级 1=一级故障 2=二级故障 3=三级故障 | `` | `true` | `integer(int32)` | `` |
| `newWorkFaultDefinitionDTO.faultReason` | 故障原因 | `` | `true` | `string` | `` |

## 06.字典接口 / 新增工单

- Method: `POST`
- Path: `/mx-ce-system/api/workOrders/newWorkOrders`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/workOrders/newWorkOrders`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `workOrderDTO` | 故障检修 | `body` | `true` | `WorkOrderDTO` | `WorkOrderDTO` |
| `workOrderDTO.workType` | 工单类型 1=电池 2=电柜 | `` | `false` | `integer(int32)` | `` |
| `workOrderDTO.deviceId` | 设备编号 | `` | `false` | `string` | `` |
| `workOrderDTO.faultLevel` | 故障等级 ,1=一级故障 2=二级故障 3=三级故障 | `` | `false` | `integer(int32)` | `` |
| `workOrderDTO.faultName` | 故障名称id | `` | `false` | `integer(int64)` | `` |
| `workOrderDTO.faultReason` | 故障原因 | `` | `false` | `integer(int32)` | `` |
| `workOrderDTO.cityCode` | 城市编码 | `` | `false` | `string` | `` |

## 06.字典接口 / pc新增工单

- Method: `POST`
- Path: `/mx-ce-system/api/workOrders/newWorkOrdersPc`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/workOrders/newWorkOrdersPc`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `newWorkOrdersDTO` | 新建工单 | `body` | `true` | `NewWorkOrdersDTO` | `NewWorkOrdersDTO` |
| `newWorkOrdersDTO.workType` | 工单类型 1=电池 2=电柜 | `` | `true` | `integer(int32)` | `` |
| `newWorkOrdersDTO.deviceId` | 设备编号 | `` | `true` | `string` | `` |
| `newWorkOrdersDTO.faultName` | 故障名称id | `` | `true` | `integer(int64)` | `` |
| `newWorkOrdersDTO.faultReason` | 故障原因 | `` | `true` | `integer(int64)` | `` |
| `newWorkOrdersDTO.faultLevel` | 故障等级 | `` | `true` | `string` | `` |
| `newWorkOrdersDTO.cityCode` | 城市编码 | `` | `true` | `string` | `` |

## 06.字典接口 / 移动端根据工单类型获取故障名称

- Method: `POST`
- Path: `/mx-ce-system/api/workOrders/OmsWorkFaultNameOrders`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/workOrders/OmsWorkFaultNameOrders`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `dmsFaultLevelDTO` | 获取故障等级数据 | `body` | `true` | `DmsFaultLevelDTO` | `DmsFaultLevelDTO` |
| `dmsFaultLevelDTO.workType` | 工单类型 1=电池 2=电柜 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 根据故障名称获取故障原因列表

- Method: `POST`
- Path: `/mx-ce-system/api/workOrders/OmsWorkFaultReasonOrders`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/workOrders/OmsWorkFaultReasonOrders`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `faultReasonDTO` | 获取故障原因数据 | `body` | `true` | `FaultReasonDTO` | `FaultReasonDTO` |
| `faultReasonDTO.id` | 故障原因id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 根据故障原因获取故障等级

- Method: `POST`
- Path: `/mx-ce-system/api/workOrders/OmsWorkOrders`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/workOrders/OmsWorkOrders`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `faultReasonDTO` | 获取故障原因数据 | `body` | `true` | `FaultReasonDTO` | `FaultReasonDTO` |
| `faultReasonDTO.id` | 故障原因id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 获取工单详情

- Method: `POST`
- Path: `/mx-ce-system/api/workOrders/OrdersDetails`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/workOrders/OrdersDetails`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `workOrdersDetailsDTO` | 工单详情编号 | `body` | `true` | `WorkOrdersDetailsDTO` | `WorkOrdersDetailsDTO` |
| `workOrdersDetailsDTO.workId` | 工单编号 | `` | `false` | `string` | `` |

## 06.字典接口 / 运营端-故障检修列表

- Method: `POST`
- Path: `/mx-ce-system/api/workOrders/screenWorkOrders`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/workOrders/screenWorkOrders`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `workOrderQueryDTO` | 筛选分页数据 | `body` | `true` | `WorkOrderQueryDTO` | `WorkOrderQueryDTO` |
| `workOrderQueryDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `workOrderQueryDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `workOrderQueryDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `workOrderQueryDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `workOrderQueryDTO.workType` | 工单类型,筛选条件,1=电池2=电柜 | `` | `false` | `integer(int32)` | `` |
| `workOrderQueryDTO.status` | 状态,筛选条件,1=待检修  2=待检修 3=已取消 | `` | `false` | `integer(int32)` | `` |
| `workOrderQueryDTO.cityCode` | 城市,筛选条件,城市编码 | `` | `false` | `string` | `` |
| `workOrderQueryDTO.keyWords` | 关键字,模糊查询 工单编号,设备编号,制单人 | `` | `false` | `string` | `` |
| `workOrderQueryDTO.createDate` | 开始日期,筛选条件 | `` | `false` | `string(date)` | `` |
| `workOrderQueryDTO.endTime` | 结束时间,筛选条件 | `` | `false` | `string(date)` | `` |

## 06.字典接口 / 故障定义操作日志

- Method: `POST`
- Path: `/mx-ce-system/api/workOrders/workFaultDefinitionLog`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/workOrders/workFaultDefinitionLog`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `workFaultDefinitionLogDTO` | 故障定义日志 | `body` | `true` | `WorkFaultDefinitionLogDTO` | `WorkFaultDefinitionLogDTO` |
| `workFaultDefinitionLogDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `workFaultDefinitionLogDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `workFaultDefinitionLogDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `workFaultDefinitionLogDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `workFaultDefinitionLogDTO.id` | 故障定义id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / pc检修工单操作日志

- Method: `POST`
- Path: `/mx-ce-system/api/workOrders/workOrdersLog`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/workOrders/workOrdersLog`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `workOrdersLogDTO` | 工单日志 | `body` | `true` | `WorkOrdersLogDTO` | `WorkOrdersLogDTO` |
| `workOrdersLogDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `workOrdersLogDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `workOrdersLogDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `workOrdersLogDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `workOrdersLogDTO.id` | 工单id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 新增常见问题

- Method: `POST`
- Path: `/mx-ce-system/api/sms/customer/addQuestion`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/sms/customer/addQuestion`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `addCustomerQuestionDTO` | 添加常见问题 | `body` | `true` | `AddCustomerQuestionDTO` | `AddCustomerQuestionDTO` |
| `addCustomerQuestionDTO.id` | 常见问题id,编辑的时候传 | `` | `false` | `integer(int32)` | `` |
| `addCustomerQuestionDTO.question` | 问题名称 | `` | `false` | `string` | `` |
| `addCustomerQuestionDTO.solution` | 解决方式说明 | `` | `false` | `string` | `` |

## 06.字典接口 / 删除常见问题

- Method: `DELETE`
- Path: `/mx-ce-system/api/sms/customer/deleteQuestion`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/sms/customer/deleteQuestion`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 常见问题id | `query` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 常见问题列表

- Method: `POST`
- Path: `/mx-ce-system/api/sms/customer/getQuestion`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/sms/customer/getQuestion`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `apiCustomerQuestionDTO` | ApiCustomerQuestionDTO | `body` | `true` | `ApiCustomerQuestionDTO` | `ApiCustomerQuestionDTO` |
| `apiCustomerQuestionDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `apiCustomerQuestionDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `apiCustomerQuestionDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `apiCustomerQuestionDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `apiCustomerQuestionDTO.question` | 问题名称 | `` | `false` | `string` | `` |
| `apiCustomerQuestionDTO.status` | 问题状态 1=上架中 2=已下架 3=待上架 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 常见问题操作日志

- Method: `POST`
- Path: `/mx-ce-system/api/sms/customer/getQuestionLog`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/sms/customer/getQuestionLog`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `customerQuestionLogDTO` | 问题日志 | `body` | `true` | `CustomerQuestionLogDTO` | `CustomerQuestionLogDTO` |
| `customerQuestionLogDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `customerQuestionLogDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `customerQuestionLogDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `customerQuestionLogDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `customerQuestionLogDTO.id` | 问题id | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 上下架常见问题

- Method: `GET`
- Path: `/mx-ce-system/api/sms/customer/updateQuestionStatus`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/sms/customer/updateQuestionStatus`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 问题id | `query` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 售后管理-导出消息推送列表

- Method: `POST`
- Path: `/mx-ce-system/api/pushMessage/export`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/pushMessage/export`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `pushMessageDTO` | 消息推送分页入参 | `body` | `true` | `PushMessageDTO` | `PushMessageDTO` |
| `pushMessageDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `pushMessageDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `pushMessageDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `pushMessageDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `pushMessageDTO.id` | 用户id | `` | `false` | `integer(int64)` | `` |
| `pushMessageDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `pushMessageDTO.mobile` | 手机号 | `` | `false` | `string` | `` |
| `pushMessageDTO.batteryId` | 电池编号 | `` | `false` | `string` | `` |
| `pushMessageDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |
| `pushMessageDTO.startTime` | 推送开始时间 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `pushMessageDTO.endTime` | 推送结束时间 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `pushMessageDTO.status` | 推送结果,-1=推送中,0=失败,1=成功 | `` | `false` | `integer(int32)` | `` |
| `pushMessageDTO.type` | 推送类型,1=低电量 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 售后管理-消息推送列表

- Method: `POST`
- Path: `/mx-ce-system/api/pushMessage/list`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/pushMessage/list`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `pushMessageDTO` | 消息推送分页入参 | `body` | `true` | `PushMessageDTO` | `PushMessageDTO` |
| `pushMessageDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `pushMessageDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `pushMessageDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `pushMessageDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `pushMessageDTO.id` | 用户id | `` | `false` | `integer(int64)` | `` |
| `pushMessageDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `pushMessageDTO.mobile` | 手机号 | `` | `false` | `string` | `` |
| `pushMessageDTO.batteryId` | 电池编号 | `` | `false` | `string` | `` |
| `pushMessageDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |
| `pushMessageDTO.startTime` | 推送开始时间 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `pushMessageDTO.endTime` | 推送结束时间 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `pushMessageDTO.status` | 推送结果,-1=推送中,0=失败,1=成功 | `` | `false` | `integer(int32)` | `` |
| `pushMessageDTO.type` | 推送类型,1=低电量 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 告警次数

- Method: `GET`
- Path: `/mx-ce-system/pc/screen/alarmCount`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/screen/alarmCount`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 电池总览

- Method: `GET`
- Path: `/mx-ce-system/pc/screen/batteryOverview`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/screen/batteryOverview`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 电柜总览

- Method: `GET`
- Path: `/mx-ce-system/pc/screen/cabinetOverview`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/screen/cabinetOverview`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 换电订单滚动信息

- Method: `GET`
- Path: `/mx-ce-system/pc/screen/changeOrder`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/screen/changeOrder`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 城市排名

- Method: `GET`
- Path: `/mx-ce-system/pc/screen/cityRanking`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/screen/cityRanking`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 设备分布

- Method: `GET`
- Path: `/mx-ce-system/pc/screen/deviceDistribution`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/screen/deviceDistribution`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `regionCode` | 省份编码 | `query` | `false` | `string` | `` |

## 06.字典接口 / 套餐购买滚动信息

- Method: `GET`
- Path: `/mx-ce-system/pc/screen/packageOrder`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/screen/packageOrder`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 用户增长情况

- Method: `GET`
- Path: `/mx-ce-system/pc/screen/userGrowth`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/screen/userGrowth`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 导出套餐计费列表

- Method: `POST`
- Path: `/mx-ce-system/api/OmsPackageBillingController/_export`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/OmsPackageBillingController/_export`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `omsPackageBillingDTO` | 套餐计费数据 | `body` | `true` | `OmsPackageBillingDTO` | `OmsPackageBillingDTO` |
| `omsPackageBillingDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `omsPackageBillingDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `omsPackageBillingDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `omsPackageBillingDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `omsPackageBillingDTO.status` | 模版状态 0=已作废 1=生效中 | `` | `false` | `integer(int32)` | `` |
| `omsPackageBillingDTO.mealName` | 模版名称 | `` | `false` | `string` | `` |
| `omsPackageBillingDTO.billingType` | 计费类型 1=时间 2=次数 | `` | `false` | `integer(int32)` | `` |
| `omsPackageBillingDTO.cityCode` | 城市编码 | `` | `false` | `string` | `` |
| `omsPackageBillingDTO.company` | 配置企业 | `` | `false` | `integer(int64)` | `` |
| `omsPackageBillingDTO.templateType` | 模版类型,可用值:1=散户模版,2=企业模版,3=渠道模版 | `` | `false` | `string` | `` |
| `omsPackageBillingDTO.channel` | 配置渠道 | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 新增套餐计费

- Method: `POST`
- Path: `/mx-ce-system/api/OmsPackageBillingController/addPackageBilling`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/OmsPackageBillingController/addPackageBilling`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `addPackageBillingDTO` | 新增套餐计费 | `body` | `true` | `AddPackageBillingDTO` | `AddPackageBillingDTO` |
| `addPackageBillingDTO.mealName` | 套餐名称 | `` | `true` | `string` | `` |
| `addPackageBillingDTO.billingType` | 计费类型 1=时间 2=次数 | `` | `true` | `integer(int32)` | `` |
| `addPackageBillingDTO.money` | 原价 | `` | `true` | `number` | `` |
| `addPackageBillingDTO.realPrice` | 折扣价 | `` | `true` | `number` | `` |
| `addPackageBillingDTO.deposit` | 押金 | `` | `true` | `number` | `` |
| `addPackageBillingDTO.mealDays` | 套餐周期 | `` | `true` | `integer(int32)` | `` |
| `addPackageBillingDTO.times` | 次数 -1=不限次 | `` | `false` | `number` | `` |
| `addPackageBillingDTO.cityCode` | 城市编码 | `` | `true` | `string` | `` |
| `addPackageBillingDTO.brand` | 品牌 | `` | `true` | `integer(int32)` | `` |
| `addPackageBillingDTO.model` | 型号 | `` | `true` | `integer(int32)` | `` |
| `addPackageBillingDTO.templateType` | 模版类型 1=散户模版 2=企业模版 3=渠道模版 | `` | `true` | `integer(int32)` | `` |
| `addPackageBillingDTO.company` | 配置企业 传id但是可以传多个,id用,拼接 | `` | `false` | `string` | `` |
| `addPackageBillingDTO.channel` | 配置渠道 传id但是可以传多个,id用,拼接 | `` | `false` | `string` | `` |

## 06.字典接口 / 作废套餐计费

- Method: `POST`
- Path: `/mx-ce-system/api/OmsPackageBillingController/cancelPackageBilling`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/OmsPackageBillingController/cancelPackageBilling`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `omsCancelPackageDTO` | OmsCancelPackageDTO | `body` | `true` | `OmsCancelPackageDTO` | `OmsCancelPackageDTO` |
| `omsCancelPackageDTO.id` | 套餐编号 | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 编辑套餐计费

- Method: `POST`
- Path: `/mx-ce-system/api/OmsPackageBillingController/editPackageBilling`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/OmsPackageBillingController/editPackageBilling`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `editPackageBillingDTO` | EditPackageBillingDTO | `body` | `true` | `EditPackageBillingDTO` | `EditPackageBillingDTO` |
| `editPackageBillingDTO.id` | 套餐编号 | `` | `false` | `integer(int64)` | `` |
| `editPackageBillingDTO.mealName` | 套餐名称 | `` | `false` | `string` | `` |
| `editPackageBillingDTO.billingType` | 套餐类型 1=时间 2=次数 | `` | `false` | `integer(int32)` | `` |
| `editPackageBillingDTO.money` | 原价 | `` | `false` | `number` | `` |
| `editPackageBillingDTO.realPrice` | 折扣价 | `` | `false` | `number` | `` |
| `editPackageBillingDTO.deposit` | 押金 | `` | `false` | `number` | `` |
| `editPackageBillingDTO.mealDays` | 套餐周期 | `` | `false` | `integer(int32)` | `` |
| `editPackageBillingDTO.cityCode` | 城市编码 | `` | `false` | `string` | `` |
| `editPackageBillingDTO.brand` | 品牌 | `` | `false` | `integer(int32)` | `` |
| `editPackageBillingDTO.model` | 型号 | `` | `false` | `integer(int32)` | `` |
| `editPackageBillingDTO.templateType` | 模版类型,可用值:1=散户模版,2=企业模版,3=渠道模版 | `` | `false` | `string` | `` |
| `editPackageBillingDTO.company` | 配置企业 传id但是可以传多个,id用,拼接 | `` | `false` | `string` | `` |
| `editPackageBillingDTO.channel` | 配置渠道 传id但是可以传多个,id用,拼接 | `` | `false` | `string` | `` |
| `editPackageBillingDTO.times` | 次数 -1=不限次 | `` | `false` | `number` | `` |

## 06.字典接口 / 获取品牌下拉列表

- Method: `GET`
- Path: `/mx-ce-system/api/OmsPackageBillingController/getBrandList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/OmsPackageBillingController/getBrandList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 获取渠道配置下拉列表

- Method: `GET`
- Path: `/mx-ce-system/api/OmsPackageBillingController/getChannelList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/OmsPackageBillingController/getChannelList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cityCode` | 城市编码 | `query` | `true` | `string` | `` |

## 06.字典接口 / 获取企业配置下拉列表

- Method: `GET`
- Path: `/mx-ce-system/api/OmsPackageBillingController/getEnterpriseList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/OmsPackageBillingController/getEnterpriseList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cityCode` | 城市编码 | `query` | `true` | `string` | `` |

## 06.字典接口 / 套餐计费列表

- Method: `POST`
- Path: `/mx-ce-system/api/OmsPackageBillingController/getPackageBilling`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/OmsPackageBillingController/getPackageBilling`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `omsPackageBillingDTO` | 套餐计费数据 | `body` | `true` | `OmsPackageBillingDTO` | `OmsPackageBillingDTO` |
| `omsPackageBillingDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `omsPackageBillingDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `omsPackageBillingDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `omsPackageBillingDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `omsPackageBillingDTO.status` | 模版状态 0=已作废 1=生效中 | `` | `false` | `integer(int32)` | `` |
| `omsPackageBillingDTO.mealName` | 模版名称 | `` | `false` | `string` | `` |
| `omsPackageBillingDTO.billingType` | 计费类型 1=时间 2=次数 | `` | `false` | `integer(int32)` | `` |
| `omsPackageBillingDTO.cityCode` | 城市编码 | `` | `false` | `string` | `` |
| `omsPackageBillingDTO.company` | 配置企业 | `` | `false` | `integer(int64)` | `` |
| `omsPackageBillingDTO.templateType` | 模版类型,可用值:1=散户模版,2=企业模版,3=渠道模版 | `` | `false` | `string` | `` |
| `omsPackageBillingDTO.channel` | 配置渠道 | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 获取仓储调拨型号下拉列表

- Method: `POST`
- Path: `/mx-ce-system/api/OmsPackageBillingController/listWareHouseModel`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/OmsPackageBillingController/listWareHouseModel`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `optionModelDTO` | 获取型号下拉框数据 | `body` | `true` | `OptionModelDTO` | `OptionModelDTO` |
| `optionModelDTO.companyId` | 品牌id | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 套餐计费操作日志

- Method: `POST`
- Path: `/mx-ce-system/api/OmsPackageBillingController/smsActivityLog`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/OmsPackageBillingController/smsActivityLog`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `smsActivityLogDTO` | 套餐计费操作日志分页数据 | `body` | `true` | `SmsActivityLogDTO` | `SmsActivityLogDTO` |
| `smsActivityLogDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `smsActivityLogDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `smsActivityLogDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `smsActivityLogDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `smsActivityLogDTO.id` | 套餐编号 | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 新增通知公告

- Method: `POST`
- Path: `/mx-ce-system/api/smsMessageNotify/add`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/smsMessageNotify/add`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `smsMessageNotifyAddDTO` | 通知公告新增 | `body` | `true` | `SmsMessageNotifyAddDTO` | `SmsMessageNotifyAddDTO` |
| `smsMessageNotifyAddDTO.id` | 通知公告id,编辑时传入 | `` | `false` | `integer(int64)` | `` |
| `smsMessageNotifyAddDTO.notifyName` | 公告名称 | `` | `false` | `string` | `` |
| `smsMessageNotifyAddDTO.notifySubTitle` | 公告副标题 | `` | `false` | `string` | `` |
| `smsMessageNotifyAddDTO.notifyType` | 公告类型 1=系统公告 2=活动公告 | `` | `false` | `integer(int32)` | `` |
| `smsMessageNotifyAddDTO.notifyContent` | 公告内容 | `` | `false` | `string` | `` |

## 06.字典接口 / 删除通知公告

- Method: `DELETE`
- Path: `/mx-ce-system/api/smsMessageNotify/deleteNotify`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/smsMessageNotify/deleteNotify`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 通知公告id | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 通知公告操作日志

- Method: `POST`
- Path: `/mx-ce-system/api/smsMessageNotify/getNotifyLog`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/smsMessageNotify/getNotifyLog`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `smsMessageNotifyLogDTO` | 通知公告日志 | `body` | `true` | `SmsMessageNotifyLogDTO` | `SmsMessageNotifyLogDTO` |
| `smsMessageNotifyLogDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `smsMessageNotifyLogDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `smsMessageNotifyLogDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `smsMessageNotifyLogDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `smsMessageNotifyLogDTO.id` | 公告id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 通知公告列表

- Method: `POST`
- Path: `/mx-ce-system/api/smsMessageNotify/list`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/smsMessageNotify/list`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `smsMessageNotifyDTO` | 通知公告列表 | `body` | `true` | `SmsMessageNotifyDTO` | `SmsMessageNotifyDTO` |
| `smsMessageNotifyDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `smsMessageNotifyDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `smsMessageNotifyDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `smsMessageNotifyDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `smsMessageNotifyDTO.notifyName` | 筛选条件,公告名称 | `` | `false` | `string` | `` |
| `smsMessageNotifyDTO.notifyType` | 筛选条件,公告类型 1=系统公告 2=活动公告 | `` | `false` | `integer(int32)` | `` |
| `smsMessageNotifyDTO.status` | 筛选条件,公告状态 1=待发布 2=已发布 3=已下架 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 公告类型列表

- Method: `GET`
- Path: `/mx-ce-system/api/smsMessageNotify/notifyTypeList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/smsMessageNotify/notifyTypeList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 发布通知公告-下架通知公告

- Method: `GET`
- Path: `/mx-ce-system/api/smsMessageNotify/release`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/smsMessageNotify/release`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 通知公告id | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 公告状态列表

- Method: `GET`
- Path: `/mx-ce-system/api/smsMessageNotify/statusList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/smsMessageNotify/statusList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / pc网点签约订单导出

- Method: `POST`
- Path: `/mx-ce-system/api/netPointContracts/_export`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/netPointContracts/_export`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `pcNetPointDTO` | PC网点签约数据 | `body` | `true` | `PcNetPointDTO` | `PcNetPointDTO` |
| `pcNetPointDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `pcNetPointDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `pcNetPointDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `pcNetPointDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `pcNetPointDTO.status` | 筛选条件,状态 1=待检修 2=已检修 3=已驳回 | `` | `false` | `integer(int32)` | `` |
| `pcNetPointDTO.contactNumber` | 联系电话 | `` | `false` | `string` | `` |
| `pcNetPointDTO.applicant` | 联系人 | `` | `false` | `string` | `` |
| `pcNetPointDTO.orderId` | 单据编号, 筛选条件 | `` | `false` | `string` | `` |
| `pcNetPointDTO.partyCompany` | 甲方单位，筛选条件 | `` | `false` | `string` | `` |
| `pcNetPointDTO.cityCode` | 筛选条件,城市编码,厦门或者广州 | `` | `false` | `string` | `` |
| `pcNetPointDTO.createDate` | 开始日期,筛选条件 | `` | `false` | `string` | `` |
| `pcNetPointDTO.endTime` | 结束时间,筛选条件 | `` | `false` | `string` | `` |

## 06.字典接口 / PC-移动端新增网点签约

- Method: `POST`
- Path: `/mx-ce-system/api/netPointContracts/addNetPointContracts`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/netPointContracts/addNetPointContracts`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `netPointContractsDTO` | 新增网点签约数据 | `body` | `true` | `NetPointContractsDTO` | `NetPointContractsDTO` |
| `netPointContractsDTO.pointId` | 网点签约id 编辑时传，新增不需要 | `` | `false` | `integer(int64)` | `` |
| `netPointContractsDTO.cooperationStartDate` | 合作期限开始日期 | `` | `false` | `string(date)` | `` |
| `netPointContractsDTO.cooperationEndDate` | 合作期限结束日期 | `` | `false` | `string(date)` | `` |
| `netPointContractsDTO.deploymentQuantity` | 布放数量 | `` | `false` | `integer(int32)` | `` |
| `netPointContractsDTO.cabinetQuantity` | 电柜仓数 | `` | `false` | `integer(int32)` | `` |
| `netPointContractsDTO.rent` | 租金 | `` | `false` | `number` | `` |
| `netPointContractsDTO.rentSettlementMethod` | 租金结算方式 1=月付 2=季付 3=年付 | `` | `false` | `integer(int32)` | `` |
| `netPointContractsDTO.electricityMoney` | 电价计费 | `` | `false` | `number` | `` |
| `netPointContractsDTO.electricityEndMethod` | 电费结算方式 1=月付 2=季付 3=年付 | `` | `false` | `integer(int32)` | `` |
| `netPointContractsDTO.images` | 图片 | `` | `false` | `string` | `` |
| `netPointContractsDTO.contractAttachment` | 合同附件 | `` | `false` | `string` | `` |
| `netPointContractsDTO.partyACompany` | 甲方单位 | `` | `false` | `string` | `` |
| `netPointContractsDTO.creditCodeOrID` | 信用代码/身份证 | `` | `false` | `string` | `` |
| `netPointContractsDTO.contactNumber` | 联系电话 | `` | `false` | `string` | `` |
| `netPointContractsDTO.partyAddress` | 甲方地址 | `` | `false` | `string` | `` |
| `netPointContractsDTO.accountHolder` | 户名 | `` | `false` | `string` | `` |
| `netPointContractsDTO.bank` | 开户行 | `` | `false` | `string` | `` |
| `netPointContractsDTO.bankAccount` | 银行账户 | `` | `false` | `string` | `` |
| `netPointContractsDTO.iphoneNumber` | 银行联系电话 | `` | `false` | `string` | `` |

## 06.字典接口 / PC-移动端审核网点

- Method: `PUT`
- Path: `/mx-ce-system/api/netPointContracts/branchAudit`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/netPointContracts/branchAudit`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `branchAuditDTO` | 网点审核 | `body` | `true` | `BranchAuditDTO` | `BranchAuditDTO` |
| `branchAuditDTO.pointId` | 网点签约id | `` | `false` | `integer(int64)` | `` |
| `branchAuditDTO.approvedResult` | 审核结果 1=审核成功 2=审核失败 | `` | `true` | `integer(int32)` | `` |
| `branchAuditDTO.approvedReason` | 审核失败原因 | `` | `false` | `string` | `` |

## 06.字典接口 / pc删除网点签约订单

- Method: `DELETE`
- Path: `/mx-ce-system/api/netPointContracts/deleteNetPointContracts`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/netPointContracts/deleteNetPointContracts`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `pointId` | 网点签约id | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 获取驳回信息分页列表

- Method: `POST`
- Path: `/mx-ce-system/api/netPointContracts/getRejectionInformation`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/netPointContracts/getRejectionInformation`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `netPointContractsDetailsDTO` | 驳回信息数据 | `body` | `true` | `NetPointContractsDetailsDTO` | `NetPointContractsDetailsDTO` |
| `netPointContractsDetailsDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `netPointContractsDetailsDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `netPointContractsDetailsDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `netPointContractsDetailsDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `netPointContractsDetailsDTO.id` | 网点签约id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 获取详情信息

- Method: `POST`
- Path: `/mx-ce-system/api/netPointContracts/netPointContractsDetails`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/netPointContracts/netPointContractsDetails`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `netPointContractsInformationDTO` | 详情 | `body` | `true` | `NetPointContractsInformationDTO` | `NetPointContractsInformationDTO` |
| `netPointContractsInformationDTO.pointId` | 网点签约id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / pc端网点签约列表

- Method: `POST`
- Path: `/mx-ce-system/api/netPointContracts/pcNetPoint`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/netPointContracts/pcNetPoint`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `pcNetPointDTO` | PC网点签约数据 | `body` | `true` | `PcNetPointDTO` | `PcNetPointDTO` |
| `pcNetPointDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `pcNetPointDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `pcNetPointDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `pcNetPointDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `pcNetPointDTO.status` | 筛选条件,状态 1=待检修 2=已检修 3=已驳回 | `` | `false` | `integer(int32)` | `` |
| `pcNetPointDTO.contactNumber` | 联系电话 | `` | `false` | `string` | `` |
| `pcNetPointDTO.applicant` | 联系人 | `` | `false` | `string` | `` |
| `pcNetPointDTO.orderId` | 单据编号, 筛选条件 | `` | `false` | `string` | `` |
| `pcNetPointDTO.partyCompany` | 甲方单位，筛选条件 | `` | `false` | `string` | `` |
| `pcNetPointDTO.cityCode` | 筛选条件,城市编码,厦门或者广州 | `` | `false` | `string` | `` |
| `pcNetPointDTO.createDate` | 开始日期,筛选条件 | `` | `false` | `string` | `` |
| `pcNetPointDTO.endTime` | 结束时间,筛选条件 | `` | `false` | `string` | `` |

## 06.字典接口 / pc网点签约详情审批信息

- Method: `POST`
- Path: `/mx-ce-system/api/netPointContracts/pcNetPointApproved`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/netPointContracts/pcNetPointApproved`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `pcNetPointApprovedDTO` | PC网点审批信息 | `body` | `true` | `PcNetPointApprovedDTO` | `PcNetPointApprovedDTO` |
| `pcNetPointApprovedDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `pcNetPointApprovedDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `pcNetPointApprovedDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `pcNetPointApprovedDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `pcNetPointApprovedDTO.pointId` | 网点签约id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / pc网点签约详情

- Method: `GET`
- Path: `/mx-ce-system/api/netPointContracts/pcNetPointDetails`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/netPointContracts/pcNetPointDetails`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `pointId` | 网点签约id | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 网点签约分页列表

- Method: `POST`
- Path: `/mx-ce-system/api/netPointContracts/screenNetPointContracts`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/netPointContracts/screenNetPointContracts`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `netPointContractsPageDTO` | 筛选查询 | `body` | `true` | `NetPointContractsPageDTO` | `NetPointContractsPageDTO` |
| `netPointContractsPageDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `netPointContractsPageDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `netPointContractsPageDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `netPointContractsPageDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `netPointContractsPageDTO.status` | 筛选条件,状态 1=待检修 2=已检修 3=已驳回 | `` | `false` | `integer(int32)` | `` |
| `netPointContractsPageDTO.keyWords` | 关键字,模糊查询 订单编号,联系电话,甲方单位 | `` | `false` | `string` | `` |
| `netPointContractsPageDTO.cityCode` | 筛选条件,城市编码,厦门或者广州 | `` | `false` | `string` | `` |
| `netPointContractsPageDTO.createDate` | 开始日期,筛选条件 | `` | `false` | `string` | `` |
| `netPointContractsPageDTO.endTime` | 结束时间,筛选条件 | `` | `false` | `string` | `` |

## 06.字典接口 / 文件上传

- Method: `POST`
- Path: `/mx-ce-system/api/v1/files`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/files`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `file` |  | `query` | `true` | `file` | `` |

## 06.字典接口 / 文件删除

- Method: `DELETE`
- Path: `/mx-ce-system/api/v1/files`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/files`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `文件路径` |  | `query` | `true` | `string` | `` |

## 06.字典接口 / 批量文件上传,内部接口不对外开放

- Method: `POST`
- Path: `/mx-ce-system/api/v1/files/uploadFilesFromUrls`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/v1/files/uploadFilesFromUrls`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `files` |  | `query` | `true` | `string` | `` |

## 06.字典接口 / 审核退押订单

- Method: `PUT`
- Path: `/mx-ce-system/api/depositOrder/auditSuccess`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/depositOrder/auditSuccess`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 退押订单ID | `query` | `true` | `integer(int64)` | `` |
| `status` | 审核状态 0=待审核 1=已审核 2=审核失败 | `query` | `true` | `integer(int32)` | `` |
| `deductionMoney` | 扣款金额 | `query` | `false` | `number` | `` |

## 06.字典接口 / 押金支付方式下拉列表

- Method: `GET`
- Path: `/mx-ce-system/api/depositOrder/depositPayTypeList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/depositOrder/depositPayTypeList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 执行押金解冻成功

- Method: `PUT`
- Path: `/mx-ce-system/api/depositOrder/executeUnfreeze`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/depositOrder/executeUnfreeze`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 押金解冻ID | `query` | `true` | `string` | `` |
| `deductionMoney` | 扣款金额 | `query` | `false` | `number` | `` |

## 06.字典接口 / 执行押金解冻失败

- Method: `PUT`
- Path: `/mx-ce-system/api/depositOrder/executeUnfreezeFail`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/depositOrder/executeUnfreezeFail`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 押金解冻ID | `query` | `true` | `string` | `` |

## 06.字典接口 / 资金处理结果通知

- Method: `POST`
- Path: `/mx-ce-system/api/depositOrder/notify`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/depositOrder/notify`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 退押订单审核订单状态下拉列表

- Method: `GET`
- Path: `/mx-ce-system/api/depositOrder/refundAuditStatusList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/depositOrder/refundAuditStatusList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 退押订单

- Method: `POST`
- Path: `/mx-ce-system/api/depositOrder/refundDepositOrder`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/depositOrder/refundDepositOrder`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `refundDepositListDTO` | 入参实体类 | `body` | `true` | `RefundDepositListDTO` | `RefundDepositListDTO` |
| `refundDepositListDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `refundDepositListDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `refundDepositListDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `refundDepositListDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `refundDepositListDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `refundDepositListDTO.mobile` | 手机号 | `` | `false` | `string` | `` |
| `refundDepositListDTO.payType` | 支付方式 1=微信支付 2=支付宝支付 3=余额支付 4=芝麻免押 | `` | `false` | `integer(int32)` | `` |
| `refundDepositListDTO.status` | 订单状态 0=待审核,1=已审核,2=审核失败 | `` | `false` | `integer(int32)` | `` |
| `refundDepositListDTO.orderSn` | 退押订单 | `` | `false` | `string` | `` |
| `refundDepositListDTO.applyStartTime` | 申请开始时间 | `` | `false` | `string` | `` |
| `refundDepositListDTO.applyEndTime` | 申请结束时间 | `` | `false` | `string` | `` |
| `refundDepositListDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |

## 06.字典接口 / 芝麻解除,不对外开放

- Method: `PUT`
- Path: `/mx-ce-system/api/depositOrder/refundDepositOrder/{payOrderNo}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/depositOrder/refundDepositOrder/{payOrderNo}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `payOrderNo` |  | `path` | `true` | `string` | `` |

## 06.字典接口 / 退押订单导出

- Method: `POST`
- Path: `/mx-ce-system/api/depositOrder/refundDepositOrderExport`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/depositOrder/refundDepositOrderExport`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `refundDepositListDTO` | 入参实体类 | `body` | `true` | `RefundDepositListDTO` | `RefundDepositListDTO` |
| `refundDepositListDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `refundDepositListDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `refundDepositListDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `refundDepositListDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `refundDepositListDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `refundDepositListDTO.mobile` | 手机号 | `` | `false` | `string` | `` |
| `refundDepositListDTO.payType` | 支付方式 1=微信支付 2=支付宝支付 3=余额支付 4=芝麻免押 | `` | `false` | `integer(int32)` | `` |
| `refundDepositListDTO.status` | 订单状态 0=待审核,1=已审核,2=审核失败 | `` | `false` | `integer(int32)` | `` |
| `refundDepositListDTO.orderSn` | 退押订单 | `` | `false` | `string` | `` |
| `refundDepositListDTO.applyStartTime` | 申请开始时间 | `` | `false` | `string` | `` |
| `refundDepositListDTO.applyEndTime` | 申请结束时间 | `` | `false` | `string` | `` |
| `refundDepositListDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |

## 06.字典接口 / 退押订单执行订单状态下拉列表

- Method: `GET`
- Path: `/mx-ce-system/api/depositOrder/refundExecuteStatusList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/depositOrder/refundExecuteStatusList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 押金解冻

- Method: `POST`
- Path: `/mx-ce-system/api/depositOrder/unfreeze`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/depositOrder/unfreeze`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `unfreezeDepositListDTO` | 入参实体类 | `body` | `true` | `UnfreezeDepositListDTO` | `UnfreezeDepositListDTO` |
| `unfreezeDepositListDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `unfreezeDepositListDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `unfreezeDepositListDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `unfreezeDepositListDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `unfreezeDepositListDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `unfreezeDepositListDTO.mobile` | 手机号 | `` | `false` | `string` | `` |
| `unfreezeDepositListDTO.status` | 执行状态,可用值:0=待执行,1=已执行 | `` | `false` | `string(int32)` | `` |
| `unfreezeDepositListDTO.applyStartTime` | 申请开始时间 | `` | `false` | `string` | `` |
| `unfreezeDepositListDTO.applyEndTime` | 申请结束时间 | `` | `false` | `string` | `` |
| `unfreezeDepositListDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |

## 06.字典接口 / 押金解冻导出

- Method: `POST`
- Path: `/mx-ce-system/api/depositOrder/unfreezeDepositOrderExport`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/depositOrder/unfreezeDepositOrderExport`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `unfreezeDepositListDTO` | 入参实体类 | `body` | `true` | `UnfreezeDepositListDTO` | `UnfreezeDepositListDTO` |
| `unfreezeDepositListDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `unfreezeDepositListDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `unfreezeDepositListDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `unfreezeDepositListDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `unfreezeDepositListDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `unfreezeDepositListDTO.mobile` | 手机号 | `` | `false` | `string` | `` |
| `unfreezeDepositListDTO.status` | 执行状态,可用值:0=待执行,1=已执行 | `` | `false` | `string(int32)` | `` |
| `unfreezeDepositListDTO.applyStartTime` | 申请开始时间 | `` | `false` | `string` | `` |
| `unfreezeDepositListDTO.applyEndTime` | 申请结束时间 | `` | `false` | `string` | `` |
| `unfreezeDepositListDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |

## 06.字典接口 / 分配天数

- Method: `POST`
- Path: `/mx-ce-system/api/enterprise/assignDays`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/assignDays`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseAssignDaysDTO` | 企业分配天数DTO | `body` | `true` | `EnterpriseAssignDaysDTO` | `EnterpriseAssignDaysDTO` |
| `enterpriseAssignDaysDTO.enterpriseId` | 企业客户ID | `` | `false` | `integer(int64)` | `` |
| `enterpriseAssignDaysDTO.mobile` | 手机号 | `` | `true` | `string` | `` |
| `enterpriseAssignDaysDTO.assignDays` | 分配天数 | `` | `true` | `integer(int32)` | `` |
| `enterpriseAssignDaysDTO.remark` | 备注 | `` | `false` | `string` | `` |
| `enterpriseAssignDaysDTO.modelId` | 型号id | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 查询企业首页信息

- Method: `GET`
- Path: `/mx-ce-system/api/enterprise/balance/{id}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/balance/{id}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` |  | `path` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 获取编辑信息

- Method: `GET`
- Path: `/mx-ce-system/api/enterprise/edit/{id}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/edit/{id}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` |  | `path` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 个人信息

- Method: `GET`
- Path: `/mx-ce-system/api/enterprise/info/{id}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/info/{id}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` |  | `path` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 我的账户-天数计费

- Method: `POST`
- Path: `/mx-ce-system/api/enterprise/myAccount`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/myAccount`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `myAccountDto` | 我的账户-天数计费查询参数 | `body` | `true` | `MyAccountDto` | `MyAccountDto` |
| `myAccountDto.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `myAccountDto.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `myAccountDto.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `myAccountDto.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `myAccountDto.enterpriseId` | 企业id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 企业员工订单审核

- Method: `POST`
- Path: `/mx-ce-system/api/enterprise/order/audit`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/order/audit`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseOrderAuditDTO` | 入参实体类 | `body` | `true` | `EnterpriseOrderAuditDTO` | `EnterpriseOrderAuditDTO` |
| `enterpriseOrderAuditDTO.id` | 订单ID | `` | `true` | `integer(int64)` | `` |
| `enterpriseOrderAuditDTO.enterpriseId` | 企业客户ID | `` | `true` | `integer(int64)` | `` |
| `enterpriseOrderAuditDTO.auditStatus` | 审核状态,2=审核、3=驳回 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 企业员工订单审核列表

- Method: `POST`
- Path: `/mx-ce-system/api/enterprise/order/list`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/order/list`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseOrderListDTO` | 入参实体类 | `body` | `true` | `EnterpriseOrderListDTO` | `EnterpriseOrderListDTO` |
| `enterpriseOrderListDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `enterpriseOrderListDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `enterpriseOrderListDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `enterpriseOrderListDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `enterpriseOrderListDTO.enterpriseId` | 企业客户ID | `` | `true` | `integer(int64)` | `` |
| `enterpriseOrderListDTO.keyword` | 关键字,姓名或手机号 | `` | `false` | `string` | `` |
| `enterpriseOrderListDTO.status` | 订单状态,可用值:1=待审核,2=已审核,3=驳回 | `` | `false` | `string(int32)` | `` |

## 06.字典接口 / 企业员工订单状态下拉列表

- Method: `GET`
- Path: `/mx-ce-system/api/enterprise/order/status`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/order/status`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 根据手机号搜索企业员工姓名

- Method: `GET`
- Path: `/mx-ce-system/api/enterprise/searchStaffName`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/searchStaffName`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `mobile` | 手机号 | `query` | `true` | `string` | `` |

## 06.字典接口 / 企业客户下拉列表

- Method: `GET`
- Path: `/mx-ce-system/api/enterprise/select`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/select`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `keyWords` | 关键字 | `query` | `false` | `string` | `` |

## 06.字典接口 / 企业员工新增

- Method: `POST`
- Path: `/mx-ce-system/api/enterprise/staff/add`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/staff/add`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseStaffAddDTO` | 入参实体类 | `body` | `true` | `EnterpriseStaffAddDTO` | `EnterpriseStaffAddDTO` |
| `enterpriseStaffAddDTO.enterpriseId` | 企业客户ID | `` | `true` | `integer(int64)` | `` |
| `enterpriseStaffAddDTO.userId` | 用户ID | `` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 企业员工开启-关闭免审

- Method: `PUT`
- Path: `/mx-ce-system/api/enterprise/staff/audit`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/staff/audit`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseStaffAuditDTO` | 入参实体类 | `body` | `true` | `EnterpriseStaffAuditDTO` | `EnterpriseStaffAuditDTO` |
| `enterpriseStaffAuditDTO.id` | 企业员工ID | `` | `true` | `integer(int64)` | `` |
| `enterpriseStaffAuditDTO.isAudit` | 免审 | `` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 授权企业管理

- Method: `PUT`
- Path: `/mx-ce-system/api/enterprise/staff/authorize`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/staff/authorize`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseManagementDTO` | 企业管理实体类 | `body` | `true` | `EnterpriseManagementDTO` | `EnterpriseManagementDTO` |
| `enterpriseManagementDTO.enterpriseManagement` | 是否授权企业子管理,可用值:0=是,1=否 | `` | `false` | `string` | `` |
| `enterpriseManagementDTO.id` | 企业员工id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 企业员工授权-取消企业免押

- Method: `PUT`
- Path: `/mx-ce-system/api/enterprise/staff/deposit`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/staff/deposit`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseStaffDepositDTO` | 入参实体类 | `body` | `true` | `EnterpriseStaffDepositDTO` | `EnterpriseStaffDepositDTO` |
| `enterpriseStaffDepositDTO.id` | 企业员工ID | `` | `true` | `integer(int64)` | `` |
| `enterpriseStaffDepositDTO.isDeposit` | 企业免押 | `` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 用户列表

- Method: `POST`
- Path: `/mx-ce-system/api/enterprise/staff/list`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/staff/list`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseStaffListDTO` | 入参实体类 | `body` | `true` | `EnterpriseStaffListDTO` | `EnterpriseStaffListDTO` |
| `enterpriseStaffListDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `enterpriseStaffListDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `enterpriseStaffListDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `enterpriseStaffListDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `enterpriseStaffListDTO.enterpriseId` | 企业客户ID | `` | `true` | `integer(int64)` | `` |
| `enterpriseStaffListDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `enterpriseStaffListDTO.mobile` | 电话 | `` | `false` | `string` | `` |
| `enterpriseStaffListDTO.status` | 用户状态,可用值:0=禁用,1=启用 | `` | `false` | `string(int32)` | `` |
| `enterpriseStaffListDTO.keyword` | 手机号/姓名 关键字查询,中间不能有空格 | `` | `false` | `string` | `` |

## 06.字典接口 / 企业员工套餐订单完结

- Method: `POST`
- Path: `/mx-ce-system/api/enterprise/staff/mealOrderClose`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/staff/mealOrderClose`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseCloseOrderDTO` | 完结订单 | `body` | `true` | `EnterpriseCloseOrderDTO` | `EnterpriseCloseOrderDTO` |
| `enterpriseCloseOrderDTO.mealOrderId` | 完结套餐id | `` | `false` | `integer(int64)` | `` |
| `enterpriseCloseOrderDTO.reason` | 完结原因 | `` | `false` | `string` | `` |

## 06.字典接口 / 企业员工套餐订单-统计

- Method: `GET`
- Path: `/mx-ce-system/api/enterprise/staff/mealOrderCount/{enterpriseId}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/staff/mealOrderCount/{enterpriseId}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseId` |  | `path` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 企业员工套餐订单列表

- Method: `POST`
- Path: `/mx-ce-system/api/enterprise/staff/mealOrderList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/staff/mealOrderList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseStaffMealOrderDTO` | 入参实体类 | `body` | `true` | `EnterpriseStaffMealOrderDTO` | `EnterpriseStaffMealOrderDTO` |
| `enterpriseStaffMealOrderDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `enterpriseStaffMealOrderDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `enterpriseStaffMealOrderDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `enterpriseStaffMealOrderDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `enterpriseStaffMealOrderDTO.enterpriseId` | 企业客户ID | `` | `true` | `integer(int64)` | `` |
| `enterpriseStaffMealOrderDTO.keyWords` | 关键字,手机号/姓名 | `` | `false` | `string` | `` |
| `enterpriseStaffMealOrderDTO.status` | 订单状态:3=已逾期,4=已完结,5=待取电,6=已取电,7=冻结中;8=超时未换电 | `` | `false` | `integer(int32)` | `` |
| `enterpriseStaffMealOrderDTO.startTime` | 开始日期 | `` | `false` | `string` | `` |
| `enterpriseStaffMealOrderDTO.endTime` | 结束时间 | `` | `false` | `string` | `` |

## 06.字典接口 / 企业员工套餐订单日志

- Method: `POST`
- Path: `/mx-ce-system/api/enterprise/staff/mealOrderLog/{mealOrderId}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/staff/mealOrderLog/{mealOrderId}`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `mealOrderId` |  | `path` | `true` | `integer(int64)` | `` |
| `apiPageDTO` | 分页数据 | `body` | `true` | `ApiPageDTO` | `ApiPageDTO` |
| `apiPageDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `apiPageDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `apiPageDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `apiPageDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |

## 06.字典接口 / 续租企业员工套餐订单

- Method: `POST`
- Path: `/mx-ce-system/api/enterprise/staff/mealOrderRenew/{mealOrderId}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/staff/mealOrderRenew/{mealOrderId}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `mealOrderId` |  | `path` | `true` | `integer(int64)` | `` |
| `enterpriseId` | 企业客户ID | `query` | `true` | `integer(int64)` | `` |
| `remark` |  | `query` | `false` | `string` | `` |
| `days` |  | `query` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 企业员工新增前信息查询

- Method: `GET`
- Path: `/mx-ce-system/api/enterprise/staff/query/{mobile}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/staff/query/{mobile}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `mobile` |  | `path` | `true` | `string` | `` |

## 06.字典接口 / 企业员工禁启用

- Method: `PUT`
- Path: `/mx-ce-system/api/enterprise/staff/status`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/staff/status`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseStaffStatusDTO` | 入参实体类 | `body` | `true` | `EnterpriseStaffStatusDTO` | `EnterpriseStaffStatusDTO` |
| `enterpriseStaffStatusDTO.id` | 企业员工ID | `` | `true` | `integer(int64)` | `` |
| `enterpriseStaffStatusDTO.status` | 状态,可用值:0=禁用,1=启用 | `` | `true` | `string(int32)` | `` |

## 06.字典接口 / 企业统计指标卡片

- Method: `GET`
- Path: `/mx-ce-system/api/enterprise/statistics/{enterpriseId}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/statistics/{enterpriseId}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseId` |  | `path` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 企业客户交易明细

- Method: `POST`
- Path: `/mx-ce-system/api/enterprise/transaction/list`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/transaction/list`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseTransactionDTO` | 入参实体类 | `body` | `true` | `EnterpriseTransactionDTO` | `EnterpriseTransactionDTO` |
| `enterpriseTransactionDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `enterpriseTransactionDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `enterpriseTransactionDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `enterpriseTransactionDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `enterpriseTransactionDTO.enterpriseId` | 企业客户ID | `` | `true` | `integer(int64)` | `` |
| `enterpriseTransactionDTO.type` | 消费类型,可用值:1=审核消费,2=押金消费,3=租金退款,4=押金退款,5=充值,6=扣款,7=续租消费,8=天数转让,9=天数退回,10=天数归还,11=余额划入,12=余额划出,13=天数划入,14=天数划出 | `` | `false` | `string(int32)` | `` |

## 06.字典接口 / 天数池交易明细

- Method: `POST`
- Path: `/mx-ce-system/api/enterprise/transactions`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/transactions`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseTransactionsDTO` | 交易明细查询参数 | `body` | `true` | `EnterpriseTransactionsDTO` | `EnterpriseTransactionsDTO` |
| `enterpriseTransactionsDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `enterpriseTransactionsDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `enterpriseTransactionsDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `enterpriseTransactionsDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `enterpriseTransactionsDTO.keyword` | 模糊查询 | `` | `false` | `string` | `` |
| `enterpriseTransactionsDTO.type` | 交易类型,可用值:1=审核消费,2=押金消费,3=租金退款,4=押金退款,5=充值,6=扣款,7=续租消费,8=天数转让,9=天数退回,10=天数归还,11=余额划入,12=余额划出,13=天数划入,14=天数划出 | `` | `false` | `string` | `` |
| `enterpriseTransactionsDTO.enterpriseId` | 企业客户ID | `` | `false` | `integer(int64)` | `` |
| `enterpriseTransactionsDTO.dayOrderSn` | 天数池商品号 | `` | `false` | `string` | `` |

## 06.字典接口 / 近一周趋势（合并接口）

- Method: `GET`
- Path: `/mx-ce-system/api/enterprise/trend/all/{enterpriseId}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/enterprise/trend/all/{enterpriseId}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseId` |  | `path` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 新增渠道用户收款账户

- Method: `POST`
- Path: `/mx-ce-system/api/channel/terminal/addChannelAccount`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/channel/terminal/addChannelAccount`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `addChannelAccountDTO` | 添加渠道账户DTO | `body` | `true` | `AddChannelAccountDTO` | `AddChannelAccountDTO` |
| `addChannelAccountDTO.type` | 收款类型 1=微信2=支付宝 | `` | `true` | `integer(int32)` | `` |
| `addChannelAccountDTO.mobile` | 收款人手机号 | `` | `true` | `string` | `` |
| `addChannelAccountDTO.name` | 收款人姓名 | `` | `true` | `string` | `` |
| `addChannelAccountDTO.account` | 收款账号 | `` | `true` | `string` | `` |

## 06.字典接口 / 渠道用户账户提现

- Method: `POST`
- Path: `/mx-ce-system/api/channel/terminal/channelAccountWithdraw`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/channel/terminal/channelAccountWithdraw`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `channelAccountWithdrawDTO` | 渠道账户提现DTO | `body` | `true` | `ChannelAccountWithdrawDTO` | `ChannelAccountWithdrawDTO` |
| `channelAccountWithdrawDTO.collectionAccountId` | 收款账户编号 | `` | `true` | `integer(int64)` | `` |
| `channelAccountWithdrawDTO.money` | 提现金额,提现金额不能低于0.1,精准到小数点后两位 | `` | `true` | `number` | `` |

## 06.字典接口 / 渠道删除收款账户

- Method: `DELETE`
- Path: `/mx-ce-system/api/channel/terminal/deleteChannelAccount`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/channel/terminal/deleteChannelAccount`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `collectionAccountId` | 收款账户id | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 查询用户收款账户详情

- Method: `GET`
- Path: `/mx-ce-system/api/channel/terminal/getChannelAccountDetail`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/channel/terminal/getChannelAccountDetail`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 收款账户id | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 获取渠道用户收款账户列表

- Method: `POST`
- Path: `/mx-ce-system/api/channel/terminal/getChannelAccountList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/channel/terminal/getChannelAccountList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `apiPageDTO` | 分页数据 | `body` | `true` | `ApiPageDTO` | `ApiPageDTO` |
| `apiPageDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `apiPageDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `apiPageDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `apiPageDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |

## 06.字典接口 / 首页

- Method: `GET`
- Path: `/mx-ce-system/api/channel/terminal/getChannelIncomeDetail`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/channel/terminal/getChannelIncomeDetail`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 获取渠道个人信息

- Method: `GET`
- Path: `/mx-ce-system/api/channel/terminal/getChannelInfo`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/channel/terminal/getChannelInfo`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 渠道用户推广二维码

- Method: `GET`
- Path: `/mx-ce-system/api/channel/terminal/getChannelPromotionQrCode`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/channel/terminal/getChannelPromotionQrCode`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 查询渠道用户默认收款账户详情,如果没有默认收款账户则返回空data

- Method: `GET`
- Path: `/mx-ce-system/api/channel/terminal/getDefaultChannelAccount`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/channel/terminal/getDefaultChannelAccount`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 收入明细

- Method: `POST`
- Path: `/mx-ce-system/api/channel/terminal/getIncomeDetail`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/channel/terminal/getIncomeDetail`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `channelCustomersTradeDTO` | 渠道客户交易 | `body` | `true` | `ChannelCustomersTradeDTO` | `ChannelCustomersTradeDTO` |
| `channelCustomersTradeDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `channelCustomersTradeDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `channelCustomersTradeDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `channelCustomersTradeDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `channelCustomersTradeDTO.id` | 渠道id | `` | `false` | `integer(int64)` | `` |
| `channelCustomersTradeDTO.commissionType` | 返佣类型 1=首单 2=续租 3=提现 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 推广明细

- Method: `POST`
- Path: `/mx-ce-system/api/channel/terminal/getPromotionDetail`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/channel/terminal/getPromotionDetail`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `umsPromotionDetailDTO` | 推广明细 | `body` | `true` | `UmsPromotionDetailDTO` | `UmsPromotionDetailDTO` |
| `umsPromotionDetailDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `umsPromotionDetailDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `umsPromotionDetailDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `umsPromotionDetailDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `umsPromotionDetailDTO.id` | 渠道id | `` | `false` | `integer(int64)` | `` |
| `umsPromotionDetailDTO.status` | 用户状态 1=待激活 2=使用中 3=已退网 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 渠道编辑修改收款账户

- Method: `PUT`
- Path: `/mx-ce-system/api/channel/terminal/updateChannelAccount`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/channel/terminal/updateChannelAccount`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `addChannelUpdateAccountDTO` | 添加渠道账户DTO | `body` | `true` | `AddChannelUpdateAccountDTO` | `AddChannelUpdateAccountDTO` |
| `addChannelUpdateAccountDTO.collectionAccountId` | 收款账户编号 | `` | `true` | `integer(int64)` | `` |
| `addChannelUpdateAccountDTO.type` | 收款类型 1=微信2=支付宝 | `` | `true` | `integer(int32)` | `` |
| `addChannelUpdateAccountDTO.mobile` | 收款人手机号 | `` | `true` | `string` | `` |
| `addChannelUpdateAccountDTO.name` | 收款人姓名 | `` | `true` | `string` | `` |
| `addChannelUpdateAccountDTO.account` | 收款账号 | `` | `true` | `string` | `` |

## 06.字典接口 / 编辑修改渠道用户的默认收款账户

- Method: `PATCH`
- Path: `/mx-ce-system/api/channel/terminal/updateDefaultChannelAccount`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/channel/terminal/updateDefaultChannelAccount`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 收款账户id | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / pc端告警电池信息列表

- Method: `POST`
- Path: `/mx-ce-system/api/alarmRecords/alarmBatteryList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/alarmRecords/alarmBatteryList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `alarmBatteryRecordsQueryDTO` | 电池报警记录查询DTO | `body` | `true` | `AlarmBatteryRecordsQueryDTO` | `AlarmBatteryRecordsQueryDTO` |
| `alarmBatteryRecordsQueryDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `alarmBatteryRecordsQueryDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `alarmBatteryRecordsQueryDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `alarmBatteryRecordsQueryDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `alarmBatteryRecordsQueryDTO.battery` | 筛选条件,告警设备号 | `` | `false` | `string` | `` |
| `alarmBatteryRecordsQueryDTO.brand` | 筛选条件,品牌 | `` | `false` | `integer(int32)` | `` |
| `alarmBatteryRecordsQueryDTO.model` | 筛选条件,型号 | `` | `false` | `integer(int32)` | `` |
| `alarmBatteryRecordsQueryDTO.alarmName` | 筛选条件,告警名称 | `` | `false` | `string` | `` |
| `alarmBatteryRecordsQueryDTO.cityCode` | 筛选条件,城市编码,厦门或者广州 | `` | `false` | `string` | `` |
| `alarmBatteryRecordsQueryDTO.createDate` | 开始日期,筛选条件 | `` | `false` | `string` | `` |
| `alarmBatteryRecordsQueryDTO.endTime` | 结束时间,筛选条件 | `` | `false` | `string` | `` |

## 06.字典接口 / 电池告警名称

- Method: `GET`
- Path: `/mx-ce-system/api/alarmRecords/batteryAlarmNameList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/alarmRecords/batteryAlarmNameList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 电柜异常告警

- Method: `POST`
- Path: `/mx-ce-system/api/alarmRecords/cabinet`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/alarmRecords/cabinet`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `alarmCabinetDTO` | 电柜异常告警分页入参 | `body` | `true` | `AlarmCabinetDTO` | `AlarmCabinetDTO` |
| `alarmCabinetDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `alarmCabinetDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `alarmCabinetDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `alarmCabinetDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `alarmCabinetDTO.cbId` | 换电柜编号 | `` | `false` | `string` | `` |
| `alarmCabinetDTO.cbName` | 电柜名称 | `` | `false` | `string` | `` |
| `alarmCabinetDTO.batteryId` | 电池编号 | `` | `false` | `string` | `` |
| `alarmCabinetDTO.status` | 告警类型,1=单仓故障,2=整柜故障,3=电池故障 | `` | `false` | `integer(int32)` | `` |
| `alarmCabinetDTO.alarmName` | 告警名称 | `` | `false` | `string` | `` |
| `alarmCabinetDTO.createDate` | 开始日期 | `` | `false` | `string` | `` |
| `alarmCabinetDTO.endTime` | 结束时间 | `` | `false` | `string` | `` |
| `alarmCabinetDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |

## 06.字典接口 / 电柜告警类型-告警名称联动

- Method: `GET`
- Path: `/mx-ce-system/api/alarmRecords/cabinetAlarmNameList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/alarmRecords/cabinetAlarmNameList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetType` |  | `query` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 换电柜离线记录

- Method: `POST`
- Path: `/mx-ce-system/api/alarmRecords/cabinetOfflineList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/alarmRecords/cabinetOfflineList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cabinetOfflineDTO` | 换电柜离线数据查询DTO | `body` | `true` | `CabinetOfflineDTO` | `CabinetOfflineDTO` |
| `cabinetOfflineDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `cabinetOfflineDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `cabinetOfflineDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `cabinetOfflineDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `cabinetOfflineDTO.cbId` | 换电柜编号 | `` | `false` | `string` | `` |
| `cabinetOfflineDTO.startTime` | 开始日期 | `` | `false` | `string` | `` |
| `cabinetOfflineDTO.endTime` | 结束时间 | `` | `false` | `string` | `` |
| `cabinetOfflineDTO.cityCode` | 城市编码 | `` | `false` | `string` | `` |

## 06.字典接口 / 导出告警电池信息列表

- Method: `POST`
- Path: `/mx-ce-system/api/alarmRecords/exportAlarmBatteryList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/alarmRecords/exportAlarmBatteryList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `alarmBatteryRecordsQueryDTO` | 电池报警记录查询DTO | `body` | `true` | `AlarmBatteryRecordsQueryDTO` | `AlarmBatteryRecordsQueryDTO` |
| `alarmBatteryRecordsQueryDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `alarmBatteryRecordsQueryDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `alarmBatteryRecordsQueryDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `alarmBatteryRecordsQueryDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `alarmBatteryRecordsQueryDTO.battery` | 筛选条件,告警设备号 | `` | `false` | `string` | `` |
| `alarmBatteryRecordsQueryDTO.brand` | 筛选条件,品牌 | `` | `false` | `integer(int32)` | `` |
| `alarmBatteryRecordsQueryDTO.model` | 筛选条件,型号 | `` | `false` | `integer(int32)` | `` |
| `alarmBatteryRecordsQueryDTO.alarmName` | 筛选条件,告警名称 | `` | `false` | `string` | `` |
| `alarmBatteryRecordsQueryDTO.cityCode` | 筛选条件,城市编码,厦门或者广州 | `` | `false` | `string` | `` |
| `alarmBatteryRecordsQueryDTO.createDate` | 开始日期,筛选条件 | `` | `false` | `string` | `` |
| `alarmBatteryRecordsQueryDTO.endTime` | 结束时间,筛选条件 | `` | `false` | `string` | `` |

## 06.字典接口 / 电柜异常告警导出

- Method: `POST`
- Path: `/mx-ce-system/api/alarmRecords/exportCabinet`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/alarmRecords/exportCabinet`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `alarmCabinetDTO` | 电柜异常告警分页入参 | `body` | `true` | `AlarmCabinetDTO` | `AlarmCabinetDTO` |
| `alarmCabinetDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `alarmCabinetDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `alarmCabinetDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `alarmCabinetDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `alarmCabinetDTO.cbId` | 换电柜编号 | `` | `false` | `string` | `` |
| `alarmCabinetDTO.cbName` | 电柜名称 | `` | `false` | `string` | `` |
| `alarmCabinetDTO.batteryId` | 电池编号 | `` | `false` | `string` | `` |
| `alarmCabinetDTO.status` | 告警类型,1=单仓故障,2=整柜故障,3=电池故障 | `` | `false` | `integer(int32)` | `` |
| `alarmCabinetDTO.alarmName` | 告警名称 | `` | `false` | `string` | `` |
| `alarmCabinetDTO.createDate` | 开始日期 | `` | `false` | `string` | `` |
| `alarmCabinetDTO.endTime` | 结束时间 | `` | `false` | `string` | `` |
| `alarmCabinetDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |

## 06.字典接口 / 告警信息查询列表

- Method: `POST`
- Path: `/mx-ce-system/api/alarmRecords/screenAlarmRecords`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/alarmRecords/screenAlarmRecords`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `alarmRecordsQueryDTO` | 异常告警信息筛选条件 | `body` | `true` | `AlarmRecordsQueryDTO` | `AlarmRecordsQueryDTO` |
| `alarmRecordsQueryDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `alarmRecordsQueryDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `alarmRecordsQueryDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `alarmRecordsQueryDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `alarmRecordsQueryDTO.alarmDevice` | 筛选条件,告警设备号 | `` | `false` | `string` | `` |
| `alarmRecordsQueryDTO.status` | 筛选条件，状态,1=告警中0=已解除 | `` | `false` | `integer(int32)` | `` |
| `alarmRecordsQueryDTO.deviceType` | 筛选条件,故障类型,1=电柜或者2=电池 | `` | `false` | `integer(int32)` | `` |
| `alarmRecordsQueryDTO.cityCode` | 筛选条件,城市编码,厦门或者广州 | `` | `false` | `string` | `` |
| `alarmRecordsQueryDTO.createDate` | 开始日期,筛选条件 | `` | `false` | `string` | `` |
| `alarmRecordsQueryDTO.endTime` | 结束时间,筛选条件 | `` | `false` | `string` | `` |

## 06.字典接口 / 获取报障详情

- Method: `POST`
- Path: `/mx-ce-system/api/protection/getProtection`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/protection/getProtection`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `protectionDetailsDTO` | 报障详情 | `body` | `true` | `ProtectionDetailsDTO` | `ProtectionDetailsDTO` |
| `protectionDetailsDTO.documentId` | 单据编号 | `` | `false` | `string` | `` |

## 06.字典接口 / 提交回复内容

- Method: `POST`
- Path: `/mx-ce-system/api/protection/replyProtection`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/protection/replyProtection`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `replyProtectionDTO` | 提交回复 | `body` | `true` | `ReplyProtectionDTO` | `ReplyProtectionDTO` |
| `replyProtectionDTO.replyDetails` | 回复详情 | `` | `true` | `string` | `` |
| `replyProtectionDTO.documentId` | 单据编号 | `` | `false` | `string` | `` |

## 06.字典接口 / 筛选查询

- Method: `POST`
- Path: `/mx-ce-system/api/protection/screenProtection`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/protection/screenProtection`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `protectionQueryDTO` | 故障筛选分页数据 | `body` | `true` | `ProtectionQueryDTO` | `ProtectionQueryDTO` |
| `protectionQueryDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `protectionQueryDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `protectionQueryDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `protectionQueryDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `protectionQueryDTO.keyWords` | 关键字,模糊查询 单据编号,姓名,手机号 | `` | `false` | `string` | `` |
| `protectionQueryDTO.status` | 筛选条件，状态,1=待回复2=已回复 | `` | `false` | `integer(int32)` | `` |
| `protectionQueryDTO.protectionType` | 筛选条件,故障类型,1=电池或者2=电柜3=APP | `` | `false` | `integer(int32)` | `` |
| `protectionQueryDTO.cityCode` | 筛选条件,城市编码 | `` | `false` | `string` | `` |
| `protectionQueryDTO.createDate` | 开始日期,筛选条件 | `` | `false` | `string(date)` | `` |
| `protectionQueryDTO.endTime` | 结束时间,筛选条件 | `` | `false` | `string(date)` | `` |

## 06.字典接口 / 变更手机号

- Method: `POST`
- Path: `/mx-ce-system/api/userManagement/changeMobile`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/userManagement/changeMobile`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `umsChangeMobile` | 变更手机号 | `body` | `true` | `UmsChangeMobile` | `UmsChangeMobile` |
| `umsChangeMobile.newMobile` | 新手机号 | `` | `false` | `string` | `` |
| `umsChangeMobile.id` | 用户id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 注册用户禁启用

- Method: `POST`
- Path: `/mx-ce-system/api/userManagement/enable`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/userManagement/enable`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 用户ID | `query` | `true` | `string` | `` |
| `status` | 状态 0=禁用、1=启用 | `query` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 手动实名

- Method: `POST`
- Path: `/mx-ce-system/api/userManagement/manualRealName`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/userManagement/manualRealName`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `manualRealNameDTO` | 手动实名入参 | `body` | `true` | `ManualRealNameDTO` | `ManualRealNameDTO` |
| `manualRealNameDTO.id` | 用户ID | `` | `true` | `integer(int64)` | `` |
| `manualRealNameDTO.realName` | 真实姓名 | `` | `true` | `string` | `` |
| `manualRealNameDTO.idCard` | 身份证号 | `` | `true` | `string` | `` |
| `manualRealNameDTO.idCardFront` | 身份证正面照片 | `` | `true` | `string` | `` |
| `manualRealNameDTO.idCardBack` | 身份证反面照片 | `` | `true` | `string` | `` |

## 06.字典接口 / 操作日志

- Method: `POST`
- Path: `/mx-ce-system/api/userManagement/operationLog`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/userManagement/operationLog`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `operationLogDTO` | 操作日志数据 | `body` | `true` | `OperationLogDTO` | `OperationLogDTO` |
| `operationLogDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `operationLogDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `operationLogDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `operationLogDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `operationLogDTO.id` | 用户ID | `` | `false` | `integer(int64)` | `` |
| `operationLogDTO.orderSn` | 订单编号 | `` | `false` | `string` | `` |

## 06.字典接口 / 查询商家账户余额-测试不对外开放

- Method: `GET`
- Path: `/mx-ce-system/api/userManagement/queryAccount`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/userManagement/queryAccount`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 实名认证记录导出

- Method: `POST`
- Path: `/mx-ce-system/api/userManagement/realNameUserExport`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/userManagement/realNameUserExport`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `realNameUserListDTO` | 入参实体类 | `body` | `true` | `RealNameUserListDTO` | `RealNameUserListDTO` |
| `realNameUserListDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `realNameUserListDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `realNameUserListDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `realNameUserListDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `realNameUserListDTO.userName` | 姓名 | `` | `false` | `string` | `` |
| `realNameUserListDTO.mobile` | 手机号,完整手机号 | `` | `false` | `string` | `` |

## 06.字典接口 / 实名认证记录

- Method: `POST`
- Path: `/mx-ce-system/api/userManagement/realNameUserList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/userManagement/realNameUserList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `realNameUserListDTO` | 入参实体类 | `body` | `true` | `RealNameUserListDTO` | `RealNameUserListDTO` |
| `realNameUserListDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `realNameUserListDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `realNameUserListDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `realNameUserListDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `realNameUserListDTO.userName` | 姓名 | `` | `false` | `string` | `` |
| `realNameUserListDTO.mobile` | 手机号,完整手机号 | `` | `false` | `string` | `` |

## 06.字典接口 / 余额充值

- Method: `GET`
- Path: `/mx-ce-system/api/userManagement/recharge`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/userManagement/recharge`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 用户ID | `query` | `true` | `integer(int64)` | `` |
| `balance` | 充值金额 | `query` | `true` | `number` | `` |

## 06.字典接口 / 注册用户详情

- Method: `GET`
- Path: `/mx-ce-system/api/userManagement/registerUser`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/userManagement/registerUser`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 用户ID | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 注册用户列表

- Method: `POST`
- Path: `/mx-ce-system/api/userManagement/registerUserList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/userManagement/registerUserList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `registerUserListDTO` | 入参实体类 | `body` | `true` | `RegisterUserListDTO` | `RegisterUserListDTO` |
| `registerUserListDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `registerUserListDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `registerUserListDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `registerUserListDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `registerUserListDTO.userName` | 姓名 | `` | `false` | `string` | `` |
| `registerUserListDTO.mobile` | 手机号 | `` | `false` | `string` | `` |
| `registerUserListDTO.userId` | 用户ID | `` | `false` | `integer(int32)` | `` |
| `registerUserListDTO.status` | 用户状态,可用值:0=禁用,1=启用,2=注销 | `` | `false` | `string(int32)` | `` |
| `registerUserListDTO.realNameStatus` | 实名状态 1=已实名 0=未实名 | `` | `false` | `integer(int32)` | `` |
| `registerUserListDTO.idCard` | 完整身份证号 | `` | `false` | `string` | `` |
| `registerUserListDTO.remark` | 备注 | `` | `false` | `string` | `` |
| `registerUserListDTO.registerStartTime` | 注册开始时间 | `` | `false` | `string` | `` |
| `registerUserListDTO.registerEndTime` | 注册结束时间 | `` | `false` | `string` | `` |

## 06.字典接口 / 注册用户列表导出

- Method: `POST`
- Path: `/mx-ce-system/api/userManagement/registerUserListExport`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/userManagement/registerUserListExport`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `registerUserListDTO` | 入参实体类 | `body` | `true` | `RegisterUserListDTO` | `RegisterUserListDTO` |
| `registerUserListDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `registerUserListDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `registerUserListDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `registerUserListDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `registerUserListDTO.userName` | 姓名 | `` | `false` | `string` | `` |
| `registerUserListDTO.mobile` | 手机号 | `` | `false` | `string` | `` |
| `registerUserListDTO.userId` | 用户ID | `` | `false` | `integer(int32)` | `` |
| `registerUserListDTO.status` | 用户状态,可用值:0=禁用,1=启用,2=注销 | `` | `false` | `string(int32)` | `` |
| `registerUserListDTO.realNameStatus` | 实名状态 1=已实名 0=未实名 | `` | `false` | `integer(int32)` | `` |
| `registerUserListDTO.idCard` | 完整身份证号 | `` | `false` | `string` | `` |
| `registerUserListDTO.remark` | 备注 | `` | `false` | `string` | `` |
| `registerUserListDTO.registerStartTime` | 注册开始时间 | `` | `false` | `string` | `` |
| `registerUserListDTO.registerEndTime` | 注册结束时间 | `` | `false` | `string` | `` |

## 06.字典接口 / 重置用户密码

- Method: `PATCH`
- Path: `/mx-ce-system/api/userManagement/resetPassword/{id}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/userManagement/resetPassword/{id}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` |  | `path` | `true` | `integer(int64)` | `` |
| `password` | 重置密码 | `query` | `true` | `string` | `` |

## 06.字典接口 / 重置用户验证码

- Method: `PATCH`
- Path: `/mx-ce-system/api/userManagement/resetUserCode/{id}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/userManagement/resetUserCode/{id}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` |  | `path` | `true` | `integer(int64)` | `` |
| `mobile` | 手机号 | `query` | `true` | `string` | `` |
| `smsCode` | 临时验证码 | `query` | `true` | `string` | `` |

## 06.字典接口 / 商家转账到个人账户-测试不对外开放

- Method: `GET`
- Path: `/mx-ce-system/api/userManagement/transfer`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/userManagement/transfer`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `amount` | 转账金额 | `query` | `true` | `string` | `` |
| `payeeAccount` | 收款方账户 | `query` | `true` | `string` | `` |
| `payeeRealName` | 收款方真实姓名 | `query` | `true` | `string` | `` |

## 06.字典接口 / 修改注册用户低电量提醒状态

- Method: `PATCH`
- Path: `/mx-ce-system/api/userManagement/updatePushStatus/{id}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/userManagement/updatePushStatus/{id}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` |  | `path` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 活动类型列表

- Method: `GET`
- Path: `/mx-ce-system/api/coupon/activityTypeList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/coupon/activityTypeList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 新增优惠券

- Method: `POST`
- Path: `/mx-ce-system/api/coupon/addCoupon`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/coupon/addCoupon`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `addCouponDTO` | 新增优惠券 | `body` | `true` | `AddCouponDTO` | `AddCouponDTO` |
| `addCouponDTO.id` | id 新增时不需要,编辑时传入 | `` | `false` | `integer(int64)` | `` |
| `addCouponDTO.couponName` | 优惠券名称 | `` | `true` | `string` | `` |
| `addCouponDTO.couponType` | 优惠券类型 1=通用券 2=指定券 | `` | `true` | `integer(int32)` | `` |
| `addCouponDTO.couponAmount` | 优惠券金额 | `` | `true` | `number` | `` |
| `addCouponDTO.preferentialMethod` | 优惠方式 1=租金优惠券 2=押金优惠券 | `` | `true` | `integer(int32)` | `` |
| `addCouponDTO.mealId` | 指定套餐编号 | `` | `false` | `string` | `` |
| `addCouponDTO.superimposing` | 是否叠加 1=是 2=否 | `` | `false` | `integer(int32)` | `` |
| `addCouponDTO.validityStartTime` | 有效期,开始时间 | `` | `false` | `string(date)` | `` |
| `addCouponDTO.validityEndTime` | 有效期,结束时间 | `` | `false` | `string(date)` | `` |
| `addCouponDTO.cityCode` | 使用城市 | `` | `true` | `string` | `` |
| `addCouponDTO.activityType` | 活动类型 1=注册送券 2=下单送券 3=邀请送券 4=收到送券 5=生日送券 6=登入送券 7=退电挽留券 | `` | `true` | `integer(int32)` | `` |
| `addCouponDTO.numberCoupon` | 可叠加数量 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 添加套餐编号

- Method: `POST`
- Path: `/mx-ce-system/api/coupon/addMealId`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/coupon/addMealId`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `addMealDTO` | AddMealDTO | `body` | `true` | `AddMealDTO` | `AddMealDTO` |
| `addMealDTO.couponId` |  | `` | `false` | `integer(int64)` | `` |
| `addMealDTO.mealId` |  | `` | `false` | `string` | `` |

## 06.字典接口 / 批量回收优惠券

- Method: `POST`
- Path: `/mx-ce-system/api/coupon/batchRecycleCoupon`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/coupon/batchRecycleCoupon`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `batchRecycleRequest` | BatchRecycleRequest | `body` | `true` | `BatchRecycleRequest` | `BatchRecycleRequest` |
| `batchRecycleRequest.couponIds` |  | `` | `true` | `array` | `integer(int64)` |

## 06.字典接口 / 作废优惠券

- Method: `GET`
- Path: `/mx-ce-system/api/coupon/cancelCoupon`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/coupon/cancelCoupon`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `couponId` | 优惠券id | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 优惠券操作日志

- Method: `POST`
- Path: `/mx-ce-system/api/coupon/couponLog`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/coupon/couponLog`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `couponLogDTO` | 优惠券日志 | `body` | `true` | `CouponLogDTO` | `CouponLogDTO` |
| `couponLogDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `couponLogDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `couponLogDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `couponLogDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `couponLogDTO.couponId` | 优惠券id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 优惠券发放记录列表

- Method: `POST`
- Path: `/mx-ce-system/api/coupon/couponSendRecord`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/coupon/couponSendRecord`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `couponSendRecordDTO` | 优惠券发放记录 | `body` | `true` | `CouponSendRecordDTO` | `CouponSendRecordDTO` |
| `couponSendRecordDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `couponSendRecordDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `couponSendRecordDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `couponSendRecordDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `couponSendRecordDTO.iphoneNumber` | 手机号 | `` | `false` | `string` | `` |
| `couponSendRecordDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `couponSendRecordDTO.couponName` | 优惠券名称 | `` | `false` | `string` | `` |
| `couponSendRecordDTO.status` | 使用状态 1=待使用 2=已使用 3=已过期 4=已回收 | `` | `false` | `integer(int32)` | `` |
| `couponSendRecordDTO.activityType` | 活动类型 1=注册送券 2=下单送券 3=邀请送券 4=手动送券 5=生日送券 6=登入送券 | `` | `false` | `integer(int32)` | `` |
| `couponSendRecordDTO.cityCode` | 城市编码 | `` | `false` | `string` | `` |

## 06.字典接口 / 优惠券状态列表

- Method: `GET`
- Path: `/mx-ce-system/api/coupon/couponStatusList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/coupon/couponStatusList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 优惠券类型列表

- Method: `GET`
- Path: `/mx-ce-system/api/coupon/couponTypeList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/coupon/couponTypeList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 手机号导入模版下载

- Method: `GET`
- Path: `/mx-ce-system/api/coupon/download`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/coupon/download`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 生效优惠券

- Method: `GET`
- Path: `/mx-ce-system/api/coupon/effectiveCoupon`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/coupon/effectiveCoupon`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `couponId` | 优惠券id | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 导出优惠券发放记录

- Method: `POST`
- Path: `/mx-ce-system/api/coupon/exportCouponSendRecord`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/coupon/exportCouponSendRecord`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `couponSendRecordDTO` | 优惠券发放记录 | `body` | `true` | `CouponSendRecordDTO` | `CouponSendRecordDTO` |
| `couponSendRecordDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `couponSendRecordDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `couponSendRecordDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `couponSendRecordDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `couponSendRecordDTO.iphoneNumber` | 手机号 | `` | `false` | `string` | `` |
| `couponSendRecordDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `couponSendRecordDTO.couponName` | 优惠券名称 | `` | `false` | `string` | `` |
| `couponSendRecordDTO.status` | 使用状态 1=待使用 2=已使用 3=已过期 4=已回收 | `` | `false` | `integer(int32)` | `` |
| `couponSendRecordDTO.activityType` | 活动类型 1=注册送券 2=下单送券 3=邀请送券 4=手动送券 5=生日送券 6=登入送券 | `` | `false` | `integer(int32)` | `` |
| `couponSendRecordDTO.cityCode` | 城市编码 | `` | `false` | `string` | `` |

## 06.字典接口 / 批量派发优惠券

- Method: `POST`
- Path: `/mx-ce-system/api/coupon/importMobile`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/coupon/importMobile`
- Request type: `multipart/form-data`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `couponId` | 优惠券id | `query` | `true` | `integer(int64)` | `` |
| `file` |  | `query` | `true` | `file` | `` |

## 06.字典接口 / 套餐编号列表

- Method: `POST`
- Path: `/mx-ce-system/api/coupon/mealIdList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/coupon/mealIdList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `apiPageDTO` | 分页数据 | `body` | `true` | `ApiPageDTO` | `ApiPageDTO` |
| `apiPageDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `apiPageDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `apiPageDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `apiPageDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |

## 06.字典接口 / 优惠方式列表

- Method: `GET`
- Path: `/mx-ce-system/api/coupon/preferentialMethodList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/coupon/preferentialMethodList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 回收优惠券

- Method: `GET`
- Path: `/mx-ce-system/api/coupon/recycleCoupon`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/coupon/recycleCoupon`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 优惠券id | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 派发优惠券

- Method: `POST`
- Path: `/mx-ce-system/api/coupon/sendCoupon`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/coupon/sendCoupon`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `sendCouponDTO` | 派发优惠券 | `body` | `true` | `SendCouponDTO` | `SendCouponDTO` |
| `sendCouponDTO.couponId` | 优惠券编号 | `` | `true` | `integer(int64)` | `` |
| `sendCouponDTO.mobile` | 手机号 | `` | `true` | `string` | `` |

## 06.字典接口 / 优惠券列表

- Method: `POST`
- Path: `/mx-ce-system/api/coupon/smsCouponList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/coupon/smsCouponList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `smsCouponListDTO` | 优惠券列表数据 | `body` | `true` | `SmsCouponListDTO` | `SmsCouponListDTO` |
| `smsCouponListDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `smsCouponListDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `smsCouponListDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `smsCouponListDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `smsCouponListDTO.startTime` | 时间范围,开始时间 | `` | `false` | `string` | `` |
| `smsCouponListDTO.endTime` | 时间范围,结束时间 | `` | `false` | `string` | `` |
| `smsCouponListDTO.couponName` | 优惠券名称 | `` | `false` | `string` | `` |
| `smsCouponListDTO.couponStatus` | 优惠券状态 1=待生效 2=生效中 3=已作废 4=已过期 | `` | `false` | `integer(int32)` | `` |
| `smsCouponListDTO.couponType` | 优惠券类型 1=通用券 2=指定券 | `` | `false` | `integer(int32)` | `` |
| `smsCouponListDTO.preferentialMethod` | 优惠方式 1=租金优惠券 2=押金优惠券 | `` | `false` | `integer(int32)` | `` |
| `smsCouponListDTO.cityCode` | 城市编码 | `` | `false` | `string` | `` |
| `smsCouponListDTO.activityType` | 活动类型 1=注册送券 2=下单送券 3=邀请送券 4=手动送券 5=生日送券 6=登入送券 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 绑定电池

- Method: `POST`
- Path: `/mx-ce-system/api/mealOperate/bindBattery`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/mealOperate/bindBattery`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `bindBatteryDTO` | 电池dto | `body` | `true` | `BindBatteryDTO` | `BindBatteryDTO` |
| `bindBatteryDTO.userId` | 用户id | `` | `false` | `integer(int64)` | `` |
| `bindBatteryDTO.batteryCode` | 电池编码 | `` | `false` | `string` | `` |

## 06.字典接口 / 完结订单

- Method: `POST`
- Path: `/mx-ce-system/api/mealOperate/closeOrder`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/mealOperate/closeOrder`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `closeOrderDTO` | 完结订单信息 | `body` | `true` | `CloseOrderDTO` | `CloseOrderDTO` |
| `closeOrderDTO.completionReason` | 完结原因 | `` | `true` | `string` | `` |
| `closeOrderDTO.orderSn` | 订单编号 | `` | `true` | `string` | `` |

## 06.字典接口 / 冻结订单

- Method: `POST`
- Path: `/mx-ce-system/api/mealOperate/frozenOrder`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/mealOperate/frozenOrder`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `frozenOrderDTO` | 冻结订单数据 | `body` | `true` | `FrozenOrderDTO` | `FrozenOrderDTO` |
| `frozenOrderDTO.thawingTime` | 解冻时间时间戳-用于营运端 | `` | `true` | `string` | `` |
| `frozenOrderDTO.freezeReason` | 冻结原因 | `` | `false` | `string` | `` |
| `frozenOrderDTO.freezeDay` | 冻结天数 | `` | `false` | `integer(int32)` | `` |
| `frozenOrderDTO.orderSn` | 订单编号 | `` | `false` | `string` | `` |

## 06.字典接口 / 查询订单日志

- Method: `POST`
- Path: `/mx-ce-system/api/mealOperate/orderLog`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/mealOperate/orderLog`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `operationLogDTO` | 操作日志数据 | `body` | `true` | `OperationLogDTO` | `OperationLogDTO` |
| `operationLogDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `operationLogDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `operationLogDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `operationLogDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `operationLogDTO.id` | 用户ID | `` | `false` | `integer(int64)` | `` |
| `operationLogDTO.orderSn` | 订单编号 | `` | `false` | `string` | `` |

## 06.字典接口 / 运营端套餐订单列表

- Method: `POST`
- Path: `/mx-ce-system/api/mealOperate/screenOperate`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/mealOperate/screenOperate`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `operateQueryDTO` | 套餐订单筛选查询数据 | `body` | `true` | `OperateQueryDTO` | `OperateQueryDTO` |
| `operateQueryDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `operateQueryDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `operateQueryDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `operateQueryDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `operateQueryDTO.status` | 筛选条件，状态,3=已逾期,4=已完结,,5=待取电,6=已取电,7=冻结中;8=超时未换电 11=已取消 | `` | `false` | `integer(int32)` | `` |
| `operateQueryDTO.cityCode` | 筛选条件,城市编码 | `` | `false` | `string` | `` |
| `operateQueryDTO.keywords` | 关键字,姓名,手机号,订单编号,电池编号 | `` | `false` | `string` | `` |
| `operateQueryDTO.createDate` | 开始日期,筛选条件 | `` | `false` | `string` | `` |
| `operateQueryDTO.endTime` | 结束时间,筛选条件 | `` | `false` | `string` | `` |

## 06.字典接口 / 运营端套餐订单-统计

- Method: `GET`
- Path: `/mx-ce-system/api/mealOperate/screenOperateCount`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/mealOperate/screenOperateCount`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 解冻订单

- Method: `POST`
- Path: `/mx-ce-system/api/mealOperate/UnfreezeOrders`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/mealOperate/UnfreezeOrders`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `unfreezeOrdersDTO` | 解冻订单信息 | `body` | `true` | `UnfreezeOrdersDTO` | `UnfreezeOrdersDTO` |
| `unfreezeOrdersDTO.orderSn` | 订单编号 | `` | `false` | `string` | `` |

## 06.字典接口 / 电池换绑

- Method: `PUT`
- Path: `/mx-ce-system/api/mealOperate/updateBattery`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/mealOperate/updateBattery`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `operateUpdateBatteryDTO` | 电池换绑信息 | `body` | `true` | `OperateUpdateBatteryDTO` | `OperateUpdateBatteryDTO` |
| `operateUpdateBatteryDTO.orderSn` | 订单编号 | `` | `false` | `string` | `` |
| `operateUpdateBatteryDTO.newBatteryId` |  | `` | `false` | `string` | `` |
| `operateUpdateBatteryDTO.oldBatteryId` |  | `` | `false` | `string` | `` |

## 06.字典接口 / 新增套餐购买数

- Method: `GET`
- Path: `/mx-ce-system/api/operationalDataStatistics/addByYearGroupStatusAndMonth/{year}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/operationalDataStatistics/addByYearGroupStatusAndMonth/{year}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `year` | 年份 | `path` | `true` | `string` | `` |
| `cityCode` | 城市编码 | `query` | `false` | `string` | `` |

## 06.字典接口 / 告警简报

- Method: `POST`
- Path: `/mx-ce-system/api/operationalDataStatistics/getAlarmBrief`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/operationalDataStatistics/getAlarmBrief`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `orderBrieDTO` | 筛选条件 | `body` | `true` | `OrderBrieDTO` | `OrderBrieDTO` |
| `orderBrieDTO.time` | 时间筛选  1=今日 2=昨日 3=近七天 4=本月 5=上月 | `` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 柜效简报

- Method: `POST`
- Path: `/mx-ce-system/api/operationalDataStatistics/getCabinetEfficiencyBrief`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/operationalDataStatistics/getCabinetEfficiencyBrief`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `orderBrieDTO` | 筛选条件 | `body` | `true` | `OrderBrieDTO` | `OrderBrieDTO` |
| `orderBrieDTO.time` | 时间筛选  1=今日 2=昨日 3=近七天 4=本月 5=上月 | `` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 站点换电次数排名

- Method: `POST`
- Path: `/mx-ce-system/api/operationalDataStatistics/getCabinetEfficiencyRank`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/operationalDataStatistics/getCabinetEfficiencyRank`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `orderBrieDTO` | 筛选条件 | `body` | `true` | `OrderBrieDTO` | `OrderBrieDTO` |
| `orderBrieDTO.time` | 时间筛选  1=今日 2=昨日 3=近七天 4=本月 5=上月 | `` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 换电数量（月）

- Method: `GET`
- Path: `/mx-ce-system/api/operationalDataStatistics/getChangeBatteryQuantity/{year}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/operationalDataStatistics/getChangeBatteryQuantity/{year}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `year` | 年份 | `path` | `true` | `string` | `` |
| `cityCode` | 城市编码 | `query` | `false` | `string` | `` |

## 06.字典接口 / 换电数量（时段）

- Method: `GET`
- Path: `/mx-ce-system/api/operationalDataStatistics/getChangeBatteryQuantityByTime/{day}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/operationalDataStatistics/getChangeBatteryQuantityByTime/{day}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `day` | 日期 | `path` | `true` | `string` | `` |
| `cityCode` | 城市编码 | `query` | `false` | `string` | `` |

## 06.字典接口 / 套餐用户类型统计

- Method: `POST`
- Path: `/mx-ce-system/api/operationalDataStatistics/getMealUserTypeStatistics`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/operationalDataStatistics/getMealUserTypeStatistics`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `orderBrieDTO` | 筛选条件 | `body` | `true` | `OrderBrieDTO` | `OrderBrieDTO` |
| `orderBrieDTO.time` | 时间筛选  1=今日 2=昨日 3=近七天 4=本月 5=上月 | `` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 新增代理商（企业客户）数

- Method: `GET`
- Path: `/mx-ce-system/api/operationalDataStatistics/getNewAgent/{year}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/operationalDataStatistics/getNewAgent/{year}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `year` | 年份 | `path` | `true` | `string` | `` |
| `cityCode` | 城市编码 | `query` | `false` | `string` | `` |

## 06.字典接口 / 新增实名用户数

- Method: `GET`
- Path: `/mx-ce-system/api/operationalDataStatistics/getNewRealName/{year}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/operationalDataStatistics/getNewRealName/{year}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `year` | 年份 | `path` | `true` | `string` | `` |

## 06.字典接口 / （企业客户）新增充值金额（元）

- Method: `GET`
- Path: `/mx-ce-system/api/operationalDataStatistics/getNewRechargeAmount/{year}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/operationalDataStatistics/getNewRechargeAmount/{year}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `year` | 年份 | `path` | `true` | `string` | `` |
| `cityCode` | 城市编码 | `query` | `false` | `string` | `` |

## 06.字典接口 / 新增用户数

- Method: `GET`
- Path: `/mx-ce-system/api/operationalDataStatistics/getNewUser/{year}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/operationalDataStatistics/getNewUser/{year}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `year` | 年份 | `path` | `true` | `string` | `` |

## 06.字典接口 / pc端首页换电次数统计

- Method: `POST`
- Path: `/mx-ce-system/api/operationalDataStatistics/getOmsChangeOrderSum`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/operationalDataStatistics/getOmsChangeOrderSum`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `operationalDataSumQueryDTO` | PC端首页数据统计入参实体类 | `body` | `true` | `OperationalDataSumQueryDTO` | `OperationalDataSumQueryDTO` |
| `operationalDataSumQueryDTO.startDate` | 开始日期，格式yyyy-MM-dd | `` | `false` | `string` | `` |
| `operationalDataSumQueryDTO.endDate` | 结束日期，格式yyyy-MM-dd | `` | `false` | `string` | `` |
| `operationalDataSumQueryDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |

## 06.字典接口 / pc端首页营运租赁订单统计

- Method: `POST`
- Path: `/mx-ce-system/api/operationalDataStatistics/getOmsLeaseOrderSum`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/operationalDataStatistics/getOmsLeaseOrderSum`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `operationalDataSumQueryDTO` | PC端首页数据统计入参实体类 | `body` | `true` | `OperationalDataSumQueryDTO` | `OperationalDataSumQueryDTO` |
| `operationalDataSumQueryDTO.startDate` | 开始日期，格式yyyy-MM-dd | `` | `false` | `string` | `` |
| `operationalDataSumQueryDTO.endDate` | 结束日期，格式yyyy-MM-dd | `` | `false` | `string` | `` |
| `operationalDataSumQueryDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |

## 06.字典接口 / 订单简报

- Method: `POST`
- Path: `/mx-ce-system/api/operationalDataStatistics/getOrderBrief`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/operationalDataStatistics/getOrderBrief`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `orderBrieDTO` | 筛选条件 | `body` | `true` | `OrderBrieDTO` | `OrderBrieDTO` |
| `orderBrieDTO.time` | 时间筛选  1=今日 2=昨日 3=近七天 4=本月 5=上月 | `` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 订单简报图表数据

- Method: `POST`
- Path: `/mx-ce-system/api/operationalDataStatistics/getOrderBriefChart`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/operationalDataStatistics/getOrderBriefChart`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `orderBrieDTO` | 筛选条件 | `body` | `true` | `OrderBrieDTO` | `OrderBrieDTO` |
| `orderBrieDTO.time` | 时间筛选  1=今日 2=昨日 3=近七天 4=本月 5=上月 | `` | `true` | `integer(int32)` | `` |

## 06.字典接口 / pc端营运订单数据

- Method: `GET`
- Path: `/mx-ce-system/api/operationalDataStatistics/getOrderData`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/operationalDataStatistics/getOrderData`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cityCode` | 所属城市 | `query` | `false` | `` | `` |

## 06.字典接口 / 维修简报

- Method: `POST`
- Path: `/mx-ce-system/api/operationalDataStatistics/getRepairBrief`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/operationalDataStatistics/getRepairBrief`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `orderBrieDTO` | 筛选条件 | `body` | `true` | `OrderBrieDTO` | `OrderBrieDTO` |
| `orderBrieDTO.time` | 时间筛选  1=今日 2=昨日 3=近七天 4=本月 5=上月 | `` | `true` | `integer(int32)` | `` |

## 06.字典接口 / pc端首页营运企业客户统计

- Method: `POST`
- Path: `/mx-ce-system/api/operationalDataStatistics/getUmsEnterpriseCustomerSum`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/operationalDataStatistics/getUmsEnterpriseCustomerSum`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `operationalDataSumQueryDTO` | PC端首页数据统计入参实体类 | `body` | `true` | `OperationalDataSumQueryDTO` | `OperationalDataSumQueryDTO` |
| `operationalDataSumQueryDTO.startDate` | 开始日期，格式yyyy-MM-dd | `` | `false` | `string` | `` |
| `operationalDataSumQueryDTO.endDate` | 结束日期，格式yyyy-MM-dd | `` | `false` | `string` | `` |
| `operationalDataSumQueryDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |

## 06.字典接口 / pc端首页营运用户量统计

- Method: `GET`
- Path: `/mx-ce-system/api/operationalDataStatistics/getUmsUserSum`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/operationalDataStatistics/getUmsUserSum`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `startDate` |  | `query` | `false` | `string` | `` |
| `endDate` |  | `query` | `false` | `string` | `` |

## 06.字典接口 / 用户简报

- Method: `POST`
- Path: `/mx-ce-system/api/operationalDataStatistics/getUserBrief`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/operationalDataStatistics/getUserBrief`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `orderBrieDTO` | 筛选条件 | `body` | `true` | `OrderBrieDTO` | `OrderBrieDTO` |
| `orderBrieDTO.time` | 时间筛选  1=今日 2=昨日 3=近七天 4=本月 5=上月 | `` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 用户量增长均势表

- Method: `GET`
- Path: `/mx-ce-system/api/operationalDataStatistics/getUserExpandingTrend`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/operationalDataStatistics/getUserExpandingTrend`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 新增套餐完结数

- Method: `GET`
- Path: `/mx-ce-system/api/operationalDataStatistics/renewalByYearGroupStatusAndMonth/{year}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/operationalDataStatistics/renewalByYearGroupStatusAndMonth/{year}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `year` | 年份 | `path` | `true` | `string` | `` |
| `cityCode` | 城市编码 | `query` | `false` | `string` | `` |

## 06.字典接口 / 新增套餐复购数

- Method: `GET`
- Path: `/mx-ce-system/api/operationalDataStatistics/repurchaseByYearGroupStatusAndMonth/{year}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/operationalDataStatistics/repurchaseByYearGroupStatusAndMonth/{year}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `year` | 年份 | `path` | `true` | `string` | `` |
| `cityCode` | 城市编码 | `query` | `false` | `string` | `` |

## 06.字典接口 / 违约逾期

- Method: `POST`
- Path: `/mx-ce-system/api/accountingDataStatistics/getBreachOverdue`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/accountingDataStatistics/getBreachOverdue`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `operationalDataSumQueryDTO` | PC端首页数据统计入参实体类 | `body` | `true` | `OperationalDataSumQueryDTO` | `OperationalDataSumQueryDTO` |
| `operationalDataSumQueryDTO.startDate` | 开始日期，格式yyyy-MM-dd | `` | `false` | `string` | `` |
| `operationalDataSumQueryDTO.endDate` | 结束日期，格式yyyy-MM-dd | `` | `false` | `string` | `` |
| `operationalDataSumQueryDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |

## 06.字典接口 / 押金收入

- Method: `POST`
- Path: `/mx-ce-system/api/accountingDataStatistics/getDepositIncome`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/accountingDataStatistics/getDepositIncome`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `operationalDataSumQueryDTO` | PC端首页数据统计入参实体类 | `body` | `true` | `OperationalDataSumQueryDTO` | `OperationalDataSumQueryDTO` |
| `operationalDataSumQueryDTO.startDate` | 开始日期，格式yyyy-MM-dd | `` | `false` | `string` | `` |
| `operationalDataSumQueryDTO.endDate` | 结束日期，格式yyyy-MM-dd | `` | `false` | `string` | `` |
| `operationalDataSumQueryDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |

## 06.字典接口 / 企业充值

- Method: `POST`
- Path: `/mx-ce-system/api/accountingDataStatistics/getEnterpriseRecharge`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/accountingDataStatistics/getEnterpriseRecharge`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `operationalDataSumQueryDTO` | PC端首页数据统计入参实体类 | `body` | `true` | `OperationalDataSumQueryDTO` | `OperationalDataSumQueryDTO` |
| `operationalDataSumQueryDTO.startDate` | 开始日期，格式yyyy-MM-dd | `` | `false` | `string` | `` |
| `operationalDataSumQueryDTO.endDate` | 结束日期，格式yyyy-MM-dd | `` | `false` | `string` | `` |
| `operationalDataSumQueryDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |

## 06.字典接口 / 收入增长趋势

- Method: `POST`
- Path: `/mx-ce-system/api/accountingDataStatistics/getIncomeGrowthTrend`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/accountingDataStatistics/getIncomeGrowthTrend`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 套餐收入

- Method: `POST`
- Path: `/mx-ce-system/api/accountingDataStatistics/getPackageIncome`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/accountingDataStatistics/getPackageIncome`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `operationalDataSumQueryDTO` | PC端首页数据统计入参实体类 | `body` | `true` | `OperationalDataSumQueryDTO` | `OperationalDataSumQueryDTO` |
| `operationalDataSumQueryDTO.startDate` | 开始日期，格式yyyy-MM-dd | `` | `false` | `string` | `` |
| `operationalDataSumQueryDTO.endDate` | 结束日期，格式yyyy-MM-dd | `` | `false` | `string` | `` |
| `operationalDataSumQueryDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |

## 06.字典接口 / 累计支出

- Method: `POST`
- Path: `/mx-ce-system/api/accountingDataStatistics/getTotalExpenditure`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/accountingDataStatistics/getTotalExpenditure`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `operationalDataSumQueryDTO` | PC端首页数据统计入参实体类 | `body` | `true` | `OperationalDataSumQueryDTO` | `OperationalDataSumQueryDTO` |
| `operationalDataSumQueryDTO.startDate` | 开始日期，格式yyyy-MM-dd | `` | `false` | `string` | `` |
| `operationalDataSumQueryDTO.endDate` | 结束日期，格式yyyy-MM-dd | `` | `false` | `string` | `` |
| `operationalDataSumQueryDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |

## 06.字典接口 / 导出套餐订单

- Method: `POST`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/_export`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/_export`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `omsExportOrderDTO` | 导出订单数据 | `body` | `true` | `OmsExportOrderDTO` | `OmsExportOrderDTO` |
| `omsExportOrderDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `omsExportOrderDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `omsExportOrderDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `omsExportOrderDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `omsExportOrderDTO.iphoneNumber` | 筛选条件 手机号 | `` | `false` | `string` | `` |
| `omsExportOrderDTO.userName` | 筛选条件 姓名 | `` | `false` | `string` | `` |
| `omsExportOrderDTO.cityCode` | 筛选条件 城市归属 | `` | `false` | `string` | `` |
| `omsExportOrderDTO.statuses` | 筛选条件 状态 4=已完结 5=未领取 6=已领取 7=冻结中 11=已取消 | `` | `false` | `array` | `integer(int32)` |
| `omsExportOrderDTO.createDate` | 筛选条件 创建开始日期  yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `omsExportOrderDTO.endTime` | 筛选条件 创建结束日期 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `omsExportOrderDTO.endStartTime` | 筛选条件 到期开始日期 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `omsExportOrderDTO.endEndTime` | 筛选条件 到期结束日期 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `omsExportOrderDTO.completionStartTime` | 筛选条件 完结开始日期 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `omsExportOrderDTO.completionEndTime` | 筛选条件 完结结束日期 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `omsExportOrderDTO.orderType` | 订单类型 1=普通订单 2=企业订单 目前只有普通订单 先不做筛选 | `` | `false` | `integer(int32)` | `` |
| `omsExportOrderDTO.battery` | 电池编号 | `` | `false` | `string` | `` |
| `omsExportOrderDTO.enterpriseCodes` | 筛选条件 所属企业 | `` | `false` | `array` | `string` |
| `omsExportOrderDTO.channel` | 筛选条件 所属渠道 | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 换电记录导出

- Method: `POST`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/_exportChangeOrder`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/_exportChangeOrder`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `omsChangeOrderDTO` | 换电订单 | `body` | `true` | `OmsChangeOrderDTO` | `OmsChangeOrderDTO` |
| `omsChangeOrderDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `omsChangeOrderDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `omsChangeOrderDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.iphone` | 筛选条件,手机号 | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.userName` | 筛选条件,姓名 | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.cityCode` | 筛选条件,城市归属 | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.putSn` | 筛选条件,原电池编号 | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.outSn` | 筛选条件,新电池编号 | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.cbName` | 筛选条件,网点名称 | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.cbId` | 电柜编号 | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.createDate` | 筛选条件,开始日期 yyyy-MM-dd HH:mm:ss | `` | `true` | `string` | `` |
| `omsChangeOrderDTO.endTime` | 筛选条件,结束日期 yyyy-MM-dd HH:mm:ss | `` | `true` | `string` | `` |
| `omsChangeOrderDTO.changeType` | 业务类型 1=取电，2=换电,3=退电 | `` | `false` | `integer(int32)` | `` |
| `omsChangeOrderDTO.batchSize` | 导出文件需要批量数 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / downloadExport

- Method: `GET`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/_exportChangeOrder/download/{totalChunks}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/_exportChangeOrder/download/{totalChunks}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `totalChunks` |  | `path` | `true` | `integer(int32)` | `` |
| `Range` |  | `header` | `false` | `string` | `` |

## 06.字典接口 / 换电记录导出状态检查

- Method: `POST`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/_exportChangeOrder/status`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/_exportChangeOrder/status`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `omsChangeOrderDTO` | 换电订单 | `body` | `true` | `OmsChangeOrderDTO` | `OmsChangeOrderDTO` |
| `omsChangeOrderDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `omsChangeOrderDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `omsChangeOrderDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.iphone` | 筛选条件,手机号 | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.userName` | 筛选条件,姓名 | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.cityCode` | 筛选条件,城市归属 | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.putSn` | 筛选条件,原电池编号 | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.outSn` | 筛选条件,新电池编号 | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.cbName` | 筛选条件,网点名称 | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.cbId` | 电柜编号 | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.createDate` | 筛选条件,开始日期 yyyy-MM-dd HH:mm:ss | `` | `true` | `string` | `` |
| `omsChangeOrderDTO.endTime` | 筛选条件,结束日期 yyyy-MM-dd HH:mm:ss | `` | `true` | `string` | `` |
| `omsChangeOrderDTO.changeType` | 业务类型 1=取电，2=换电,3=退电 | `` | `false` | `integer(int32)` | `` |
| `omsChangeOrderDTO.batchSize` | 导出文件需要批量数 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 逾期订单导出

- Method: `POST`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/_exportOverdue`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/_exportOverdue`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `omsOverdueOrderDTO` | 逾期订单 | `body` | `true` | `OmsOverdueOrderDTO` | `OmsOverdueOrderDTO` |
| `omsOverdueOrderDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `omsOverdueOrderDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `omsOverdueOrderDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `omsOverdueOrderDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `omsOverdueOrderDTO.iphoneNumber` | 手机号 | `` | `false` | `string` | `` |
| `omsOverdueOrderDTO.userName` | 姓名 | `` | `false` | `string` | `` |
| `omsOverdueOrderDTO.batterySn` | 电池编号 | `` | `false` | `string` | `` |
| `omsOverdueOrderDTO.orderSn` | 订单编号 | `` | `false` | `string` | `` |
| `omsOverdueOrderDTO.cityCode` | 城市编码 | `` | `false` | `string` | `` |
| `omsOverdueOrderDTO.enterpriseCodes` | 筛选条件 所属企业 | `` | `false` | `array` | `string` |

## 06.字典接口 / 取消订单

- Method: `POST`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/cancelOrder`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/cancelOrder`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `omsCancelOrderDTO` | 取消订单 | `body` | `true` | `OmsCancelOrderDTO` | `OmsCancelOrderDTO` |
| `omsCancelOrderDTO.orderSn` | 订单编号 | `` | `false` | `string` | `` |

## 06.字典接口 / 分块下载

- Method: `POST`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/chunk/{chunkIndex}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/chunk/{chunkIndex}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `chunkIndex` |  | `path` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 费用详情列表

- Method: `POST`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/costDetails`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/costDetails`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `omsOrderCostDetailsDTO` | 订单费用详情 | `body` | `true` | `OmsOrderCostDetailsDTO` | `OmsOrderCostDetailsDTO` |
| `omsOrderCostDetailsDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `omsOrderCostDetailsDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `omsOrderCostDetailsDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `omsOrderCostDetailsDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `omsOrderCostDetailsDTO.orderSn` | 订单编号 | `` | `false` | `string` | `` |

## 06.字典接口 / 完结订单

- Method: `POST`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/endOrder`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/endOrder`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `endOrderDTO` | 完结订单信息 | `body` | `true` | `EndOrderDTO` | `EndOrderDTO` |
| `endOrderDTO.orderSn` | 订单编号 | `` | `true` | `string` | `` |
| `endOrderDTO.notes` | 备注 | `` | `true` | `string` | `` |

## 06.字典接口 / 冻结订单

- Method: `POST`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/frozenOrder`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/frozenOrder`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `frozenOrderManagementDTO` | 冻结订单管理数据 | `body` | `true` | `FrozenOrderManagementDTO` | `FrozenOrderManagementDTO` |
| `frozenOrderManagementDTO.freezeDay` | 冻结天数 | `` | `false` | `integer(int32)` | `` |
| `frozenOrderManagementDTO.orderSn` | 订单编号 | `` | `false` | `string` | `` |
| `frozenOrderManagementDTO.notes` | 备注 | `` | `false` | `string` | `` |

## 06.字典接口 / 套餐订单详情

- Method: `GET`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/managementDetails`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/managementDetails`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `orderSn` | 订单编号 | `query` | `true` | `string` | `` |

## 06.字典接口 / 换电记录

- Method: `POST`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/omsChangeOrder`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/omsChangeOrder`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `omsChangeOrderDTO` | 换电订单 | `body` | `true` | `OmsChangeOrderDTO` | `OmsChangeOrderDTO` |
| `omsChangeOrderDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `omsChangeOrderDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `omsChangeOrderDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.iphone` | 筛选条件,手机号 | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.userName` | 筛选条件,姓名 | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.cityCode` | 筛选条件,城市归属 | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.putSn` | 筛选条件,原电池编号 | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.outSn` | 筛选条件,新电池编号 | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.cbName` | 筛选条件,网点名称 | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.cbId` | 电柜编号 | `` | `false` | `string` | `` |
| `omsChangeOrderDTO.createDate` | 筛选条件,开始日期 yyyy-MM-dd HH:mm:ss | `` | `true` | `string` | `` |
| `omsChangeOrderDTO.endTime` | 筛选条件,结束日期 yyyy-MM-dd HH:mm:ss | `` | `true` | `string` | `` |
| `omsChangeOrderDTO.changeType` | 业务类型 1=取电，2=换电,3=退电 | `` | `false` | `integer(int32)` | `` |
| `omsChangeOrderDTO.batchSize` | 导出文件需要批量数 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 冻结订单信息

- Method: `GET`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/omsFrozenOrder`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/omsFrozenOrder`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `orderSn` | 订单编号 | `query` | `true` | `string` | `` |

## 06.字典接口 / 套餐订单操作日志

- Method: `POST`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/omsOperationLog`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/omsOperationLog`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `omsOperationLogDTO` | 操作日志分页 | `body` | `true` | `OmsOperationLogDTO` | `OmsOperationLogDTO` |
| `omsOperationLogDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `omsOperationLogDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `omsOperationLogDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `omsOperationLogDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `omsOperationLogDTO.operationType` | 操作类型,可用值:1=取电,2=换电,3=还电,4=完结订单,5=变更到期时间,6=变更电池编号,7=解绑电池,8=解冻订单,9=绑定电池,10=退款,11=冻结订单,12=重启订单,13=创建订单,14=续租,15=订单取消,16=天数转让,17=天数归还,18=天数退回 | `` | `false` | `string(int32)` | `` |
| `omsOperationLogDTO.orderSn` | 订单编号 | `` | `false` | `string` | `` |

## 06.字典接口 / 订单退款

- Method: `POST`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/omsOrderRefund`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/omsOrderRefund`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `omsOrderRefundDTO` | 退款数据 | `body` | `true` | `OmsOrderRefundDTO` | `OmsOrderRefundDTO` |
| `omsOrderRefundDTO.orderSn` | 订单编号 | `` | `false` | `string` | `` |
| `omsOrderRefundDTO.refundMoney` | 退款金额 | `` | `true` | `number` | `` |
| `omsOrderRefundDTO.notes` | 备注 | `` | `false` | `string` | `` |

## 06.字典接口 / 订单退款信息

- Method: `GET`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/omsOrderRefundInformation`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/omsOrderRefundInformation`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `orderSn` | 订单编号 | `query` | `true` | `string` | `` |

## 06.字典接口 / 逾期订单

- Method: `POST`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/omsOverdueOrder`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/omsOverdueOrder`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `omsOverdueOrderDTO` | 逾期订单 | `body` | `true` | `OmsOverdueOrderDTO` | `OmsOverdueOrderDTO` |
| `omsOverdueOrderDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `omsOverdueOrderDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `omsOverdueOrderDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `omsOverdueOrderDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `omsOverdueOrderDTO.iphoneNumber` | 手机号 | `` | `false` | `string` | `` |
| `omsOverdueOrderDTO.userName` | 姓名 | `` | `false` | `string` | `` |
| `omsOverdueOrderDTO.batterySn` | 电池编号 | `` | `false` | `string` | `` |
| `omsOverdueOrderDTO.orderSn` | 订单编号 | `` | `false` | `string` | `` |
| `omsOverdueOrderDTO.cityCode` | 城市编码 | `` | `false` | `string` | `` |
| `omsOverdueOrderDTO.enterpriseCodes` | 筛选条件 所属企业 | `` | `false` | `array` | `string` |

## 06.字典接口 / 逾期订单备注

- Method: `POST`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/remarkOverdueOrder`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/remarkOverdueOrder`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `omsOverdueOrderRemarkDTO` | 逾期订单备注 | `body` | `true` | `OmsOverdueOrderRemarkDTO` | `OmsOverdueOrderRemarkDTO` |
| `omsOverdueOrderRemarkDTO.orderSn` | 订单编号 | `` | `true` | `string` | `` |
| `omsOverdueOrderRemarkDTO.remark` | 备注 | `` | `true` | `string` | `` |

## 06.字典接口 / 重启订单

- Method: `GET`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/restartOrder`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/restartOrder`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `orderSn` |  | `query` | `true` | `string` | `` |

## 06.字典接口 / pc套餐订单分页列表

- Method: `POST`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/screenManagementOrder`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/screenManagementOrder`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `omsManagementDTO` | OmsManagementDTO | `body` | `true` | `OmsManagementDTO` | `OmsManagementDTO` |
| `omsManagementDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `omsManagementDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `omsManagementDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `omsManagementDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `omsManagementDTO.iphoneNumber` | 筛选条件 手机号 | `` | `false` | `string` | `` |
| `omsManagementDTO.userName` | 筛选条件 姓名 | `` | `false` | `string` | `` |
| `omsManagementDTO.cityCode` | 筛选条件 城市归属 | `` | `false` | `string` | `` |
| `omsManagementDTO.statuses` | 筛选条件 状态 4=已完结 5=未领取 6=已领取 7=冻结中 11=已取消 | `` | `false` | `array` | `integer(int32)` |
| `omsManagementDTO.createDate` | 筛选条件 创建开始日期 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `omsManagementDTO.endTime` | 筛选条件 创建结束日期 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `omsManagementDTO.endStartTime` | 筛选条件 到期开始日期 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `omsManagementDTO.endEndTime` | 筛选条件 到期结束日期 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `omsManagementDTO.completionStartTime` | 筛选条件 完结开始日期 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `omsManagementDTO.completionEndTime` | 筛选条件 完结结束日期 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `omsManagementDTO.battery` | 筛选条件,电池编号 | `` | `false` | `string` | `` |
| `omsManagementDTO.orderType` | 订单类型 1=普通订单 2=企业订单 目前只有普通订单 先不做筛选 | `` | `false` | `integer(int32)` | `` |
| `omsManagementDTO.enterpriseCodes` | 筛选条件 所属企业 | `` | `false` | `array` | `string` |
| `omsManagementDTO.channel` | 筛选条件,所属渠道 | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 解绑电池

- Method: `PUT`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/unbindBatterySn`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/unbindBatterySn`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `unbindBatterySnDTO` | 解绑电池信息 | `body` | `true` | `UnbindBatterySnDTO` | `UnbindBatterySnDTO` |
| `unbindBatterySnDTO.batterySn` | 电池编号 | `` | `false` | `string` | `` |
| `unbindBatterySnDTO.orderSn` | 订单编号 | `` | `false` | `string` | `` |

## 06.字典接口 / 解冻订单

- Method: `GET`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/unfreezeOrder`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/unfreezeOrder`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `orderSn` | 订单编号 | `query` | `true` | `string` | `` |

## 06.字典接口 / 绑定电池

- Method: `POST`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/updateBatterySn`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/updateBatterySn`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `omsBatterySnDTO` | 绑定电池数据 | `body` | `true` | `OmsBatterySnDTO` | `OmsBatterySnDTO` |
| `omsBatterySnDTO.orderSn` | 订单编号 | `` | `false` | `string` | `` |
| `omsBatterySnDTO.iphone` | 手机号 | `` | `false` | `string` | `` |
| `omsBatterySnDTO.batterySn` |  | `` | `false` | `string` | `` |

## 06.字典接口 / 变更到期时间

- Method: `POST`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/updateEndTime`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/updateEndTime`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `updateEndTimeDTO` | 变更到期时间数据 | `body` | `true` | `UpdateEndTimeDTO` | `UpdateEndTimeDTO` |
| `updateEndTimeDTO.orderSn` | 订单编号 | `` | `false` | `string` | `` |
| `updateEndTimeDTO.updateDate` | 变更日期 yyyy-MM-dd HH:mm:ss | `` | `false` | `string(date-time)` | `` |
| `updateEndTimeDTO.changeType` | 变更方式 0=修改日期 1=天数增加 | `` | `false` | `integer(int32)` | `` |
| `updateEndTimeDTO.day` | 天数 | `` | `false` | `integer(int32)` | `` |
| `updateEndTimeDTO.remark` | 备注 | `` | `false` | `string` | `` |

## 06.字典接口 / 变更电池编号

- Method: `POST`
- Path: `/mx-ce-system/api/apiOmsManagementOrderController/updateMeal`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/apiOmsManagementOrderController/updateMeal`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `omsBatteryDTO` | 变更电池编号 | `body` | `true` | `OmsBatteryDTO` | `OmsBatteryDTO` |
| `omsBatteryDTO.oldBatterySn` | 电池编号 | `` | `true` | `string` | `` |
| `omsBatteryDTO.newBatterySn` | 订单编号 | `` | `true` | `string` | `` |
| `omsBatteryDTO.orderSn` | 订单编号 | `` | `false` | `string` | `` |

## 06.字典接口 / 新增活动

- Method: `POST`
- Path: `/mx-ce-system/api/dms/message/activity/addMessageActivity`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/dms/message/activity/addMessageActivity`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `smsAddMessageActivityDTO` | 新增活动管理 | `body` | `true` | `SmsAddMessageActivityDTO` | `SmsAddMessageActivityDTO` |
| `smsAddMessageActivityDTO.id` | 活动id | `` | `false` | `integer(int64)` | `` |
| `smsAddMessageActivityDTO.activityName` | 活动名称 | `` | `false` | `string` | `` |
| `smsAddMessageActivityDTO.link` | 链接 | `` | `true` | `string` | `` |
| `smsAddMessageActivityDTO.coverImg` | 封面,保留字段 | `` | `true` | `string` | `` |
| `smsAddMessageActivityDTO.detailImg` | 详情图片 | `` | `false` | `string` | `` |
| `smsAddMessageActivityDTO.cityCode` | 城市 | `` | `true` | `array` | `string` |

## 06.字典接口 / 作废活动

- Method: `GET`
- Path: `/mx-ce-system/api/dms/message/activity/cancelMessageActivity`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/dms/message/activity/cancelMessageActivity`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` |  | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 删除活动

- Method: `DELETE`
- Path: `/mx-ce-system/api/dms/message/activity/deleteMessageActivity`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/dms/message/activity/deleteMessageActivity`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` |  | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 活动管理详情

- Method: `GET`
- Path: `/mx-ce-system/api/dms/message/activity/getMessageActivityDetail`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/dms/message/activity/getMessageActivityDetail`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` |  | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 活动管理列表

- Method: `POST`
- Path: `/mx-ce-system/api/dms/message/activity/getMessageActivityList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/dms/message/activity/getMessageActivityList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `smsMessageActivityDTO` | 活动管理列表 | `body` | `true` | `SmsMessageActivityDTO` | `SmsMessageActivityDTO` |
| `smsMessageActivityDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `smsMessageActivityDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `smsMessageActivityDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `smsMessageActivityDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `smsMessageActivityDTO.startDate` | 筛选条件,开始时间 | `` | `false` | `string` | `` |
| `smsMessageActivityDTO.endDate` | 筛选条件,结束时间 | `` | `false` | `string` | `` |
| `smsMessageActivityDTO.status` | 活动状态 1=上架中 2=已下架 3=待上架 4=已作废 | `` | `false` | `integer(int32)` | `` |
| `smsMessageActivityDTO.activityName` | 活动名称 | `` | `false` | `string` | `` |
| `smsMessageActivityDTO.cityCode` | 城市编码 | `` | `false` | `string` | `` |

## 06.字典接口 / 操作日志列表

- Method: `POST`
- Path: `/mx-ce-system/api/dms/message/activity/getMessageActivityLogList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/dms/message/activity/getMessageActivityLogList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `smsMessageActivityLogDTO` | 活动管理日志 | `body` | `true` | `SmsMessageActivityLogDTO` | `SmsMessageActivityLogDTO` |
| `smsMessageActivityLogDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `smsMessageActivityLogDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `smsMessageActivityLogDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `smsMessageActivityLogDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `smsMessageActivityLogDTO.id` | 活动id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 活动状态列表

- Method: `GET`
- Path: `/mx-ce-system/api/dms/message/activity/getMessageActivityStatusList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/dms/message/activity/getMessageActivityStatusList`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 活动管理上下架

- Method: `GET`
- Path: `/mx-ce-system/api/dms/message/activity/updateMessageActivityStatus`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/dms/message/activity/updateMessageActivityStatus`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` |  | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / PC端老带新列表导出

- Method: `POST`
- Path: `/mx-ce-system/api/pc/referral/export`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/pc/referral/export`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `referralPcListDTO` | PC端老带新列表查询参数 | `body` | `true` | `ReferralPcListDTO` | `ReferralPcListDTO` |
| `referralPcListDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `referralPcListDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `referralPcListDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `referralPcListDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `referralPcListDTO.status` | 状态筛选:0=待付款,1=已付款,2=拉新成功,3=拉新失败 | `` | `false` | `integer(int32)` | `` |
| `referralPcListDTO.startTime` | 开始时间 | `` | `false` | `string` | `` |
| `referralPcListDTO.endTime` | 结束时间 | `` | `false` | `string` | `` |
| `referralPcListDTO.inviterName` | 老用户姓名 | `` | `false` | `string` | `` |
| `referralPcListDTO.inviterMobile` | 老用户手机号 | `` | `false` | `string` | `` |
| `referralPcListDTO.inviteeName` | 新用户姓名 | `` | `false` | `string` | `` |
| `referralPcListDTO.inviteeMobile` | 新用户手机号 | `` | `false` | `string` | `` |
| `referralPcListDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |

## 06.字典接口 / PC端老带新列表

- Method: `POST`
- Path: `/mx-ce-system/api/pc/referral/list`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/pc/referral/list`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `referralPcListDTO` | PC端老带新列表查询参数 | `body` | `true` | `ReferralPcListDTO` | `ReferralPcListDTO` |
| `referralPcListDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `referralPcListDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `referralPcListDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `referralPcListDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `referralPcListDTO.status` | 状态筛选:0=待付款,1=已付款,2=拉新成功,3=拉新失败 | `` | `false` | `integer(int32)` | `` |
| `referralPcListDTO.startTime` | 开始时间 | `` | `false` | `string` | `` |
| `referralPcListDTO.endTime` | 结束时间 | `` | `false` | `string` | `` |
| `referralPcListDTO.inviterName` | 老用户姓名 | `` | `false` | `string` | `` |
| `referralPcListDTO.inviterMobile` | 老用户手机号 | `` | `false` | `string` | `` |
| `referralPcListDTO.inviteeName` | 新用户姓名 | `` | `false` | `string` | `` |
| `referralPcListDTO.inviteeMobile` | 新用户手机号 | `` | `false` | `string` | `` |
| `referralPcListDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |

## 06.字典接口 / 新增渠道客户

- Method: `POST`
- Path: `/mx-ce-system/pc/channel/addChannelCustomers`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/channel/addChannelCustomers`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `umsChannelCustomersAddDTO` | 渠道客户新增 | `body` | `true` | `UmsChannelCustomersAddDTO` | `UmsChannelCustomersAddDTO` |
| `umsChannelCustomersAddDTO.id` | 渠道id 修改时传入，新增时不传 | `` | `false` | `integer(int64)` | `` |
| `umsChannelCustomersAddDTO.name` | 渠道名称 | `` | `true` | `string` | `` |
| `umsChannelCustomersAddDTO.admin` | 管理员 | `` | `true` | `string` | `` |
| `umsChannelCustomersAddDTO.mobile` | 手机号 | `` | `true` | `string` | `` |
| `umsChannelCustomersAddDTO.cityCode` | 城市编码 | `` | `true` | `string` | `` |
| `umsChannelCustomersAddDTO.accountType` | 返佣方式 1=固定金额 2=按比例 | `` | `true` | `integer(int32)` | `` |
| `umsChannelCustomersAddDTO.firstOrderCommission` | 首次下单返佣 | `` | `true` | `number` | `` |
| `umsChannelCustomersAddDTO.renewalCommission` | 续租返佣 | `` | `true` | `number` | `` |

## 06.字典接口 / 渠道客户账户明细-推广明细列表

- Method: `POST`
- Path: `/mx-ce-system/pc/channel/channelCustomersAccountDetail`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/channel/channelCustomersAccountDetail`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `omsChannelCustomersDetailDTO` | 渠道客户明细 | `body` | `true` | `OmsChannelCustomersDetailDTO` | `OmsChannelCustomersDetailDTO` |
| `omsChannelCustomersDetailDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `omsChannelCustomersDetailDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `omsChannelCustomersDetailDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `omsChannelCustomersDetailDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `omsChannelCustomersDetailDTO.id` | 渠道客户id | `` | `false` | `integer(int64)` | `` |
| `omsChannelCustomersDetailDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `omsChannelCustomersDetailDTO.mobile` | 手机号 | `` | `false` | `string` | `` |
| `omsChannelCustomersDetailDTO.status` | 用户状态 1=待激活 2=使用中 3=已退网 | `` | `false` | `integer(int32)` | `` |
| `omsChannelCustomersDetailDTO.startTime` | 开始时间,yyyy-MM-dd | `` | `false` | `string` | `` |
| `omsChannelCustomersDetailDTO.endTime` | 结束时间,yyyy-MM-dd | `` | `false` | `string` | `` |

## 06.字典接口 / 渠道客户推广记录

- Method: `POST`
- Path: `/mx-ce-system/pc/channel/channelCustomersPromotionRecord`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/channel/channelCustomersPromotionRecord`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `channelCustomersPromotionRecordDTO` | 渠道客户推广记录 | `body` | `true` | `ChannelCustomersPromotionRecordDTO` | `ChannelCustomersPromotionRecordDTO` |
| `channelCustomersPromotionRecordDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `channelCustomersPromotionRecordDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `channelCustomersPromotionRecordDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `channelCustomersPromotionRecordDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `channelCustomersPromotionRecordDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `channelCustomersPromotionRecordDTO.mobile` | 手机号 | `` | `false` | `string` | `` |
| `channelCustomersPromotionRecordDTO.businessType` | 业务类型 1=首单 2=续费 | `` | `false` | `integer(int32)` | `` |
| `channelCustomersPromotionRecordDTO.startTime` | 开始时间 yyy-MM-dd | `` | `false` | `string` | `` |
| `channelCustomersPromotionRecordDTO.endTime` | 结束时间 yyy-MM-dd | `` | `false` | `string` | `` |
| `channelCustomersPromotionRecordDTO.cityCode` | 城市编码 | `` | `false` | `string` | `` |

## 06.字典接口 / 渠道客户账户明细-交易明细列表

- Method: `POST`
- Path: `/mx-ce-system/pc/channel/channelCustomersTradeDetail`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/channel/channelCustomersTradeDetail`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `umsChannelCustomersTradeDTO` | 渠道客户交易 | `body` | `true` | `UmsChannelCustomersTradeDTO` | `UmsChannelCustomersTradeDTO` |
| `umsChannelCustomersTradeDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `umsChannelCustomersTradeDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `umsChannelCustomersTradeDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `umsChannelCustomersTradeDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `umsChannelCustomersTradeDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `umsChannelCustomersTradeDTO.mobile` | 手机号 | `` | `false` | `string` | `` |
| `umsChannelCustomersTradeDTO.id` | 渠道id | `` | `false` | `integer(int64)` | `` |
| `umsChannelCustomersTradeDTO.orderType` | 订单类型 1=首单 2=续租 3=提现 | `` | `false` | `integer(int32)` | `` |
| `umsChannelCustomersTradeDTO.startTime` | 开始时间 yyy-MM-dd | `` | `false` | `string` | `` |
| `umsChannelCustomersTradeDTO.endTime` | 结束时间 yyy-MM-dd | `` | `false` | `string` | `` |

## 06.字典接口 / 渠道客户账户明细详情

- Method: `GET`
- Path: `/mx-ce-system/pc/channel/customersDetail`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/channel/customersDetail`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` | 渠道id | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 渠道客户列表

- Method: `POST`
- Path: `/mx-ce-system/pc/channel/listChannelCustomers`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/channel/listChannelCustomers`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `umsChannelCustomersListDTO` | 渠道客户列表 | `body` | `true` | `UmsChannelCustomersListDTO` | `UmsChannelCustomersListDTO` |
| `umsChannelCustomersListDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `umsChannelCustomersListDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `umsChannelCustomersListDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `umsChannelCustomersListDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `umsChannelCustomersListDTO.name` | 渠道名称 | `` | `false` | `string` | `` |
| `umsChannelCustomersListDTO.admin` | 管理员 | `` | `false` | `string` | `` |
| `umsChannelCustomersListDTO.status` | 账户状态 0=禁用 1=启用 | `` | `false` | `integer(int32)` | `` |
| `umsChannelCustomersListDTO.cityCode` | 城市编码 | `` | `false` | `string` | `` |

## 06.字典接口 / 启用禁用渠道客户

- Method: `GET`
- Path: `/mx-ce-system/pc/channel/status`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/channel/status`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` |  | `query` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 导出意见反馈列表

- Method: `POST`
- Path: `/mx-ce-system/api/dms/feedback/exportFeedBack`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/dms/feedback/exportFeedBack`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `apiFeedbackDTO` | 意见反馈vo | `body` | `true` | `ApiFeedbackDTO` | `ApiFeedbackDTO` |
| `apiFeedbackDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `apiFeedbackDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `apiFeedbackDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `apiFeedbackDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `apiFeedbackDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `apiFeedbackDTO.mobile` | 手机号 | `` | `false` | `string` | `` |
| `apiFeedbackDTO.type` | 反馈类型  11=其他 12=我决定不再从事骑手工作 13=如果电池续航更长我会留下 14=如果换电柜点位再多些我会留下 15=换电柜点位让我用得不开心 16=朋友介绍我用其他品牌电池 | `` | `false` | `integer(int32)` | `` |
| `apiFeedbackDTO.createTime` | 开始日期 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `apiFeedbackDTO.endTime` | 结束日期 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `apiFeedbackDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |

## 06.字典接口 / 导出投诉建议列表

- Method: `POST`
- Path: `/mx-ce-system/api/dms/feedback/exportFeedBackList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/dms/feedback/exportFeedBackList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `dmsFeedBackDTO` | 投诉建议查询条件 | `body` | `true` | `DmsFeedBackDTO` | `DmsFeedBackDTO` |
| `dmsFeedBackDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `dmsFeedBackDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `dmsFeedBackDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `dmsFeedBackDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `dmsFeedBackDTO.name` | 筛选条件,姓名 | `` | `false` | `string` | `` |
| `dmsFeedBackDTO.mobile` | 筛选条件,手机号 | `` | `false` | `string` | `` |
| `dmsFeedBackDTO.deviceId` | 筛选条件,设备编号 | `` | `false` | `string` | `` |
| `dmsFeedBackDTO.deviceType` | 筛选条件,设备类型 1=电池 2=电柜 | `` | `false` | `integer(int32)` | `` |
| `dmsFeedBackDTO.startDate` | 筛选条件,投诉日期,开始时间 yyyy-MM-dd | `` | `false` | `string` | `` |
| `dmsFeedBackDTO.endDate` | 筛选条件,投诉日期,结束时间 yyyy-MM-dd | `` | `false` | `string` | `` |
| `dmsFeedBackDTO.status` | 筛选条件,订单状态 1=待办理 2=已办理 | `` | `false` | `integer(int32)` | `` |
| `dmsFeedBackDTO.cityCode` | 筛选条件,城市编码 | `` | `false` | `string` | `` |

## 06.字典接口 / 意见反馈列表

- Method: `POST`
- Path: `/mx-ce-system/api/dms/feedback/feedBack`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/dms/feedback/feedBack`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `apiFeedbackDTO` | 意见反馈vo | `body` | `true` | `ApiFeedbackDTO` | `ApiFeedbackDTO` |
| `apiFeedbackDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `apiFeedbackDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `apiFeedbackDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `apiFeedbackDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `apiFeedbackDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `apiFeedbackDTO.mobile` | 手机号 | `` | `false` | `string` | `` |
| `apiFeedbackDTO.type` | 反馈类型  11=其他 12=我决定不再从事骑手工作 13=如果电池续航更长我会留下 14=如果换电柜点位再多些我会留下 15=换电柜点位让我用得不开心 16=朋友介绍我用其他品牌电池 | `` | `false` | `integer(int32)` | `` |
| `apiFeedbackDTO.createTime` | 开始日期 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `apiFeedbackDTO.endTime` | 结束日期 yyyy-MM-dd HH:mm:ss | `` | `false` | `string` | `` |
| `apiFeedbackDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |

## 06.字典接口 / 获取投诉建议列表

- Method: `POST`
- Path: `/mx-ce-system/api/dms/feedback/getFeedBackList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/dms/feedback/getFeedBackList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `dmsFeedBackDTO` | 投诉建议查询条件 | `body` | `true` | `DmsFeedBackDTO` | `DmsFeedBackDTO` |
| `dmsFeedBackDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `dmsFeedBackDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `dmsFeedBackDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `dmsFeedBackDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `dmsFeedBackDTO.name` | 筛选条件,姓名 | `` | `false` | `string` | `` |
| `dmsFeedBackDTO.mobile` | 筛选条件,手机号 | `` | `false` | `string` | `` |
| `dmsFeedBackDTO.deviceId` | 筛选条件,设备编号 | `` | `false` | `string` | `` |
| `dmsFeedBackDTO.deviceType` | 筛选条件,设备类型 1=电池 2=电柜 | `` | `false` | `integer(int32)` | `` |
| `dmsFeedBackDTO.startDate` | 筛选条件,投诉日期,开始时间 yyyy-MM-dd | `` | `false` | `string` | `` |
| `dmsFeedBackDTO.endDate` | 筛选条件,投诉日期,结束时间 yyyy-MM-dd | `` | `false` | `string` | `` |
| `dmsFeedBackDTO.status` | 筛选条件,订单状态 1=待办理 2=已办理 | `` | `false` | `integer(int32)` | `` |
| `dmsFeedBackDTO.cityCode` | 筛选条件,城市编码 | `` | `false` | `string` | `` |

## 06.字典接口 / 办理投诉建议

- Method: `POST`
- Path: `/mx-ce-system/api/dms/feedback/handleFeedBack`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/dms/feedback/handleFeedBack`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `handleFeedBackDTO` | HandleFeedBackDTO | `body` | `true` | `HandleFeedBackDTO` | `HandleFeedBackDTO` |
| `handleFeedBackDTO.id` | 订单编号 | `` | `false` | `integer(int64)` | `` |
| `handleFeedBackDTO.result` | 处理结果 | `` | `false` | `string` | `` |

## 06.字典接口 / 企业客户新增

- Method: `POST`
- Path: `/mx-ce-system/pc/enterprise/add`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/add`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseAddDTO` | 入参实体类 | `body` | `true` | `EnterpriseAddDTO` | `EnterpriseAddDTO` |
| `enterpriseAddDTO.name` | 企业名称 | `` | `true` | `string` | `` |
| `enterpriseAddDTO.contactsName` | 联系人 | `` | `true` | `string` | `` |
| `enterpriseAddDTO.contactsMobile` | 联系电话 | `` | `true` | `string` | `` |
| `enterpriseAddDTO.exemptionNum` | 企业担保免押数量 | `` | `false` | `integer(int32)` | `` |
| `enterpriseAddDTO.dayRent` | 按天计费退款,可用值:1=是,0=否 | `` | `true` | `string(int32)` | `` |
| `enterpriseAddDTO.cityCode` | 城市归属 | `` | `true` | `string` | `` |
| `enterpriseAddDTO.billingType` | 计费类型,可用值:0=金额计费,1=天数计费 | `` | `true` | `string(int32)` | `` |
| `enterpriseAddDTO.parentId` | 上级企业 | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 获取型号列表

- Method: `GET`
- Path: `/mx-ce-system/pc/enterprise/battery/type/list`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/battery/type/list`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseId` | 企业id | `query` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 传企业id获取容量匹配

- Method: `GET`
- Path: `/mx-ce-system/pc/enterprise/capacity/match/{enterpriseId}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/capacity/match/{enterpriseId}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseId` |  | `path` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 天数池列表

- Method: `POST`
- Path: `/mx-ce-system/pc/enterprise/day/list`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/day/list`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseDayDTO` | 企业天数池dto | `body` | `true` | `EnterpriseDayDTO` | `EnterpriseDayDTO` |
| `enterpriseDayDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `enterpriseDayDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `enterpriseDayDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `enterpriseDayDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `enterpriseDayDTO.batteryModelId` | 电池型号 | `` | `false` | `integer(int32)` | `` |
| `enterpriseDayDTO.enterpriseId` | 企业id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 企业客户扣款

- Method: `PUT`
- Path: `/mx-ce-system/pc/enterprise/deduct`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/deduct`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseDeductDTO` | 入参实体类 | `body` | `true` | `EnterpriseDeductDTO` | `EnterpriseDeductDTO` |
| `enterpriseDeductDTO.id` | 企业客户ID | `` | `true` | `integer(int64)` | `` |
| `enterpriseDeductDTO.deductAmount` | 扣款金额 | `` | `true` | `number` | `` |
| `enterpriseDeductDTO.remark` | 备注 | `` | `false` | `string` | `` |
| `enterpriseDeductDTO.batteryId` | 电池型号id | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 企业客户详情

- Method: `GET`
- Path: `/mx-ce-system/pc/enterprise/detail/{id}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/detail/{id}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `id` |  | `path` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 企业员工导入模版下载

- Method: `GET`
- Path: `/mx-ce-system/pc/enterprise/download`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/download`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

No request parameters documented.

## 06.字典接口 / 企业客户编辑

- Method: `PUT`
- Path: `/mx-ce-system/pc/enterprise/edit`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/edit`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseEditDTO` | 入参实体类 | `body` | `true` | `EnterpriseEditDTO` | `EnterpriseEditDTO` |
| `enterpriseEditDTO.id` | 企业客户ID | `` | `false` | `integer(int64)` | `` |
| `enterpriseEditDTO.name` | 企业名称 | `` | `true` | `string` | `` |
| `enterpriseEditDTO.contactsName` | 联系人 | `` | `true` | `string` | `` |
| `enterpriseEditDTO.contactsMobile` | 联系电话 | `` | `true` | `string` | `` |
| `enterpriseEditDTO.exemptionNum` | 企业担保免押数量 | `` | `false` | `integer(int32)` | `` |
| `enterpriseEditDTO.dayRent` | 按天计费退款 | `` | `true` | `integer(int32)` | `` |
| `enterpriseEditDTO.cityCode` | 城市归属 | `` | `true` | `string` | `` |
| `enterpriseEditDTO.billingType` | 计费类型,可用值:0=金额计费,1=天数计费 | `` | `false` | `string(int32)` | `` |
| `enterpriseEditDTO.parentId` | 上级企业 | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 授权企业管理

- Method: `PUT`
- Path: `/mx-ce-system/pc/enterprise/grant`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/grant`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseManagementDTO` | 企业管理实体类 | `body` | `true` | `EnterpriseManagementDTO` | `EnterpriseManagementDTO` |
| `enterpriseManagementDTO.enterpriseManagement` | 是否授权企业子管理,可用值:0=是,1=否 | `` | `false` | `string` | `` |
| `enterpriseManagementDTO.id` | 企业员工id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 企业客户列表

- Method: `POST`
- Path: `/mx-ce-system/pc/enterprise/list`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/list`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseListDTO` | 入参实体类 | `body` | `true` | `EnterpriseListDTO` | `EnterpriseListDTO` |
| `enterpriseListDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `enterpriseListDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `enterpriseListDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `enterpriseListDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `enterpriseListDTO.name` | 企业名称 | `` | `false` | `string` | `` |
| `enterpriseListDTO.contactName` | 联系人 | `` | `false` | `string` | `` |
| `enterpriseListDTO.status` | 账户状态 | `` | `false` | `integer(int32)` | `` |
| `enterpriseListDTO.smsActivityType` | 计费模版 | `` | `false` | `string` | `` |
| `enterpriseListDTO.cityCode` | 所属城市 | `` | `false` | `string` | `` |

## 06.字典接口 / 操作日志记录列表

- Method: `POST`
- Path: `/mx-ce-system/pc/enterprise/operation/log`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/operation/log`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseOperationLogDTO` | 企业操作日志入参实体类 | `body` | `true` | `EnterpriseOperationLogDTO` | `EnterpriseOperationLogDTO` |
| `enterpriseOperationLogDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `enterpriseOperationLogDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `enterpriseOperationLogDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `enterpriseOperationLogDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `enterpriseOperationLogDTO.enterpriseId` | 企业id | `` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 上级企业下拉列表

- Method: `GET`
- Path: `/mx-ce-system/pc/enterprise/parent/list`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/parent/list`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `cityCode` | 城市编码 | `query` | `false` | `string` | `` |
| `billingType` | 计费类型 | `query` | `false` | `integer(int32)` | `` |
| `enterpriseId` | 企业id | `query` | `false` | `integer(int64)` | `` |

## 06.字典接口 / 企业客户充值

- Method: `PUT`
- Path: `/mx-ce-system/pc/enterprise/recharge`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/recharge`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseRechargeDTO` | 入参实体类 | `body` | `true` | `EnterpriseRechargeDTO` | `EnterpriseRechargeDTO` |
| `enterpriseRechargeDTO.id` | 企业客户ID | `` | `true` | `integer(int64)` | `` |
| `enterpriseRechargeDTO.rechargeAmount` | 充值金额 | `` | `true` | `number` | `` |
| `enterpriseRechargeDTO.remark` | 备注 | `` | `false` | `string` | `` |
| `enterpriseRechargeDTO.batteryId` | 电池型号id | `` | `false` | `string` | `` |

## 06.字典接口 / 企业员工新增

- Method: `POST`
- Path: `/mx-ce-system/pc/enterprise/staff/add`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/staff/add`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseStaffAddDTO` | 入参实体类 | `body` | `true` | `EnterpriseStaffAddDTO` | `EnterpriseStaffAddDTO` |
| `enterpriseStaffAddDTO.enterpriseId` | 企业客户ID | `` | `true` | `integer(int64)` | `` |
| `enterpriseStaffAddDTO.userId` | 用户ID | `` | `true` | `integer(int64)` | `` |

## 06.字典接口 / 企业员工免审核设置

- Method: `PUT`
- Path: `/mx-ce-system/pc/enterprise/staff/audit`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/staff/audit`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseStaffAuditDTO` | 入参实体类 | `body` | `true` | `EnterpriseStaffAuditDTO` | `EnterpriseStaffAuditDTO` |
| `enterpriseStaffAuditDTO.id` | 企业员工ID | `` | `true` | `integer(int64)` | `` |
| `enterpriseStaffAuditDTO.isAudit` | 免审 | `` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 企业员工批量新增

- Method: `POST`
- Path: `/mx-ce-system/pc/enterprise/staff/batchAdd`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/staff/batchAdd`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseId` | 企业客户ID | `query` | `true` | `integer(int64)` | `` |
| `file` |  | `query` | `true` | `file` | `` |

## 06.字典接口 / 企业员工企业免押设置

- Method: `PUT`
- Path: `/mx-ce-system/pc/enterprise/staff/deposit`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/staff/deposit`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseStaffDepositDTO` | 入参实体类 | `body` | `true` | `EnterpriseStaffDepositDTO` | `EnterpriseStaffDepositDTO` |
| `enterpriseStaffDepositDTO.id` | 企业员工ID | `` | `true` | `integer(int64)` | `` |
| `enterpriseStaffDepositDTO.isDeposit` | 企业免押 | `` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 企业员工明细导出

- Method: `POST`
- Path: `/mx-ce-system/pc/enterprise/staff/export`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/staff/export`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseStaffListDTO` | 入参实体类 | `body` | `true` | `EnterpriseStaffListDTO` | `EnterpriseStaffListDTO` |
| `enterpriseStaffListDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `enterpriseStaffListDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `enterpriseStaffListDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `enterpriseStaffListDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `enterpriseStaffListDTO.enterpriseId` | 企业客户ID | `` | `true` | `integer(int64)` | `` |
| `enterpriseStaffListDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `enterpriseStaffListDTO.mobile` | 电话 | `` | `false` | `string` | `` |
| `enterpriseStaffListDTO.status` | 用户状态,可用值:0=禁用,1=启用 | `` | `false` | `string(int32)` | `` |
| `enterpriseStaffListDTO.keyword` | 手机号/姓名 关键字查询,中间不能有空格 | `` | `false` | `string` | `` |

## 06.字典接口 / 企业员工明细列表

- Method: `POST`
- Path: `/mx-ce-system/pc/enterprise/staff/list`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/staff/list`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseStaffListDTO` | 入参实体类 | `body` | `true` | `EnterpriseStaffListDTO` | `EnterpriseStaffListDTO` |
| `enterpriseStaffListDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `enterpriseStaffListDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `enterpriseStaffListDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `enterpriseStaffListDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `enterpriseStaffListDTO.enterpriseId` | 企业客户ID | `` | `true` | `integer(int64)` | `` |
| `enterpriseStaffListDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `enterpriseStaffListDTO.mobile` | 电话 | `` | `false` | `string` | `` |
| `enterpriseStaffListDTO.status` | 用户状态,可用值:0=禁用,1=启用 | `` | `false` | `string(int32)` | `` |
| `enterpriseStaffListDTO.keyword` | 手机号/姓名 关键字查询,中间不能有空格 | `` | `false` | `string` | `` |

## 06.字典接口 / 企业员工操作日志列表

- Method: `POST`
- Path: `/mx-ce-system/pc/enterprise/staff/log/{staffId}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/staff/log/{staffId}`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `staffId` |  | `path` | `true` | `integer(int64)` | `` |
| `apiPageDTO` | 分页数据 | `body` | `true` | `ApiPageDTO` | `ApiPageDTO` |
| `apiPageDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `apiPageDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `apiPageDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `apiPageDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |

## 06.字典接口 / 企业员工新增前信息查询

- Method: `GET`
- Path: `/mx-ce-system/pc/enterprise/staff/query/{mobile}`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/staff/query/{mobile}`
- Request type: `application/x-www-form-urlencoded`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `mobile` |  | `path` | `true` | `string` | `` |

## 06.字典接口 / 企业员工禁启用

- Method: `PUT`
- Path: `/mx-ce-system/pc/enterprise/staff/status`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/staff/status`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseStaffStatusDTO` | 入参实体类 | `body` | `true` | `EnterpriseStaffStatusDTO` | `EnterpriseStaffStatusDTO` |
| `enterpriseStaffStatusDTO.id` | 企业员工ID | `` | `true` | `integer(int64)` | `` |
| `enterpriseStaffStatusDTO.status` | 状态,可用值:0=禁用,1=启用 | `` | `true` | `string(int32)` | `` |

## 06.字典接口 / 企业客户禁启用

- Method: `PUT`
- Path: `/mx-ce-system/pc/enterprise/status`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/status`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseStatusDTO` | 入参实体类 | `body` | `true` | `EnterpriseStatusDTO` | `EnterpriseStatusDTO` |
| `enterpriseStatusDTO.id` | 企业客户ID | `` | `true` | `integer(int64)` | `` |
| `enterpriseStatusDTO.status` | 账户状态 | `` | `true` | `integer(int32)` | `` |

## 06.字典接口 / 企业客户交易明细导出

- Method: `POST`
- Path: `/mx-ce-system/pc/enterprise/transaction/export`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/transaction/export`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseTransactionListDTO` | 入参实体类 | `body` | `true` | `EnterpriseTransactionListDTO` | `EnterpriseTransactionListDTO` |
| `enterpriseTransactionListDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `enterpriseTransactionListDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `enterpriseTransactionListDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `enterpriseTransactionListDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `enterpriseTransactionListDTO.enterpriseId` | 企业客户ID | `` | `true` | `integer(int64)` | `` |
| `enterpriseTransactionListDTO.name` | 员工姓名 | `` | `false` | `string` | `` |
| `enterpriseTransactionListDTO.mobile` | 电话 | `` | `false` | `string` | `` |
| `enterpriseTransactionListDTO.type` | 消费类型,可用值:1=审核消费,2=押金消费,3=租金退款,4=押金退款,5=充值,6=扣款,7=续租消费,8=天数转让,9=天数退回,10=天数归还,11=余额划入,12=余额划出,13=天数划入,14=天数划出 | `` | `false` | `string(int32)` | `` |
| `enterpriseTransactionListDTO.startTime` | 开始时间 | `` | `false` | `string` | `` |
| `enterpriseTransactionListDTO.endTime` | 结束时间 | `` | `false` | `string` | `` |

## 06.字典接口 / 企业客户交易明细列表

- Method: `POST`
- Path: `/mx-ce-system/pc/enterprise/transaction/list`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/transaction/list`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseTransactionListDTO` | 入参实体类 | `body` | `true` | `EnterpriseTransactionListDTO` | `EnterpriseTransactionListDTO` |
| `enterpriseTransactionListDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `enterpriseTransactionListDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `enterpriseTransactionListDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `enterpriseTransactionListDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `enterpriseTransactionListDTO.enterpriseId` | 企业客户ID | `` | `true` | `integer(int64)` | `` |
| `enterpriseTransactionListDTO.name` | 员工姓名 | `` | `false` | `string` | `` |
| `enterpriseTransactionListDTO.mobile` | 电话 | `` | `false` | `string` | `` |
| `enterpriseTransactionListDTO.type` | 消费类型,可用值:1=审核消费,2=押金消费,3=租金退款,4=押金退款,5=充值,6=扣款,7=续租消费,8=天数转让,9=天数退回,10=天数归还,11=余额划入,12=余额划出,13=天数划入,14=天数划出 | `` | `false` | `string(int32)` | `` |
| `enterpriseTransactionListDTO.startTime` | 开始时间 | `` | `false` | `string` | `` |
| `enterpriseTransactionListDTO.endTime` | 结束时间 | `` | `false` | `string` | `` |

## 06.字典接口 / 划入-划出

- Method: `PUT`
- Path: `/mx-ce-system/pc/enterprise/transfer`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/pc/enterprise/transfer`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `enterpriseTransferDTO` | 企业转账入参实体类 | `body` | `true` | `EnterpriseTransferDTO` | `EnterpriseTransferDTO` |
| `enterpriseTransferDTO.operationType` | 操作类型 1=划入 2=划出 | `` | `false` | `string` | `` |
| `enterpriseTransferDTO.enterpriseId` | 企业客户ID | `` | `false` | `integer(int64)` | `` |
| `enterpriseTransferDTO.batteryId` | 电池型号id | `` | `false` | `integer(int32)` | `` |
| `enterpriseTransferDTO.remark` | 备注 | `` | `false` | `string` | `` |
| `enterpriseTransferDTO.amount` | 划入或划出金额 | `` | `false` | `integer(int32)` | `` |

## 06.字典接口 / 导出报障列表

- Method: `POST`
- Path: `/mx-ce-system/api/dms/fault/exportFault`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/dms/fault/exportFault`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `dmsFaultDTO` | 故障信息 | `body` | `true` | `DmsFaultDTO` | `DmsFaultDTO` |
| `dmsFaultDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `dmsFaultDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `dmsFaultDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `dmsFaultDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `dmsFaultDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `dmsFaultDTO.type` | 故障类型 1=电池 2=电柜 3=app | `` | `false` | `integer(int32)` | `` |
| `dmsFaultDTO.phone` | 手机号 | `` | `false` | `string` | `` |
| `dmsFaultDTO.deviceCode` | 设备编号 | `` | `false` | `string` | `` |
| `dmsFaultDTO.startDate` | 筛选条件,报障开始日期 | `` | `false` | `string` | `` |
| `dmsFaultDTO.endDate` | 筛选条件,报障结束日期 | `` | `false` | `string` | `` |
| `dmsFaultDTO.status` | 订单状态 1=待处理 2=已处理 | `` | `false` | `integer(int32)` | `` |
| `dmsFaultDTO.cityCode` | 城市编码 | `` | `false` | `string` | `` |

## 06.字典接口 / 获取用户报障列表

- Method: `POST`
- Path: `/mx-ce-system/api/dms/fault/getFaultList`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/dms/fault/getFaultList`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `dmsFaultDTO` | 故障信息 | `body` | `true` | `DmsFaultDTO` | `DmsFaultDTO` |
| `dmsFaultDTO.pageSize` | 每页显示记录数 | `` | `true` | `integer(int64)` | `` |
| `dmsFaultDTO.pageCurrent` | 当前页码，从1开始 | `` | `true` | `integer(int64)` | `` |
| `dmsFaultDTO.orderField` | 排序字段 | `` | `false` | `string` | `` |
| `dmsFaultDTO.order` | 排序方式，可选值(asc、desc) | `` | `false` | `string` | `` |
| `dmsFaultDTO.name` | 姓名 | `` | `false` | `string` | `` |
| `dmsFaultDTO.type` | 故障类型 1=电池 2=电柜 3=app | `` | `false` | `integer(int32)` | `` |
| `dmsFaultDTO.phone` | 手机号 | `` | `false` | `string` | `` |
| `dmsFaultDTO.deviceCode` | 设备编号 | `` | `false` | `string` | `` |
| `dmsFaultDTO.startDate` | 筛选条件,报障开始日期 | `` | `false` | `string` | `` |
| `dmsFaultDTO.endDate` | 筛选条件,报障结束日期 | `` | `false` | `string` | `` |
| `dmsFaultDTO.status` | 订单状态 1=待处理 2=已处理 | `` | `false` | `integer(int32)` | `` |
| `dmsFaultDTO.cityCode` | 城市编码 | `` | `false` | `string` | `` |

## 06.字典接口 / 报障回复

- Method: `POST`
- Path: `/mx-ce-system/api/dms/fault/reply`
- URL: `https://pre.miaoxianghuandian.com/mx-ce-system/api/dms/fault/reply`
- Request type: `application/x-www-form-urlencoded,application/json`
- Response type: `*/*`

### Request Parameters

| Name | Description | Location | Required | Type | Schema |
| --- | --- | --- | --- | --- | --- |
| `dmsFaultReplyDTO` | 故障回复 | `body` | `true` | `DmsFaultReplyDTO` | `DmsFaultReplyDTO` |
| `dmsFaultReplyDTO.documentId` | 单据编号 | `` | `false` | `string` | `` |
| `dmsFaultReplyDTO.content` | 回复内容 | `` | `false` | `string` | `` |

