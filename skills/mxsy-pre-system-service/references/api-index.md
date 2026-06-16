# System Service API Index

Generated from `D:/download/system-service.md` source content.

Excluded endpoints already covered by existing skills:

- `POST /mx-ce-system/api/cabinet/optCabinetDoor` -> `mxsy-pre-cabinet-door`

Total endpoints in this reference: `501`.

## 01.区域接口

| Title | Method | Path | Request Type | Required Params |
| --- | --- | --- | --- | --- |
| 所属城市列表 | `GET` | `/mx-ce-system/api/v1/areas/options` | `application/x-www-form-urlencoded` | - |

## 02.用户接口

| Title | Method | Path | Request Type | Required Params |
| --- | --- | --- | --- | --- |
| 新增用户 | `POST` | `/mx-ce-system/api/v1/users` | `application/x-www-form-urlencoded,application/json` | userForm, userForm.username, userForm.nickname, userForm.roleIds, userForm.cityIds |
| 导出用户 | `GET` | `/mx-ce-system/api/v1/users/_export` | `application/x-www-form-urlencoded` | queryParams |
| 导入用户 | `POST` | `/mx-ce-system/api/v1/users/_import` | `multipart/form-data` | deptId, file |
| 删除用户 | `DELETE` | `/mx-ce-system/api/v1/users/{ids}` | `application/x-www-form-urlencoded` | ids |
| 修改用户 | `PUT` | `/mx-ce-system/api/v1/users/{userId}` | `application/x-www-form-urlencoded,application/json` | userId, userForm, userForm.username, userForm.nickname, userForm.roleIds, userForm.cityIds |
| 用户表单数据 | `GET` | `/mx-ce-system/api/v1/users/{userId}/form` | `application/x-www-form-urlencoded` | userId |
| 修改用户密码 | `GET` | `/mx-ce-system/api/v1/users/{userId}/password` | `application/x-www-form-urlencoded` | userId, password |
| 修改用户状态 | `PATCH` | `/mx-ce-system/api/v1/users/{userId}/status` | `application/x-www-form-urlencoded` | userId, status |
| 移动端个人信息 | `GET` | `/mx-ce-system/api/v1/users/getUserInfoFromApp` | `application/x-www-form-urlencoded` | - |
| 获取当前登录用户信息 | `GET` | `/mx-ce-system/api/v1/users/me` | `application/x-www-form-urlencoded` | - |
| 用户分页列表 | `GET` | `/mx-ce-system/api/v1/users/pages` | `application/x-www-form-urlencoded` | - |
| 根据手机号获取可切换角色列表 | `GET` | `/mx-ce-system/api/v1/users/switch/{mobile}` | `application/x-www-form-urlencoded` | mobile |
| 用户导入模板下载 | `GET` | `/mx-ce-system/api/v1/users/template` | `application/x-www-form-urlencoded` | - |
| 手机换绑 | `PATCH` | `/mx-ce-system/api/v1/users/update/{mobile}` | `application/x-www-form-urlencoded` | mobile, smsCode |

## 03.角色接口

| Title | Method | Path | Request Type | Required Params |
| --- | --- | --- | --- | --- |
| 新增角色 | `POST` | `/mx-ce-system/api/v1/roles` | `application/x-www-form-urlencoded,application/json` | roleForm, roleForm.name, roleForm.code |
| 修改角色 | `PUT` | `/mx-ce-system/api/v1/roles/{id}` | `application/x-www-form-urlencoded,application/json` | roleForm, roleForm.name, roleForm.code |
| 删除角色 | `DELETE` | `/mx-ce-system/api/v1/roles/{ids}` | `application/x-www-form-urlencoded` | ids |
| 角色表单数据 | `GET` | `/mx-ce-system/api/v1/roles/{roleId}/form` | `application/x-www-form-urlencoded` | roleId |
| 获取角色的菜单ID集合 | `GET` | `/mx-ce-system/api/v1/roles/{roleId}/menuIds` | `application/x-www-form-urlencoded` | roleId |
| 分配菜单权限给角色 | `PUT` | `/mx-ce-system/api/v1/roles/{roleId}/menus` | `application/x-www-form-urlencoded,application/json` | roleId, integers |
| 修改角色状态 | `PUT` | `/mx-ce-system/api/v1/roles/{roleId}/status` | `application/x-www-form-urlencoded` | roleId, status |
| 角色下拉列表 | `GET` | `/mx-ce-system/api/v1/roles/options` | `application/x-www-form-urlencoded` | - |
| 角色分页列表 | `GET` | `/mx-ce-system/api/v1/roles/pages` | `application/x-www-form-urlencoded` | - |

## 04.菜单接口

| Title | Method | Path | Request Type | Required Params |
| --- | --- | --- | --- | --- |
| 菜单列表 | `GET` | `/mx-ce-system/api/v1/menus` | `application/x-www-form-urlencoded` | - |
| 新增菜单 | `POST` | `/mx-ce-system/api/v1/menus` | `application/x-www-form-urlencoded,application/json` | menuForm |
| 修改菜单 | `PUT` | `/mx-ce-system/api/v1/menus/{id}` | `application/x-www-form-urlencoded,application/json` | menuForm |
| 删除菜单 | `DELETE` | `/mx-ce-system/api/v1/menus/{id}` | `application/x-www-form-urlencoded` | id |
| 菜单表单数据 | `GET` | `/mx-ce-system/api/v1/menus/{id}/form` | `application/x-www-form-urlencoded` | id |
| 修改菜单显示状态 | `PATCH` | `/mx-ce-system/api/v1/menus/{menuId}` | `application/x-www-form-urlencoded` | menuId, visible |
| 菜单下拉列表 | `GET` | `/mx-ce-system/api/v1/menus/options` | `application/x-www-form-urlencoded` | - |
| 资源（菜单+权限）列表 | `GET` | `/mx-ce-system/api/v1/menus/resources` | `application/x-www-form-urlencoded` | - |
| 路由列表 | `GET` | `/mx-ce-system/api/v1/menus/routes` | `application/x-www-form-urlencoded` | - |

## 05.部门接口

| Title | Method | Path | Request Type | Required Params |
| --- | --- | --- | --- | --- |
| 获取部门列表 | `GET` | `/mx-ce-system/api/v1/dept` | `application/x-www-form-urlencoded` | - |
| 新增部门 | `POST` | `/mx-ce-system/api/v1/dept` | `application/x-www-form-urlencoded,application/json` | deptForm, deptForm.parentId |
| 修改部门 | `PUT` | `/mx-ce-system/api/v1/dept/{deptId}` | `application/x-www-form-urlencoded,application/json` | deptId, deptForm, deptForm.parentId |
| 获取部门表单数据 | `GET` | `/mx-ce-system/api/v1/dept/{deptId}/form` | `application/x-www-form-urlencoded` | deptId |
| 删除部门 | `DELETE` | `/mx-ce-system/api/v1/dept/{ids}` | `application/x-www-form-urlencoded` | ids |
| 获取部门下拉选项 | `GET` | `/mx-ce-system/api/v1/dept/options` | `application/x-www-form-urlencoded` | - |

## 06.字典接口

| Title | Method | Path | Request Type | Required Params |
| --- | --- | --- | --- | --- |
| 新增字典 | `POST` | `/mx-ce-system/api/v1/dict/items` | `application/x-www-form-urlencoded,application/json` | dictForm |
| 修改字典 | `PUT` | `/mx-ce-system/api/v1/dict/items/{id}` | `application/x-www-form-urlencoded,application/json` | id, dictForm |
| 字典数据表单数据 | `GET` | `/mx-ce-system/api/v1/dict/items/{id}/form` | `application/x-www-form-urlencoded` | id |
| 删除字典 | `DELETE` | `/mx-ce-system/api/v1/dict/items/{ids}` | `application/x-www-form-urlencoded` | ids |
| 字典数据分页列表 | `GET` | `/mx-ce-system/api/v1/dict/items/pages` | `application/x-www-form-urlencoded` | queryParams |
| 字典下拉列表 | `GET` | `/mx-ce-system/api/v1/dict/options` | `application/x-www-form-urlencoded` | typeCode |
| 字典分页列表 | `GET` | `/mx-ce-system/api/v1/dict/page` | `application/x-www-form-urlencoded` | - |
| 新增字典类型 | `POST` | `/mx-ce-system/api/v1/dict/types` | `application/x-www-form-urlencoded,application/json` | dictTypeForm |
| 修改字典类型 | `PUT` | `/mx-ce-system/api/v1/dict/types/{id}` | `application/x-www-form-urlencoded,application/json` | id, dictTypeForm |
| 字典类型表单数据 | `GET` | `/mx-ce-system/api/v1/dict/types/{id}/form` | `application/x-www-form-urlencoded` | id |
| 删除字典类型 | `DELETE` | `/mx-ce-system/api/v1/dict/types/{ids}` | `application/x-www-form-urlencoded` | ids |
| 获取字典类型在数据项 | `GET` | `/mx-ce-system/api/v1/dict/types/{typeCode}/items` | `application/x-www-form-urlencoded` | typeCode |
| 字典类型分页列表 | `GET` | `/mx-ce-system/api/v1/dict/types/pages` | `application/x-www-form-urlencoded` | - |
| 资金流水列表 | `POST` | `/mx-ce-system/api/capitalFlow` | `application/x-www-form-urlencoded,application/json` | capitalFlowListDTO, capitalFlowListDTO.pageSize, capitalFlowListDTO.pageCurrent |
| 资金流水导出 | `POST` | `/mx-ce-system/api/capitalFlow/export` | `application/x-www-form-urlencoded,application/json` | capitalFlowListDTO, capitalFlowListDTO.pageSize, capitalFlowListDTO.pageCurrent |
| 换电订单收入记录 | `POST` | `/mx-ce-system/api/changeOrderIncome` | `application/x-www-form-urlencoded,application/json` | changeOrderIncomeDTO, changeOrderIncomeDTO.pageSize, changeOrderIncomeDTO.pageCurrent |
| 换电订单收入记录导出 | `POST` | `/mx-ce-system/api/exportChangeOrderIncome` | `application/x-www-form-urlencoded,application/json` | changeOrderIncomeDTO, changeOrderIncomeDTO.pageSize, changeOrderIncomeDTO.pageCurrent |
| 获取企业下拉列表 | `GET` | `/mx-ce-system/api/getEnterprise` | `application/x-www-form-urlencoded` | cityCode |
| 后台充值记录 | `POST` | `/mx-ce-system/api/rechargeRecord` | `application/x-www-form-urlencoded,application/json` | rechargeRecordDTO, rechargeRecordDTO.pageSize, rechargeRecordDTO.pageCurrent |
| 后台充值记录导出 | `POST` | `/mx-ce-system/api/rechargeRecord/export` | `application/x-www-form-urlencoded,application/json` | rechargeRecordDTO, rechargeRecordDTO.pageSize, rechargeRecordDTO.pageCurrent |
| 后台充值撤回 | `PUT` | `/mx-ce-system/api/rechargeRecord/withdraw/{id}` | `application/x-www-form-urlencoded` | - |
| 提现审核分页列表 | `POST` | `/mx-ce-system/api/withdrawAudit` | `application/x-www-form-urlencoded,application/json` | withdrawAuditDTO, withdrawAuditDTO.pageSize, withdrawAuditDTO.pageCurrent |
| withdrawAgain | `PUT` | `/mx-ce-system/api/withdrawAudit/Again/{id}` | `application/x-www-form-urlencoded` | id |
| 提现审核导出 | `POST` | `/mx-ce-system/api/withdrawAudit/export` | `application/x-www-form-urlencoded,application/json` | withdrawAuditDTO, withdrawAuditDTO.pageSize, withdrawAuditDTO.pageCurrent |
| 提现审核不通过 | `PUT` | `/mx-ce-system/api/withdrawAudit/fail` | `application/x-www-form-urlencoded` | id |
| 提现审核订单状态下拉列表 | `GET` | `/mx-ce-system/api/withdrawAudit/statusList` | `application/x-www-form-urlencoded` | - |
| 提现审核通过 | `PUT` | `/mx-ce-system/api/withdrawAudit/success` | `application/x-www-form-urlencoded` | id |
| 提现审核订单类型下拉列表 | `GET` | `/mx-ce-system/api/withdrawAudit/typeList` | `application/x-www-form-urlencoded` | - |
| 提现对账详情 | `POST` | `/mx-ce-system/api/withdrawAudit/withdrawCheckDetail` | `application/x-www-form-urlencoded,application/json` | withdrawCheckListDTO |
| 提现对账列表 | `POST` | `/mx-ce-system/api/withdrawAudit/withdrawCheckList` | `application/x-www-form-urlencoded,application/json` | withdrawCheckListDTO |
| PC-新增电柜调拨 | `POST` | `/mx-ce-system/api/wareHouse/add` | `application/x-www-form-urlencoded,application/json` | brand, model, warehouseInLocation, warehouseOutLocation, transferDescription, id, wareType |
| PC-新增预约入仓 | `POST` | `/mx-ce-system/api/wareHouse/addAppointment` | `application/x-www-form-urlencoded,application/json` | warehouseAppointmentAddDTO, warehouseAppointmentAddDTO.warehouseType, warehouseAppointmentAddDTO.brand, warehouseAppointmentAddDTO.model, warehouseAppointmentAddDTO.purchaseNumber, warehouseAppointmentAddDTO.cityCode |
| PC-新增预约单调拨详情 | `POST` | `/mx-ce-system/api/wareHouse/addDetails` | `application/x-www-form-urlencoded,application/json` | id, warehouseDetailsId, warehouseInLocation, transferDescription, file |
| 移动端-新增调拨 | `POST` | `/mx-ce-system/api/wareHouse/addWarehouse` | `application/x-www-form-urlencoded,application/json` | warehouseDTO, warehouseDTO.warehouseInLocation, warehouseDTO.warehouseOutLocation, warehouseDTO.warehouseType, warehouseDTO.brand, warehouseDTO.model, warehouseDTO.transferDescription, warehouseDTO.deviceNumber |
| pc-端新增电池调拨 | `POST` | `/mx-ce-system/api/wareHouse/addWarehousePc` | `application/x-www-form-urlencoded,application/json` | brand, model, warehouseInLocation, warehouseOutLocation, transferDescription, id, wareType |
| PC-电柜信息列表 | `POST` | `/mx-ce-system/api/wareHouse/cabinetList` | `application/x-www-form-urlencoded,application/json` | warehouseCabinetInfoDTO, warehouseCabinetInfoDTO.pageSize, warehouseCabinetInfoDTO.pageCurrent |
| PC-删除预约入仓 | `DELETE` | `/mx-ce-system/api/wareHouse/deleteAppointment` | `application/x-www-form-urlencoded` | id |
| PC-电池删除调拨单 | `DELETE` | `/mx-ce-system/api/wareHouse/deleteBatteryWarehouse` | `application/x-www-form-urlencoded` | 调拨id |
| PC-删除电柜调拨 | `DELETE` | `/mx-ce-system/api/wareHouse/deleteCabinetWarehouse` | `application/x-www-form-urlencoded` | id |
| PC-电柜调拨详情 | `GET` | `/mx-ce-system/api/wareHouse/detail` | `application/x-www-form-urlencoded` | id |
| PC-预约入仓详情 | `GET` | `/mx-ce-system/api/wareHouse/detailAppointment` | `application/x-www-form-urlencoded` | id |
| PC-设备编号导入模版下载 | `GET` | `/mx-ce-system/api/wareHouse/download` | `application/x-www-form-urlencoded` | - |
| PC-审核电池调拨 | `PUT` | `/mx-ce-system/api/wareHouse/examineBatteryWarehouse` | `application/x-www-form-urlencoded,application/json` | examineWarehouseDTO |
| PC-审核电柜调拨 | `PUT` | `/mx-ce-system/api/wareHouse/examineCabinetWarehouse` | `application/x-www-form-urlencoded,application/json` | examineWarehouseDTO |
| PC-审核预约入仓预约单详情 | `POST` | `/mx-ce-system/api/wareHouse/examineDetails` | `application/x-www-form-urlencoded,application/json` | warehouseDetailsExamineDTO |
| 调拨审核 | `PUT` | `/mx-ce-system/api/wareHouse/examineWarehouse` | `application/x-www-form-urlencoded,application/json` | examineWarehouseDTO |
| PC-电柜调拨列表导出 | `POST` | `/mx-ce-system/api/wareHouse/export` | `application/x-www-form-urlencoded,application/json` | warehouseQueryCabinetDTO, warehouseQueryCabinetDTO.pageSize, warehouseQueryCabinetDTO.pageCurrent |
| PC-导出预约入仓列表 | `POST` | `/mx-ce-system/api/wareHouse/exportAppointment` | `application/x-www-form-urlencoded,application/json` | warehouseQueryAppointmentDTO, warehouseQueryAppointmentDTO.pageSize, warehouseQueryAppointmentDTO.pageCurrent |
| PC-电柜信息导出 | `POST` | `/mx-ce-system/api/wareHouse/exportCabinet` | `application/x-www-form-urlencoded,application/json` | warehouseCabinetInfoDTO, warehouseCabinetInfoDTO.pageSize, warehouseCabinetInfoDTO.pageCurrent |
| PC-导出电池调拨列表 | `POST` | `/mx-ce-system/api/wareHouse/exportWarehouse` | `application/x-www-form-urlencoded,application/json` | warehouseQueryPcDTO, warehouseQueryPcDTO.pageSize, warehouseQueryPcDTO.pageCurrent |
| PC-电池调拨信息导出 | `POST` | `/mx-ce-system/api/wareHouse/exportWarehouseBattery` | `application/x-www-form-urlencoded,application/json` | warehouseBatteryDTO, warehouseBatteryDTO.pageSize, warehouseBatteryDTO.pageCurrent |
| 获取城市列表 | `GET` | `/mx-ce-system/api/wareHouse/getWarehouseCity` | `application/x-www-form-urlencoded` | - |
| PC-电柜调拨列表 | `POST` | `/mx-ce-system/api/wareHouse/list` | `application/x-www-form-urlencoded,application/json` | warehouseQueryCabinetDTO, warehouseQueryCabinetDTO.pageSize, warehouseQueryCabinetDTO.pageCurrent |
| PC-预约入仓列表 | `POST` | `/mx-ce-system/api/wareHouse/listAppointment` | `application/x-www-form-urlencoded,application/json` | warehouseQueryAppointmentDTO, warehouseQueryAppointmentDTO.pageSize, warehouseQueryAppointmentDTO.pageCurrent |
| PC-预约单详情列表 | `POST` | `/mx-ce-system/api/wareHouse/listDetails` | `application/x-www-form-urlencoded,application/json` | warehouseQueryDetailsDTO, warehouseQueryDetailsDTO.pageSize, warehouseQueryDetailsDTO.pageCurrent |
| 获取仓储调拨调入位置下拉列表-依据调出位置得到对应的值 | `POST` | `/mx-ce-system/api/wareHouse/listOptionWareHouse` | `application/x-www-form-urlencoded,application/json` | optionWareHouseDTO |
| 获取仓储调拨品牌下拉列表 | `POST` | `/mx-ce-system/api/wareHouse/listWareHouseBrand` | `application/x-www-form-urlencoded,application/json` | optionWareHouseBrandDTO |
| 获取仓储调拨型号下拉列表 | `POST` | `/mx-ce-system/api/wareHouse/listWareHouseModel` | `application/x-www-form-urlencoded,application/json` | optionWareHouseModelDTO |
| PC-预约入仓订单状态下拉列表 | `GET` | `/mx-ce-system/api/wareHouse/reservationStatusOptions` | `application/x-www-form-urlencoded` | - |
| PC-预约入仓调入位置下拉列表 | `GET` | `/mx-ce-system/api/wareHouse/reservationWarehouseInLocation` | `application/x-www-form-urlencoded` | - |
| 移动端-仓储调拨调拨列表 | `POST` | `/mx-ce-system/api/wareHouse/screenWarehouse` | `application/x-www-form-urlencoded,application/json` | warehouseQueryDTO, warehouseQueryDTO.pageSize, warehouseQueryDTO.pageCurrent |
| PC-端电池调拨列表 | `POST` | `/mx-ce-system/api/wareHouse/screenWarehousePc` | `application/x-www-form-urlencoded,application/json` | warehouseQueryPcDTO, warehouseQueryPcDTO.pageSize, warehouseQueryPcDTO.pageCurrent |
| 订单状态下拉列表 | `GET` | `/mx-ce-system/api/wareHouse/statusOptions` | `application/x-www-form-urlencoded` | - |
| PC-电池调拨信息列表 | `POST` | `/mx-ce-system/api/wareHouse/warehouseBattery` | `application/x-www-form-urlencoded,application/json` | warehouseBatteryDTO, warehouseBatteryDTO.pageSize, warehouseBatteryDTO.pageCurrent |
| PC-电柜调拨详情审批信息列表 | `POST` | `/mx-ce-system/api/wareHouse/warehouseCabinetExamine` | `application/x-www-form-urlencoded,application/json` | warehouseExamineDetailsDTO, warehouseExamineDetailsDTO.pageSize, warehouseExamineDetailsDTO.pageCurrent |
| PC-端电池调拨详情 | `GET` | `/mx-ce-system/api/wareHouse/warehouseDetails` | `application/x-www-form-urlencoded` | id |
| 移动端-调拨详情 | `POST` | `/mx-ce-system/api/wareHouse/warehouseDetails` | `application/x-www-form-urlencoded,application/json` | warehouseDetailsDTO |
| PC-电池调拨详情审批信息列表 | `POST` | `/mx-ce-system/api/wareHouse/warehouseExamine` | `application/x-www-form-urlencoded,application/json` | warehouseExamineDetailsDTO, warehouseExamineDetailsDTO.pageSize, warehouseExamineDetailsDTO.pageCurrent |
| 获取调入位置下拉列表-单独数据 | `GET` | `/mx-ce-system/api/wareHouse/warehouseInLocation` | `application/x-www-form-urlencoded` | - |
| 获取调出位置下拉列表-单独数据 | `GET` | `/mx-ce-system/api/wareHouse/warehouseOutLocation` | `application/x-www-form-urlencoded` | - |
| 移动端-驳回信息分页列表 | `POST` | `/mx-ce-system/api/wareHouse/warehouseReject` | `application/x-www-form-urlencoded,application/json` | warehouseRejectDTO, warehouseRejectDTO.pageSize, warehouseRejectDTO.pageCurrent |
| 获取仓门禁用原因列表 | `POST` | `/mx-ce-system/api/smsDoor/disableReason` | `application/x-www-form-urlencoded,application/json` | smsDoorDisableReasonDTO, smsDoorDisableReasonDTO.pageSize, smsDoorDisableReasonDTO.pageCurrent |
| 新增仓门禁用原因 | `POST` | `/mx-ce-system/api/smsDoor/disableReason/add` | `application/x-www-form-urlencoded,application/json` | smsDoorAddDisableReasonDTO |
| 删除仓门禁用原因 | `DELETE` | `/mx-ce-system/api/smsDoor/disableReason/delete` | `application/x-www-form-urlencoded` | id |
| 仓门禁用记录 | `POST` | `/mx-ce-system/api/smsDoor/disableRecord` | `application/x-www-form-urlencoded,application/json` | smsDoorDisableRecordDTO, smsDoorDisableRecordDTO.pageSize, smsDoorDisableRecordDTO.pageCurrent |
| 导出仓门禁用记录 | `POST` | `/mx-ce-system/api/smsDoor/disableRecord/export` | `application/x-www-form-urlencoded,application/json` | smsDoorDisableRecordDTO, smsDoorDisableRecordDTO.pageSize, smsDoorDisableRecordDTO.pageCurrent |
| 仓门开启记录列表 | `POST` | `/mx-ce-system/api/smsDoor/enableRecord` | `application/x-www-form-urlencoded,application/json` | smsDoorEnableRecordDTO, smsDoorEnableRecordDTO.pageSize, smsDoorEnableRecordDTO.pageCurrent |
| 导出仓门开启记录 | `POST` | `/mx-ce-system/api/smsDoor/enableRecord/export` | `application/x-www-form-urlencoded,application/json` | smsDoorEnableRecordDTO, smsDoorEnableRecordDTO.pageSize, smsDoorEnableRecordDTO.pageCurrent |
| 禁用原因下拉列表 | `GET` | `/mx-ce-system/api/SmsDoorDisableReasonController/optionList` | `application/x-www-form-urlencoded` | - |
| 新增城市 | `POST` | `/mx-ce-system/pc/regionManagement/addRegion` | `application/x-www-form-urlencoded,application/json` | regionListDTO, regionListDTO.province, regionListDTO.city, regionListDTO.cityCode |
| 删除城市 | `DELETE` | `/mx-ce-system/pc/regionManagement/deleteRegion` | `application/x-www-form-urlencoded` | id |
| 禁启用城市 | `POST` | `/mx-ce-system/pc/regionManagement/enableRegion` | `application/x-www-form-urlencoded,application/json` | enableRegionDTO, enableRegionDTO.id, enableRegionDTO.status |
| 获取区域编码 | `GET` | `/mx-ce-system/pc/regionManagement/getCity` | `application/x-www-form-urlencoded` | city |
| 获取省份 | `GET` | `/mx-ce-system/pc/regionManagement/getProvince` | `application/x-www-form-urlencoded` | - |
| 城市列表 | `POST` | `/mx-ce-system/pc/regionManagement/regionList` | `application/x-www-form-urlencoded,application/json` | regionManagementListDTO, regionManagementListDTO.pageSize, regionManagementListDTO.pageCurrent |
| 生成企业员工数据 | `POST` | `/mx-ce-system/exportMealOrder/generateEnterpriseStaffs` | `application/x-www-form-urlencoded` | - |
| 生成套餐订单数据 | `POST` | `/mx-ce-system/exportMealOrder/generateMealOrders` | `application/x-www-form-urlencoded` | - |
| 生成用户数据 | `POST` | `/mx-ce-system/exportMealOrder/generateUsers` | `application/x-www-form-urlencoded` | - |
| 导出电池列表 | `POST` | `/mx-ce-system/api/battery/_export` | `application/x-www-form-urlencoded,application/json` | batteryPcPageDTO, batteryPcPageDTO.pageSize, batteryPcPageDTO.pageCurrent |
| 允许充放电 | `POST` | `/mx-ce-system/api/battery/allowDischarge` | `application/x-www-form-urlencoded` | batteryCode |
| PC端-电池-资产地图 | `POST` | `/mx-ce-system/api/battery/batteryAssetMap` | `application/x-www-form-urlencoded` | - |
| 电池资产 | `POST` | `/mx-ce-system/api/battery/batteryAssets` | `application/x-www-form-urlencoded` | - |
| 电池详情 | `POST` | `/mx-ce-system/api/battery/batteryDetail` | `application/x-www-form-urlencoded` | batteryCode |
| PC端-电池详情-资产地图 | `POST` | `/mx-ce-system/api/battery/batteryDetailAssetMap` | `application/x-www-form-urlencoded` | batteryCode |
| 电池故障数统计 | `POST` | `/mx-ce-system/api/battery/batteryFault/{year}` | `application/x-www-form-urlencoded` | year |
| 移动端-电池列表 | `POST` | `/mx-ce-system/api/battery/batteryList` | `application/x-www-form-urlencoded,application/json` | batteryPageDTO, batteryPageDTO.pageSize, batteryPageDTO.pageCurrent |
| PC端-电池列表筛选查询 | `POST` | `/mx-ce-system/api/battery/batteryListPc` | `application/x-www-form-urlencoded,application/json` | batteryPcPageDTO, batteryPcPageDTO.pageSize, batteryPcPageDTO.pageCurrent |
| 电池型号数量 | `POST` | `/mx-ce-system/api/battery/batteryModelNum` | `application/x-www-form-urlencoded` | - |
| PC端-电池营运信息 | `POST` | `/mx-ce-system/api/battery/batteryOperationInfo` | `application/x-www-form-urlencoded,application/json` | batteryOperationInfoPageDTO, batteryOperationInfoPageDTO.pageSize, batteryOperationInfoPageDTO.pageCurrent, batteryOperationInfoPageDTO.batteryCode |
| PC端-电池参数曲线 | `POST` | `/mx-ce-system/api/battery/batteryParameterCurve` | `application/x-www-form-urlencoded` | batteryCode, startTime, endTime |
| PC端-充放电记录导出 | `GET` | `/mx-ce-system/api/battery/batteryParamsDataExport` | `application/x-www-form-urlencoded` | batteryCode, startTime, endTime |
| 电池当前定位 | `POST` | `/mx-ce-system/api/battery/batteryPosition` | `application/x-www-form-urlencoded` | batteryCode |
| PC端-电池品牌列表,包含型号 | `GET` | `/mx-ce-system/api/battery/brandOptions` | `application/x-www-form-urlencoded` | - |
| PC端-电池业务类型列表 | `GET` | `/mx-ce-system/api/battery/businessOptions` | `application/x-www-form-urlencoded` | - |
| 电柜故障数统计 | `POST` | `/mx-ce-system/api/battery/cabinetFault/{year}` | `application/x-www-form-urlencoded` | year |
| PC端-充放电记录 | `POST` | `/mx-ce-system/api/battery/chargeDischargeRecord` | `application/x-www-form-urlencoded,application/json` | chargeDischargeRecordPageDTO, chargeDischargeRecordPageDTO.pageSize, chargeDischargeRecordPageDTO.pageCurrent, chargeDischargeRecordPageDTO.batteryCode, chargeDischargeRecordPageDTO.startTime, chargeDischargeRecordPageDTO.endTime |
| 禁止充电 | `POST` | `/mx-ce-system/api/battery/disableCharge` | `application/x-www-form-urlencoded` | batteryCode |
| 禁止放电 | `POST` | `/mx-ce-system/api/battery/disableDischarge` | `application/x-www-form-urlencoded` | batteryCode |
| PC端-电池在线状态列表 | `GET` | `/mx-ce-system/api/battery/onlineOptions` | `application/x-www-form-urlencoded` | - |
| 全部重启 | `POST` | `/mx-ce-system/api/battery/remoteRestartAll` | `application/x-www-form-urlencoded` | - |
| 重启BMS | `POST` | `/mx-ce-system/api/battery/remoteRestartBms` | `application/x-www-form-urlencoded` | batteryCode |
| 重启DTU | `POST` | `/mx-ce-system/api/battery/remoteRestartDtu` | `application/x-www-form-urlencoded` | - |
| PC端-电池状态列表 | `GET` | `/mx-ce-system/api/battery/statusOptions` | `application/x-www-form-urlencoded` | - |
| PC端-充放电记录，时长和次数 | `GET` | `/mx-ce-system/api/battery/totalBatCur` | `application/x-www-form-urlencoded` | batteryCode, startTime, endTime |
| PC端-行程轨迹 | `GET` | `/mx-ce-system/api/battery/tripTrack` | `application/x-www-form-urlencoded` | batteryCode, startTime, endTime |
| 行程轨迹导入 | `POST` | `/mx-ce-system/api/battery/tripTrackImport/{batteryCode}` | `application/x-www-form-urlencoded,application/json` | batteryCode, tripTrackVos |
| 验证密码接口 | `POST` | `/mx-ce-system/api/battery/validatePassword` | `application/x-www-form-urlencoded,application/json` | passwordRequest |
| 布放验收 | `PUT` | `/mx-ce-system/api/omsCabinetLayoutController/acceptanceCabinetLayout` | `application/x-www-form-urlencoded,application/json` | cabinetLayoutUpdateDTO, cabinetLayoutUpdateDTO.auditResult |
| 新增布放单 | `POST` | `/mx-ce-system/api/omsCabinetLayoutController/addCabinetLayout` | `application/x-www-form-urlencoded,application/json` | cabinetLayoutSubmitDTO, cabinetLayoutSubmitDTO.netName, cabinetLayoutSubmitDTO.cityCode, cabinetLayoutSubmitDTO.deploymentQuantity, cabinetLayoutSubmitDTO.layoutAddress, cabinetLayoutSubmitDTO.positionImages |
| deleteCabinetLayout | `DELETE` | `/mx-ce-system/api/omsCabinetLayoutController/deleteCabinetLayout` | `application/x-www-form-urlencoded` | layoutId |
| 导出电柜布放单分页 | `POST` | `/mx-ce-system/api/omsCabinetLayoutController/exportCabinetLayoutList` | `application/x-www-form-urlencoded,application/json` | pcCabinetLayoutListPageDTO, pcCabinetLayoutListPageDTO.pageSize, pcCabinetLayoutListPageDTO.pageCurrent |
| 布放明细详情 | `GET` | `/mx-ce-system/api/omsCabinetLayoutController/getCabinetLayoutDetail` | `application/x-www-form-urlencoded` | layoutId |
| 查看布放工单信息-订单详情 | `GET` | `/mx-ce-system/api/omsCabinetLayoutController/getCabinetLayoutInfo` | `application/x-www-form-urlencoded` | layoutId |
| 电柜布放单分页列表 | `POST` | `/mx-ce-system/api/omsCabinetLayoutController/getCabinetLayoutList` | `application/x-www-form-urlencoded,application/json` | cabinetLayoutListPageDTO, cabinetLayoutListPageDTO.pageSize, cabinetLayoutListPageDTO.pageCurrent |
| 驳回信息分页列表 | `POST` | `/mx-ce-system/api/omsCabinetLayoutController/getCabinetLayoutRejectList` | `application/x-www-form-urlencoded,application/json` | cabinetLayoutRejectPageDTO, cabinetLayoutRejectPageDTO.pageSize, cabinetLayoutRejectPageDTO.pageCurrent |
| PC端-电柜布放单分页 | `POST` | `/mx-ce-system/api/omsCabinetLayoutController/pcCabinetLayoutList` | `application/x-www-form-urlencoded,application/json` | pcCabinetLayoutListPageDTO, pcCabinetLayoutListPageDTO.pageSize, pcCabinetLayoutListPageDTO.pageCurrent |
| 布放提交 | `PUT` | `/mx-ce-system/api/omsCabinetLayoutController/submitCabinetLayoutDetail` | `application/x-www-form-urlencoded,application/json` | cabinetLayoutDetailSubmitDTO, cabinetLayoutDetailSubmitDTO.cabinetInfoList, cabinetLayoutDetailSubmitDTO.cabinetInfoList.cbId, cabinetLayoutDetailSubmitDTO.cabinetInfoList.netName, cabinetLayoutDetailSubmitDTO.layoutId, cabinetLayoutDetailSubmitDTO.cabinetAddress, cabinetLayoutDetailSubmitDTO.layoutPosition, cabinetLayoutDetailSubmitDTO.layoutImages |
| 编辑布放单 | `POST` | `/mx-ce-system/api/omsCabinetLayoutController/updateCabinetLayout` | `application/x-www-form-urlencoded,application/json` | cabinetLayoutSubmitDTO, cabinetLayoutSubmitDTO.netName, cabinetLayoutSubmitDTO.cityCode, cabinetLayoutSubmitDTO.deploymentQuantity, cabinetLayoutSubmitDTO.layoutAddress, cabinetLayoutSubmitDTO.positionImages |
| 修改容量识别 | `PATCH` | `/mx-ce-system/api/cabinet/{cbId}/capacityEnable` | `application/x-www-form-urlencoded` | capacityEnable, cbId |
| 电池满电阀值 | `POST` | `/mx-ce-system/api/cabinet/adjustBatteryFull` | `application/x-www-form-urlencoded,application/json` | adjustCabinetBatteryFullDTO, adjustCabinetBatteryFullDTO.devId, adjustCabinetBatteryFullDTO.fullBatteryStd, adjustCabinetBatteryFullDTO.password |
| 调整音量大小 | `POST` | `/mx-ce-system/api/cabinet/adjustVolume` | `application/x-www-form-urlencoded,application/json` | adjustCabinetVolumeDTO, adjustCabinetVolumeDTO.devId, adjustCabinetVolumeDTO.volume, adjustCabinetVolumeDTO.password |
| 批量调整电柜满电阀值 | `POST` | `/mx-ce-system/api/cabinet/batchAdjustBatteryFull` | `application/x-www-form-urlencoded` | devIds, fullBatteryStd |
| 告警数据 | `POST` | `/mx-ce-system/api/cabinet/cabinetAlarmData` | `application/x-www-form-urlencoded,application/json` | cabinetAlarmDataDTO, cabinetAlarmDataDTO.pageSize, cabinetAlarmDataDTO.pageCurrent, cabinetAlarmDataDTO.cabinetCode |
| 电柜资产 | `POST` | `/mx-ce-system/api/cabinet/cabinetAssets` | `application/x-www-form-urlencoded` | - |
| 电柜详情 | `GET` | `/mx-ce-system/api/cabinet/cabinetDetail` | `application/x-www-form-urlencoded` | cabinetCode |
| PC端-换电柜详情-资产地图 | `POST` | `/mx-ce-system/api/cabinet/cabinetDetailAssetMap` | `application/x-www-form-urlencoded` | cabinetCode |
| 柜仓信息 | `GET` | `/mx-ce-system/api/cabinet/cabinetDoorInfo` | `application/x-www-form-urlencoded` | cabinetCode |
| 电柜仓门型号数量 | `POST` | `/mx-ce-system/api/cabinet/cabinetDoorModel` | `application/x-www-form-urlencoded` | - |
| 柜门实时性能 | `GET` | `/mx-ce-system/api/cabinet/cabinetDoorPerformance` | `application/x-www-form-urlencoded` | cabinetCode, doorId |
| 电柜仓位数据 | `POST` | `/mx-ce-system/api/cabinet/cabinetDoorPosition` | `application/x-www-form-urlencoded` | - |
| 移动端柜效查询 | `POST` | `/mx-ce-system/api/cabinet/cabinetEffect` | `application/x-www-form-urlencoded,application/json` | cabinetEffectPageDTO, cabinetEffectPageDTO.pageSize, cabinetEffectPageDTO.pageCurrent |
| 移动端-柜效查询换电总次合计 | `POST` | `/mx-ce-system/api/cabinet/cabinetEffectChangeTotal` | `application/x-www-form-urlencoded,application/json` | cabinetEffectPageDTO, cabinetEffectPageDTO.pageSize, cabinetEffectPageDTO.pageCurrent |
| 电柜列表 | `POST` | `/mx-ce-system/api/cabinet/cabinetList` | `application/x-www-form-urlencoded,application/json` | cabinetListPageDTO, cabinetListPageDTO.pageSize, cabinetListPageDTO.pageCurrent |
| PC-地图位置-换电柜实时位置详情 | `GET` | `/mx-ce-system/api/cabinet/cabinetMapDetail` | `application/x-www-form-urlencoded` | cabinetCode |
| 移动端-电柜操作日志 | `POST` | `/mx-ce-system/api/cabinet/cabinetOperationLog` | `application/x-www-form-urlencoded,application/json` | cabinetOperationLogDTO, cabinetOperationLogDTO.pageSize, cabinetOperationLogDTO.pageCurrent, cabinetOperationLogDTO.cabinetCode |
| 导出换电柜告警信息 | `POST` | `/mx-ce-system/api/cabinet/exportCabinetAlarmData` | `application/x-www-form-urlencoded,application/json` | cabinetAlarmDataDTO, cabinetAlarmDataDTO.pageSize, cabinetAlarmDataDTO.pageCurrent, cabinetAlarmDataDTO.cabinetCode |
| 柜仓信息-导出表格 | `GET` | `/mx-ce-system/api/cabinet/exportCabinetBatterySn` | `application/x-www-form-urlencoded` | cabinetCode |
| 导出PC端柜效查询 | `POST` | `/mx-ce-system/api/cabinet/exportPcCabinetEffect` | `application/x-www-form-urlencoded,application/json` | pCCabinetEffectPageDTO, pCCabinetEffectPageDTO.pageSize, pCCabinetEffectPageDTO.pageCurrent |
| 导出PC端柜效查询详情-换电查询 | `POST` | `/mx-ce-system/api/cabinet/exportPcCabinetEffectDetail` | `application/x-www-form-urlencoded,application/json` | cabinetEffectDetailPageDTO |
| 导出PC端柜效查询-用电查询 | `POST` | `/mx-ce-system/api/cabinet/exportPcCabinetEffectDetailByPower` | `application/x-www-form-urlencoded,application/json` | cabinetEffectDetailPageDTO |
| 操控电柜禁启用 | `POST` | `/mx-ce-system/api/cabinet/optCabinetStatus` | `application/x-www-form-urlencoded,application/json` | optCabinetStatusDTO, optCabinetStatusDTO.devId, optCabinetStatusDTO.optStatus, optCabinetStatusDTO.password |
| PC端-换电柜-资产地图 | `GET` | `/mx-ce-system/api/cabinet/pcCabinetAssetMap` | `application/x-www-form-urlencoded` | - |
| PC端-换电柜列表-业务状态下拉列表 | `GET` | `/mx-ce-system/api/cabinet/pcCabinetBusinessStatusList` | `application/x-www-form-urlencoded` | - |
| PC端-换电柜编辑修改 | `PUT` | `/mx-ce-system/api/cabinet/pcCabinetEdit` | `application/x-www-form-urlencoded,application/json` | pcCabinetEditDTO, pcCabinetEditDTO.id, pcCabinetEditDTO.cbId, pcCabinetEditDTO.cbName, pcCabinetEditDTO.cityCode, pcCabinetEditDTO.cbAddress, pcCabinetEditDTO.cbLongitude, pcCabinetEditDTO.cbLatitude |
| PC端柜效查询 | `POST` | `/mx-ce-system/api/cabinet/pcCabinetEffect` | `application/x-www-form-urlencoded,application/json` | pCCabinetEffectPageDTO, pCCabinetEffectPageDTO.pageSize, pCCabinetEffectPageDTO.pageCurrent |
| PC-柜效查询柜效详情列表-换电查询 | `POST` | `/mx-ce-system/api/cabinet/PcCabinetEffectDetail` | `application/x-www-form-urlencoded,application/json` | cabinetEffectDetailPageDTO |
| PC-柜效查询柜效详情列表-用电查询 | `POST` | `/mx-ce-system/api/cabinet/PcCabinetEffectDetailByPower` | `application/x-www-form-urlencoded,application/json` | cabinetEffectDetailPageDTO |
| PC端-换电柜图片修改 | `PUT` | `/mx-ce-system/api/cabinet/pcCabinetImageEdit` | `application/x-www-form-urlencoded,application/json` | pcCabinetImageEditDTO, pcCabinetImageEditDTO.id, pcCabinetImageEditDTO.img |
| PC端-电柜列表 | `POST` | `/mx-ce-system/api/cabinet/pcCabinetList` | `application/x-www-form-urlencoded,application/json` | pcCabinetListPageDTO, pcCabinetListPageDTO.pageSize, pcCabinetListPageDTO.pageCurrent |
| PC端-换电柜导出表格 | `POST` | `/mx-ce-system/api/cabinet/pcCabinetList_export` | `application/x-www-form-urlencoded,application/json` | pcCabinetListPageDTO, pcCabinetListPageDTO.pageSize, pcCabinetListPageDTO.pageCurrent |
| PC端-换电柜列表-在线状态下拉列表 | `GET` | `/mx-ce-system/api/cabinet/pcCabinetOnlineStatusList` | `application/x-www-form-urlencoded` | - |
| PC端-电柜详情-操作日志 | `POST` | `/mx-ce-system/api/cabinet/pcCabinetOperationLog` | `application/x-www-form-urlencoded,application/json` | pcCabinetOperationLogDTO, pcCabinetOperationLogDTO.pageSize, pcCabinetOperationLogDTO.pageCurrent, pcCabinetOperationLogDTO.cbId |
| PC端-导出操作日志 | `POST` | `/mx-ce-system/api/cabinet/pcCabinetOperationLog_export` | `application/x-www-form-urlencoded,application/json` | pcCabinetOperationLogDTO, pcCabinetOperationLogDTO.pageSize, pcCabinetOperationLogDTO.pageCurrent, pcCabinetOperationLogDTO.cbId |
| PC端-换电柜二维码 | `GET` | `/mx-ce-system/api/cabinet/pcCabinetQrCode` | `application/x-www-form-urlencoded` | cabinetCode |
| PC端-在柜电池导出 | `POST` | `/mx-ce-system/api/cabinet/pcInCabinetBatteryExport` | `application/x-www-form-urlencoded,application/json` | pcCabinetListPageDTO, pcCabinetListPageDTO.pageSize, pcCabinetListPageDTO.pageCurrent |
| 远程重启 | `POST` | `/mx-ce-system/api/cabinet/remoteRestart` | `application/x-www-form-urlencoded,application/json` | remoteRestartCabinetDTO, remoteRestartCabinetDTO.devId, remoteRestartCabinetDTO.password |
| 远程电柜上报地址 | `POST` | `/mx-ce-system/api/cabinet/reportCabinetAddr` | `application/x-www-form-urlencoded,application/json` | reportCabinetAddrDTO, reportCabinetAddrDTO.devId, reportCabinetAddrDTO.password, reportCabinetAddrDTO.domainName, reportCabinetAddrDTO.port |
| 获取短信验证码,测试用 | `GET` | `/mx-ce-system/api/getSmsCode/{mobile}` | `application/x-www-form-urlencoded` | mobile |
| 加密手机短信验证码 | `POST` | `/mx-ce-system/api/sendSmsCode` | `application/x-www-form-urlencoded,application/json` | apiSendSmsDTO, apiSendSmsDTO.mobile |
| 验证手机验证码 | `GET` | `/mx-ce-system/api/validSmsCode/{mobile}` | `application/x-www-form-urlencoded` | mobile, smsCode |
| 电池品牌列表 | `GET` | `/mx-ce-system/api/supplierManagement/batteryBrandList` | `application/x-www-form-urlencoded` | - |
| 所有电池型号列表 | `GET` | `/mx-ce-system/api/supplierManagement/batteryModelALL` | `application/x-www-form-urlencoded` | - |
| 电池型号列表 | `GET` | `/mx-ce-system/api/supplierManagement/batteryModelList` | `application/x-www-form-urlencoded` | companyId |
| 电池供应商详情 | `GET` | `/mx-ce-system/api/supplierManagement/batterySupplier` | `application/x-www-form-urlencoded` | id |
| 新建电池供应商 | `POST` | `/mx-ce-system/api/supplierManagement/batterySupplier` | `application/x-www-form-urlencoded,application/json` | batterySupplierDTO, batterySupplierDTO.ratedVoltage, batterySupplierDTO.model, batterySupplierDTO.maxEstimatedMileage |
| 编辑电池供应商 | `PUT` | `/mx-ce-system/api/supplierManagement/batterySupplier` | `application/x-www-form-urlencoded,application/json` | batterySupplierDTO, batterySupplierDTO.ratedVoltage, batterySupplierDTO.model, batterySupplierDTO.maxEstimatedMileage |
| 删除电池供应商 | `DELETE` | `/mx-ce-system/api/supplierManagement/batterySupplier` | `application/x-www-form-urlencoded` | id |
| 电池供应商列表 | `POST` | `/mx-ce-system/api/supplierManagement/batterySupplierList` | `application/x-www-form-urlencoded,application/json` | batterySupplierListDTO, batterySupplierListDTO.pageSize, batterySupplierListDTO.pageCurrent |
| 机柜品牌列表 | `GET` | `/mx-ce-system/api/supplierManagement/cabinetBrandList` | `application/x-www-form-urlencoded` | - |
| 机柜型号列表 | `GET` | `/mx-ce-system/api/supplierManagement/cabinetModelList` | `application/x-www-form-urlencoded` | companyId |
| 新增电柜供应商协议下拉选择 | `GET` | `/mx-ce-system/api/supplierManagement/cabinetProtocolList` | `application/x-www-form-urlencoded` | - |
| 机柜供应商详情 | `GET` | `/mx-ce-system/api/supplierManagement/cabinetSupplier` | `application/x-www-form-urlencoded` | id |
| 新增机柜供应商 | `POST` | `/mx-ce-system/api/supplierManagement/cabinetSupplier` | `application/x-www-form-urlencoded,application/json` | cabinetSupplierDTO, cabinetSupplierDTO.model, cabinetSupplierDTO.doorNum |
| 编辑机柜供应商 | `PUT` | `/mx-ce-system/api/supplierManagement/cabinetSupplier` | `application/x-www-form-urlencoded,application/json` | cabinetSupplierDTO, cabinetSupplierDTO.model, cabinetSupplierDTO.doorNum |
| 删除电池供应商 | `DELETE` | `/mx-ce-system/api/supplierManagement/cabinetSupplier` | `application/x-www-form-urlencoded` | id |
| 机柜供应商列表 | `POST` | `/mx-ce-system/api/supplierManagement/cabinetSupplierList` | `application/x-www-form-urlencoded,application/json` | cabinetSupplierListDTO, cabinetSupplierListDTO.pageSize, cabinetSupplierListDTO.pageCurrent |
| 取消工单 | `GET` | `/mx-ce-system/api/workOrders/cancelWorkOrders` | `application/x-www-form-urlencoded` | id |
| 删除工单 | `DELETE` | `/mx-ce-system/api/workOrders/deleteWorkOrders` | `application/x-www-form-urlencoded` | id |
| 故障定义启用-禁用 | `GET` | `/mx-ce-system/api/workOrders/enableOmsWorkFaultDefinitionOrders` | `application/x-www-form-urlencoded` | id |
| 导出pc端故障检修列表 | `POST` | `/mx-ce-system/api/workOrders/exportWorkOrdersPc` | `application/x-www-form-urlencoded,application/json` | workOrderPcDTO, workOrderPcDTO.pageSize, workOrderPcDTO.pageCurrent |
| 故障定义列表 | `POST` | `/mx-ce-system/api/workOrders/listOmsWorkFaultDefinitionOrders` | `application/x-www-form-urlencoded,application/json` | workFaultDefinitionDTO, workFaultDefinitionDTO.pageSize, workFaultDefinitionDTO.pageCurrent |
| PC端获取故障等级 | `GET` | `/mx-ce-system/api/workOrders/listOmsWorkFaultLevel` | `application/x-www-form-urlencoded` | id |
| 获取故障等级下拉列表 | `GET` | `/mx-ce-system/api/workOrders/listOmsWorkFaultLevelOrders` | `application/x-www-form-urlencoded` | - |
| 获取故障名称下拉列表 | `GET` | `/mx-ce-system/api/workOrders/listOmsWorkFaultNameOrders` | `application/x-www-form-urlencoded` | - |
| 获取故障原因下拉列表 | `POST` | `/mx-ce-system/api/workOrders/listOmsWorkFaultReasonOrders` | `application/x-www-form-urlencoded,application/json` | faultReasonDTO |
| 获取工单状态下拉列表 | `GET` | `/mx-ce-system/api/workOrders/listOmsWorkStatusOrders` | `application/x-www-form-urlencoded` | - |
| 获取工单类型下拉列表 | `GET` | `/mx-ce-system/api/workOrders/listOmsWorkTypeOrders` | `application/x-www-form-urlencoded` | - |
| pc端故障检修列表 | `POST` | `/mx-ce-system/api/workOrders/listWorkOrdersPc` | `application/x-www-form-urlencoded,application/json` | workOrderPcDTO, workOrderPcDTO.pageSize, workOrderPcDTO.pageCurrent |
| 检修提交 | `POST` | `/mx-ce-system/api/workOrders/maintenance` | `application/x-www-form-urlencoded,application/json` | maintenanceDTO |
| 故障定义新增 | `POST` | `/mx-ce-system/api/workOrders/newOmsWorkFaultDefinitionOrders` | `application/x-www-form-urlencoded,application/json` | newWorkFaultDefinitionDTO, newWorkFaultDefinitionDTO.faultName, newWorkFaultDefinitionDTO.workType, newWorkFaultDefinitionDTO.faultLevel, newWorkFaultDefinitionDTO.faultReason |
| 新增工单 | `POST` | `/mx-ce-system/api/workOrders/newWorkOrders` | `application/x-www-form-urlencoded,application/json` | workOrderDTO |
| pc新增工单 | `POST` | `/mx-ce-system/api/workOrders/newWorkOrdersPc` | `application/x-www-form-urlencoded,application/json` | newWorkOrdersDTO, newWorkOrdersDTO.workType, newWorkOrdersDTO.deviceId, newWorkOrdersDTO.faultName, newWorkOrdersDTO.faultReason, newWorkOrdersDTO.faultLevel, newWorkOrdersDTO.cityCode |
| 移动端根据工单类型获取故障名称 | `POST` | `/mx-ce-system/api/workOrders/OmsWorkFaultNameOrders` | `application/x-www-form-urlencoded,application/json` | dmsFaultLevelDTO |
| 根据故障名称获取故障原因列表 | `POST` | `/mx-ce-system/api/workOrders/OmsWorkFaultReasonOrders` | `application/x-www-form-urlencoded,application/json` | faultReasonDTO |
| 根据故障原因获取故障等级 | `POST` | `/mx-ce-system/api/workOrders/OmsWorkOrders` | `application/x-www-form-urlencoded,application/json` | faultReasonDTO |
| 获取工单详情 | `POST` | `/mx-ce-system/api/workOrders/OrdersDetails` | `application/x-www-form-urlencoded,application/json` | workOrdersDetailsDTO |
| 运营端-故障检修列表 | `POST` | `/mx-ce-system/api/workOrders/screenWorkOrders` | `application/x-www-form-urlencoded,application/json` | workOrderQueryDTO, workOrderQueryDTO.pageSize, workOrderQueryDTO.pageCurrent |
| 故障定义操作日志 | `POST` | `/mx-ce-system/api/workOrders/workFaultDefinitionLog` | `application/x-www-form-urlencoded,application/json` | workFaultDefinitionLogDTO, workFaultDefinitionLogDTO.pageSize, workFaultDefinitionLogDTO.pageCurrent |
| pc检修工单操作日志 | `POST` | `/mx-ce-system/api/workOrders/workOrdersLog` | `application/x-www-form-urlencoded,application/json` | workOrdersLogDTO, workOrdersLogDTO.pageSize, workOrdersLogDTO.pageCurrent |
| 新增常见问题 | `POST` | `/mx-ce-system/api/sms/customer/addQuestion` | `application/x-www-form-urlencoded,application/json` | addCustomerQuestionDTO |
| 删除常见问题 | `DELETE` | `/mx-ce-system/api/sms/customer/deleteQuestion` | `application/x-www-form-urlencoded` | id |
| 常见问题列表 | `POST` | `/mx-ce-system/api/sms/customer/getQuestion` | `application/x-www-form-urlencoded,application/json` | apiCustomerQuestionDTO, apiCustomerQuestionDTO.pageSize, apiCustomerQuestionDTO.pageCurrent |
| 常见问题操作日志 | `POST` | `/mx-ce-system/api/sms/customer/getQuestionLog` | `application/x-www-form-urlencoded,application/json` | customerQuestionLogDTO, customerQuestionLogDTO.pageSize, customerQuestionLogDTO.pageCurrent |
| 上下架常见问题 | `GET` | `/mx-ce-system/api/sms/customer/updateQuestionStatus` | `application/x-www-form-urlencoded` | id |
| 售后管理-导出消息推送列表 | `POST` | `/mx-ce-system/api/pushMessage/export` | `application/x-www-form-urlencoded,application/json` | pushMessageDTO, pushMessageDTO.pageSize, pushMessageDTO.pageCurrent |
| 售后管理-消息推送列表 | `POST` | `/mx-ce-system/api/pushMessage/list` | `application/x-www-form-urlencoded,application/json` | pushMessageDTO, pushMessageDTO.pageSize, pushMessageDTO.pageCurrent |
| 告警次数 | `GET` | `/mx-ce-system/pc/screen/alarmCount` | `application/x-www-form-urlencoded` | - |
| 电池总览 | `GET` | `/mx-ce-system/pc/screen/batteryOverview` | `application/x-www-form-urlencoded` | - |
| 电柜总览 | `GET` | `/mx-ce-system/pc/screen/cabinetOverview` | `application/x-www-form-urlencoded` | - |
| 换电订单滚动信息 | `GET` | `/mx-ce-system/pc/screen/changeOrder` | `application/x-www-form-urlencoded` | - |
| 城市排名 | `GET` | `/mx-ce-system/pc/screen/cityRanking` | `application/x-www-form-urlencoded` | - |
| 设备分布 | `GET` | `/mx-ce-system/pc/screen/deviceDistribution` | `application/x-www-form-urlencoded` | - |
| 套餐购买滚动信息 | `GET` | `/mx-ce-system/pc/screen/packageOrder` | `application/x-www-form-urlencoded` | - |
| 用户增长情况 | `GET` | `/mx-ce-system/pc/screen/userGrowth` | `application/x-www-form-urlencoded` | - |
| 导出套餐计费列表 | `POST` | `/mx-ce-system/api/OmsPackageBillingController/_export` | `application/x-www-form-urlencoded,application/json` | omsPackageBillingDTO, omsPackageBillingDTO.pageSize, omsPackageBillingDTO.pageCurrent |
| 新增套餐计费 | `POST` | `/mx-ce-system/api/OmsPackageBillingController/addPackageBilling` | `application/x-www-form-urlencoded,application/json` | addPackageBillingDTO, addPackageBillingDTO.mealName, addPackageBillingDTO.billingType, addPackageBillingDTO.money, addPackageBillingDTO.realPrice, addPackageBillingDTO.deposit, addPackageBillingDTO.mealDays, addPackageBillingDTO.cityCode, addPackageBillingDTO.brand, addPackageBillingDTO.model, addPackageBillingDTO.templateType |
| 作废套餐计费 | `POST` | `/mx-ce-system/api/OmsPackageBillingController/cancelPackageBilling` | `application/x-www-form-urlencoded,application/json` | omsCancelPackageDTO |
| 编辑套餐计费 | `POST` | `/mx-ce-system/api/OmsPackageBillingController/editPackageBilling` | `application/x-www-form-urlencoded,application/json` | editPackageBillingDTO |
| 获取品牌下拉列表 | `GET` | `/mx-ce-system/api/OmsPackageBillingController/getBrandList` | `application/x-www-form-urlencoded` | - |
| 获取渠道配置下拉列表 | `GET` | `/mx-ce-system/api/OmsPackageBillingController/getChannelList` | `application/x-www-form-urlencoded` | cityCode |
| 获取企业配置下拉列表 | `GET` | `/mx-ce-system/api/OmsPackageBillingController/getEnterpriseList` | `application/x-www-form-urlencoded` | cityCode |
| 套餐计费列表 | `POST` | `/mx-ce-system/api/OmsPackageBillingController/getPackageBilling` | `application/x-www-form-urlencoded,application/json` | omsPackageBillingDTO, omsPackageBillingDTO.pageSize, omsPackageBillingDTO.pageCurrent |
| 获取仓储调拨型号下拉列表 | `POST` | `/mx-ce-system/api/OmsPackageBillingController/listWareHouseModel` | `application/x-www-form-urlencoded,application/json` | optionModelDTO |
| 套餐计费操作日志 | `POST` | `/mx-ce-system/api/OmsPackageBillingController/smsActivityLog` | `application/x-www-form-urlencoded,application/json` | smsActivityLogDTO, smsActivityLogDTO.pageSize, smsActivityLogDTO.pageCurrent |
| 新增通知公告 | `POST` | `/mx-ce-system/api/smsMessageNotify/add` | `application/x-www-form-urlencoded,application/json` | smsMessageNotifyAddDTO |
| 删除通知公告 | `DELETE` | `/mx-ce-system/api/smsMessageNotify/deleteNotify` | `application/x-www-form-urlencoded` | id |
| 通知公告操作日志 | `POST` | `/mx-ce-system/api/smsMessageNotify/getNotifyLog` | `application/x-www-form-urlencoded,application/json` | smsMessageNotifyLogDTO, smsMessageNotifyLogDTO.pageSize, smsMessageNotifyLogDTO.pageCurrent |
| 通知公告列表 | `POST` | `/mx-ce-system/api/smsMessageNotify/list` | `application/x-www-form-urlencoded,application/json` | smsMessageNotifyDTO, smsMessageNotifyDTO.pageSize, smsMessageNotifyDTO.pageCurrent |
| 公告类型列表 | `GET` | `/mx-ce-system/api/smsMessageNotify/notifyTypeList` | `application/x-www-form-urlencoded` | - |
| 发布通知公告-下架通知公告 | `GET` | `/mx-ce-system/api/smsMessageNotify/release` | `application/x-www-form-urlencoded` | id |
| 公告状态列表 | `GET` | `/mx-ce-system/api/smsMessageNotify/statusList` | `application/x-www-form-urlencoded` | - |
| pc网点签约订单导出 | `POST` | `/mx-ce-system/api/netPointContracts/_export` | `application/x-www-form-urlencoded,application/json` | pcNetPointDTO, pcNetPointDTO.pageSize, pcNetPointDTO.pageCurrent |
| PC-移动端新增网点签约 | `POST` | `/mx-ce-system/api/netPointContracts/addNetPointContracts` | `application/x-www-form-urlencoded,application/json` | netPointContractsDTO |
| PC-移动端审核网点 | `PUT` | `/mx-ce-system/api/netPointContracts/branchAudit` | `application/x-www-form-urlencoded,application/json` | branchAuditDTO, branchAuditDTO.approvedResult |
| pc删除网点签约订单 | `DELETE` | `/mx-ce-system/api/netPointContracts/deleteNetPointContracts` | `application/x-www-form-urlencoded` | pointId |
| 获取驳回信息分页列表 | `POST` | `/mx-ce-system/api/netPointContracts/getRejectionInformation` | `application/x-www-form-urlencoded,application/json` | netPointContractsDetailsDTO, netPointContractsDetailsDTO.pageSize, netPointContractsDetailsDTO.pageCurrent |
| 获取详情信息 | `POST` | `/mx-ce-system/api/netPointContracts/netPointContractsDetails` | `application/x-www-form-urlencoded,application/json` | netPointContractsInformationDTO |
| pc端网点签约列表 | `POST` | `/mx-ce-system/api/netPointContracts/pcNetPoint` | `application/x-www-form-urlencoded,application/json` | pcNetPointDTO, pcNetPointDTO.pageSize, pcNetPointDTO.pageCurrent |
| pc网点签约详情审批信息 | `POST` | `/mx-ce-system/api/netPointContracts/pcNetPointApproved` | `application/x-www-form-urlencoded,application/json` | pcNetPointApprovedDTO, pcNetPointApprovedDTO.pageSize, pcNetPointApprovedDTO.pageCurrent |
| pc网点签约详情 | `GET` | `/mx-ce-system/api/netPointContracts/pcNetPointDetails` | `application/x-www-form-urlencoded` | pointId |
| 网点签约分页列表 | `POST` | `/mx-ce-system/api/netPointContracts/screenNetPointContracts` | `application/x-www-form-urlencoded,application/json` | netPointContractsPageDTO, netPointContractsPageDTO.pageSize, netPointContractsPageDTO.pageCurrent |
| 文件上传 | `POST` | `/mx-ce-system/api/v1/files` | `application/x-www-form-urlencoded,application/json` | file |
| 文件删除 | `DELETE` | `/mx-ce-system/api/v1/files` | `application/x-www-form-urlencoded` | 文件路径 |
| 批量文件上传,内部接口不对外开放 | `POST` | `/mx-ce-system/api/v1/files/uploadFilesFromUrls` | `application/x-www-form-urlencoded` | files |
| 审核退押订单 | `PUT` | `/mx-ce-system/api/depositOrder/auditSuccess` | `application/x-www-form-urlencoded` | id, status |
| 押金支付方式下拉列表 | `GET` | `/mx-ce-system/api/depositOrder/depositPayTypeList` | `application/x-www-form-urlencoded` | - |
| 执行押金解冻成功 | `PUT` | `/mx-ce-system/api/depositOrder/executeUnfreeze` | `application/x-www-form-urlencoded` | id |
| 执行押金解冻失败 | `PUT` | `/mx-ce-system/api/depositOrder/executeUnfreezeFail` | `application/x-www-form-urlencoded` | id |
| 资金处理结果通知 | `POST` | `/mx-ce-system/api/depositOrder/notify` | `application/x-www-form-urlencoded` | - |
| 退押订单审核订单状态下拉列表 | `GET` | `/mx-ce-system/api/depositOrder/refundAuditStatusList` | `application/x-www-form-urlencoded` | - |
| 退押订单 | `POST` | `/mx-ce-system/api/depositOrder/refundDepositOrder` | `application/x-www-form-urlencoded,application/json` | refundDepositListDTO, refundDepositListDTO.pageSize, refundDepositListDTO.pageCurrent |
| 芝麻解除,不对外开放 | `PUT` | `/mx-ce-system/api/depositOrder/refundDepositOrder/{payOrderNo}` | `application/x-www-form-urlencoded` | payOrderNo |
| 退押订单导出 | `POST` | `/mx-ce-system/api/depositOrder/refundDepositOrderExport` | `application/x-www-form-urlencoded,application/json` | refundDepositListDTO, refundDepositListDTO.pageSize, refundDepositListDTO.pageCurrent |
| 退押订单执行订单状态下拉列表 | `GET` | `/mx-ce-system/api/depositOrder/refundExecuteStatusList` | `application/x-www-form-urlencoded` | - |
| 押金解冻 | `POST` | `/mx-ce-system/api/depositOrder/unfreeze` | `application/x-www-form-urlencoded,application/json` | unfreezeDepositListDTO, unfreezeDepositListDTO.pageSize, unfreezeDepositListDTO.pageCurrent |
| 押金解冻导出 | `POST` | `/mx-ce-system/api/depositOrder/unfreezeDepositOrderExport` | `application/x-www-form-urlencoded,application/json` | unfreezeDepositListDTO, unfreezeDepositListDTO.pageSize, unfreezeDepositListDTO.pageCurrent |
| 分配天数 | `POST` | `/mx-ce-system/api/enterprise/assignDays` | `application/x-www-form-urlencoded,application/json` | enterpriseAssignDaysDTO, enterpriseAssignDaysDTO.mobile, enterpriseAssignDaysDTO.assignDays |
| 查询企业首页信息 | `GET` | `/mx-ce-system/api/enterprise/balance/{id}` | `application/x-www-form-urlencoded` | id |
| 获取编辑信息 | `GET` | `/mx-ce-system/api/enterprise/edit/{id}` | `application/x-www-form-urlencoded` | id |
| 个人信息 | `GET` | `/mx-ce-system/api/enterprise/info/{id}` | `application/x-www-form-urlencoded` | id |
| 我的账户-天数计费 | `POST` | `/mx-ce-system/api/enterprise/myAccount` | `application/x-www-form-urlencoded,application/json` | myAccountDto, myAccountDto.pageSize, myAccountDto.pageCurrent |
| 企业员工订单审核 | `POST` | `/mx-ce-system/api/enterprise/order/audit` | `application/x-www-form-urlencoded,application/json` | enterpriseOrderAuditDTO, enterpriseOrderAuditDTO.id, enterpriseOrderAuditDTO.enterpriseId |
| 企业员工订单审核列表 | `POST` | `/mx-ce-system/api/enterprise/order/list` | `application/x-www-form-urlencoded,application/json` | enterpriseOrderListDTO, enterpriseOrderListDTO.pageSize, enterpriseOrderListDTO.pageCurrent, enterpriseOrderListDTO.enterpriseId |
| 企业员工订单状态下拉列表 | `GET` | `/mx-ce-system/api/enterprise/order/status` | `application/x-www-form-urlencoded` | - |
| 根据手机号搜索企业员工姓名 | `GET` | `/mx-ce-system/api/enterprise/searchStaffName` | `application/x-www-form-urlencoded` | mobile |
| 企业客户下拉列表 | `GET` | `/mx-ce-system/api/enterprise/select` | `application/x-www-form-urlencoded` | - |
| 企业员工新增 | `POST` | `/mx-ce-system/api/enterprise/staff/add` | `application/x-www-form-urlencoded,application/json` | enterpriseStaffAddDTO, enterpriseStaffAddDTO.enterpriseId, enterpriseStaffAddDTO.userId |
| 企业员工开启-关闭免审 | `PUT` | `/mx-ce-system/api/enterprise/staff/audit` | `application/x-www-form-urlencoded,application/json` | enterpriseStaffAuditDTO, enterpriseStaffAuditDTO.id, enterpriseStaffAuditDTO.isAudit |
| 授权企业管理 | `PUT` | `/mx-ce-system/api/enterprise/staff/authorize` | `application/x-www-form-urlencoded,application/json` | enterpriseManagementDTO |
| 企业员工授权-取消企业免押 | `PUT` | `/mx-ce-system/api/enterprise/staff/deposit` | `application/x-www-form-urlencoded,application/json` | enterpriseStaffDepositDTO, enterpriseStaffDepositDTO.id, enterpriseStaffDepositDTO.isDeposit |
| 用户列表 | `POST` | `/mx-ce-system/api/enterprise/staff/list` | `application/x-www-form-urlencoded,application/json` | enterpriseStaffListDTO, enterpriseStaffListDTO.pageSize, enterpriseStaffListDTO.pageCurrent, enterpriseStaffListDTO.enterpriseId |
| 企业员工套餐订单完结 | `POST` | `/mx-ce-system/api/enterprise/staff/mealOrderClose` | `application/x-www-form-urlencoded,application/json` | enterpriseCloseOrderDTO |
| 企业员工套餐订单-统计 | `GET` | `/mx-ce-system/api/enterprise/staff/mealOrderCount/{enterpriseId}` | `application/x-www-form-urlencoded` | enterpriseId |
| 企业员工套餐订单列表 | `POST` | `/mx-ce-system/api/enterprise/staff/mealOrderList` | `application/x-www-form-urlencoded,application/json` | enterpriseStaffMealOrderDTO, enterpriseStaffMealOrderDTO.pageSize, enterpriseStaffMealOrderDTO.pageCurrent, enterpriseStaffMealOrderDTO.enterpriseId |
| 企业员工套餐订单日志 | `POST` | `/mx-ce-system/api/enterprise/staff/mealOrderLog/{mealOrderId}` | `application/x-www-form-urlencoded,application/json` | mealOrderId, apiPageDTO, apiPageDTO.pageSize, apiPageDTO.pageCurrent |
| 续租企业员工套餐订单 | `POST` | `/mx-ce-system/api/enterprise/staff/mealOrderRenew/{mealOrderId}` | `application/x-www-form-urlencoded` | mealOrderId, enterpriseId |
| 企业员工新增前信息查询 | `GET` | `/mx-ce-system/api/enterprise/staff/query/{mobile}` | `application/x-www-form-urlencoded` | mobile |
| 企业员工禁启用 | `PUT` | `/mx-ce-system/api/enterprise/staff/status` | `application/x-www-form-urlencoded,application/json` | enterpriseStaffStatusDTO, enterpriseStaffStatusDTO.id, enterpriseStaffStatusDTO.status |
| 企业统计指标卡片 | `GET` | `/mx-ce-system/api/enterprise/statistics/{enterpriseId}` | `application/x-www-form-urlencoded` | enterpriseId |
| 企业客户交易明细 | `POST` | `/mx-ce-system/api/enterprise/transaction/list` | `application/x-www-form-urlencoded,application/json` | enterpriseTransactionDTO, enterpriseTransactionDTO.pageSize, enterpriseTransactionDTO.pageCurrent, enterpriseTransactionDTO.enterpriseId |
| 天数池交易明细 | `POST` | `/mx-ce-system/api/enterprise/transactions` | `application/x-www-form-urlencoded,application/json` | enterpriseTransactionsDTO, enterpriseTransactionsDTO.pageSize, enterpriseTransactionsDTO.pageCurrent |
| 近一周趋势（合并接口） | `GET` | `/mx-ce-system/api/enterprise/trend/all/{enterpriseId}` | `application/x-www-form-urlencoded` | enterpriseId |
| 新增渠道用户收款账户 | `POST` | `/mx-ce-system/api/channel/terminal/addChannelAccount` | `application/x-www-form-urlencoded,application/json` | addChannelAccountDTO, addChannelAccountDTO.type, addChannelAccountDTO.mobile, addChannelAccountDTO.name, addChannelAccountDTO.account |
| 渠道用户账户提现 | `POST` | `/mx-ce-system/api/channel/terminal/channelAccountWithdraw` | `application/x-www-form-urlencoded,application/json` | channelAccountWithdrawDTO, channelAccountWithdrawDTO.collectionAccountId, channelAccountWithdrawDTO.money |
| 渠道删除收款账户 | `DELETE` | `/mx-ce-system/api/channel/terminal/deleteChannelAccount` | `application/x-www-form-urlencoded` | collectionAccountId |
| 查询用户收款账户详情 | `GET` | `/mx-ce-system/api/channel/terminal/getChannelAccountDetail` | `application/x-www-form-urlencoded` | id |
| 获取渠道用户收款账户列表 | `POST` | `/mx-ce-system/api/channel/terminal/getChannelAccountList` | `application/x-www-form-urlencoded,application/json` | apiPageDTO, apiPageDTO.pageSize, apiPageDTO.pageCurrent |
| 首页 | `GET` | `/mx-ce-system/api/channel/terminal/getChannelIncomeDetail` | `application/x-www-form-urlencoded` | - |
| 获取渠道个人信息 | `GET` | `/mx-ce-system/api/channel/terminal/getChannelInfo` | `application/x-www-form-urlencoded` | - |
| 渠道用户推广二维码 | `GET` | `/mx-ce-system/api/channel/terminal/getChannelPromotionQrCode` | `application/x-www-form-urlencoded` | - |
| 查询渠道用户默认收款账户详情,如果没有默认收款账户则返回空data | `GET` | `/mx-ce-system/api/channel/terminal/getDefaultChannelAccount` | `application/x-www-form-urlencoded` | - |
| 收入明细 | `POST` | `/mx-ce-system/api/channel/terminal/getIncomeDetail` | `application/x-www-form-urlencoded,application/json` | channelCustomersTradeDTO, channelCustomersTradeDTO.pageSize, channelCustomersTradeDTO.pageCurrent |
| 推广明细 | `POST` | `/mx-ce-system/api/channel/terminal/getPromotionDetail` | `application/x-www-form-urlencoded,application/json` | umsPromotionDetailDTO, umsPromotionDetailDTO.pageSize, umsPromotionDetailDTO.pageCurrent |
| 渠道编辑修改收款账户 | `PUT` | `/mx-ce-system/api/channel/terminal/updateChannelAccount` | `application/x-www-form-urlencoded,application/json` | addChannelUpdateAccountDTO, addChannelUpdateAccountDTO.collectionAccountId, addChannelUpdateAccountDTO.type, addChannelUpdateAccountDTO.mobile, addChannelUpdateAccountDTO.name, addChannelUpdateAccountDTO.account |
| 编辑修改渠道用户的默认收款账户 | `PATCH` | `/mx-ce-system/api/channel/terminal/updateDefaultChannelAccount` | `application/x-www-form-urlencoded` | id |
| pc端告警电池信息列表 | `POST` | `/mx-ce-system/api/alarmRecords/alarmBatteryList` | `application/x-www-form-urlencoded,application/json` | alarmBatteryRecordsQueryDTO, alarmBatteryRecordsQueryDTO.pageSize, alarmBatteryRecordsQueryDTO.pageCurrent |
| 电池告警名称 | `GET` | `/mx-ce-system/api/alarmRecords/batteryAlarmNameList` | `application/x-www-form-urlencoded` | - |
| 电柜异常告警 | `POST` | `/mx-ce-system/api/alarmRecords/cabinet` | `application/x-www-form-urlencoded,application/json` | alarmCabinetDTO, alarmCabinetDTO.pageSize, alarmCabinetDTO.pageCurrent |
| 电柜告警类型-告警名称联动 | `GET` | `/mx-ce-system/api/alarmRecords/cabinetAlarmNameList` | `application/x-www-form-urlencoded` | cabinetType |
| 换电柜离线记录 | `POST` | `/mx-ce-system/api/alarmRecords/cabinetOfflineList` | `application/x-www-form-urlencoded,application/json` | cabinetOfflineDTO, cabinetOfflineDTO.pageSize, cabinetOfflineDTO.pageCurrent |
| 导出告警电池信息列表 | `POST` | `/mx-ce-system/api/alarmRecords/exportAlarmBatteryList` | `application/x-www-form-urlencoded,application/json` | alarmBatteryRecordsQueryDTO, alarmBatteryRecordsQueryDTO.pageSize, alarmBatteryRecordsQueryDTO.pageCurrent |
| 电柜异常告警导出 | `POST` | `/mx-ce-system/api/alarmRecords/exportCabinet` | `application/x-www-form-urlencoded,application/json` | alarmCabinetDTO, alarmCabinetDTO.pageSize, alarmCabinetDTO.pageCurrent |
| 告警信息查询列表 | `POST` | `/mx-ce-system/api/alarmRecords/screenAlarmRecords` | `application/x-www-form-urlencoded,application/json` | alarmRecordsQueryDTO, alarmRecordsQueryDTO.pageSize, alarmRecordsQueryDTO.pageCurrent |
| 获取报障详情 | `POST` | `/mx-ce-system/api/protection/getProtection` | `application/x-www-form-urlencoded,application/json` | protectionDetailsDTO |
| 提交回复内容 | `POST` | `/mx-ce-system/api/protection/replyProtection` | `application/x-www-form-urlencoded,application/json` | replyProtectionDTO, replyProtectionDTO.replyDetails |
| 筛选查询 | `POST` | `/mx-ce-system/api/protection/screenProtection` | `application/x-www-form-urlencoded,application/json` | protectionQueryDTO, protectionQueryDTO.pageSize, protectionQueryDTO.pageCurrent |
| 变更手机号 | `POST` | `/mx-ce-system/api/userManagement/changeMobile` | `application/x-www-form-urlencoded,application/json` | umsChangeMobile |
| 注册用户禁启用 | `POST` | `/mx-ce-system/api/userManagement/enable` | `application/x-www-form-urlencoded` | id, status |
| 手动实名 | `POST` | `/mx-ce-system/api/userManagement/manualRealName` | `application/x-www-form-urlencoded,application/json` | manualRealNameDTO, manualRealNameDTO.id, manualRealNameDTO.realName, manualRealNameDTO.idCard, manualRealNameDTO.idCardFront, manualRealNameDTO.idCardBack |
| 操作日志 | `POST` | `/mx-ce-system/api/userManagement/operationLog` | `application/x-www-form-urlencoded,application/json` | operationLogDTO, operationLogDTO.pageSize, operationLogDTO.pageCurrent |
| 查询商家账户余额-测试不对外开放 | `GET` | `/mx-ce-system/api/userManagement/queryAccount` | `application/x-www-form-urlencoded` | - |
| 实名认证记录导出 | `POST` | `/mx-ce-system/api/userManagement/realNameUserExport` | `application/x-www-form-urlencoded,application/json` | realNameUserListDTO, realNameUserListDTO.pageSize, realNameUserListDTO.pageCurrent |
| 实名认证记录 | `POST` | `/mx-ce-system/api/userManagement/realNameUserList` | `application/x-www-form-urlencoded,application/json` | realNameUserListDTO, realNameUserListDTO.pageSize, realNameUserListDTO.pageCurrent |
| 余额充值 | `GET` | `/mx-ce-system/api/userManagement/recharge` | `application/x-www-form-urlencoded` | id, balance |
| 注册用户详情 | `GET` | `/mx-ce-system/api/userManagement/registerUser` | `application/x-www-form-urlencoded` | id |
| 注册用户列表 | `POST` | `/mx-ce-system/api/userManagement/registerUserList` | `application/x-www-form-urlencoded,application/json` | registerUserListDTO, registerUserListDTO.pageSize, registerUserListDTO.pageCurrent |
| 注册用户列表导出 | `POST` | `/mx-ce-system/api/userManagement/registerUserListExport` | `application/x-www-form-urlencoded,application/json` | registerUserListDTO, registerUserListDTO.pageSize, registerUserListDTO.pageCurrent |
| 重置用户密码 | `PATCH` | `/mx-ce-system/api/userManagement/resetPassword/{id}` | `application/x-www-form-urlencoded` | id, password |
| 重置用户验证码 | `PATCH` | `/mx-ce-system/api/userManagement/resetUserCode/{id}` | `application/x-www-form-urlencoded` | id, mobile, smsCode |
| 商家转账到个人账户-测试不对外开放 | `GET` | `/mx-ce-system/api/userManagement/transfer` | `application/x-www-form-urlencoded` | amount, payeeAccount, payeeRealName |
| 修改注册用户低电量提醒状态 | `PATCH` | `/mx-ce-system/api/userManagement/updatePushStatus/{id}` | `application/x-www-form-urlencoded` | id |
| 活动类型列表 | `GET` | `/mx-ce-system/api/coupon/activityTypeList` | `application/x-www-form-urlencoded` | - |
| 新增优惠券 | `POST` | `/mx-ce-system/api/coupon/addCoupon` | `application/x-www-form-urlencoded,application/json` | addCouponDTO, addCouponDTO.couponName, addCouponDTO.couponType, addCouponDTO.couponAmount, addCouponDTO.preferentialMethod, addCouponDTO.cityCode, addCouponDTO.activityType |
| 添加套餐编号 | `POST` | `/mx-ce-system/api/coupon/addMealId` | `application/x-www-form-urlencoded,application/json` | addMealDTO |
| 批量回收优惠券 | `POST` | `/mx-ce-system/api/coupon/batchRecycleCoupon` | `application/x-www-form-urlencoded,application/json` | batchRecycleRequest, batchRecycleRequest.couponIds |
| 作废优惠券 | `GET` | `/mx-ce-system/api/coupon/cancelCoupon` | `application/x-www-form-urlencoded` | couponId |
| 优惠券操作日志 | `POST` | `/mx-ce-system/api/coupon/couponLog` | `application/x-www-form-urlencoded,application/json` | couponLogDTO, couponLogDTO.pageSize, couponLogDTO.pageCurrent |
| 优惠券发放记录列表 | `POST` | `/mx-ce-system/api/coupon/couponSendRecord` | `application/x-www-form-urlencoded,application/json` | couponSendRecordDTO, couponSendRecordDTO.pageSize, couponSendRecordDTO.pageCurrent |
| 优惠券状态列表 | `GET` | `/mx-ce-system/api/coupon/couponStatusList` | `application/x-www-form-urlencoded` | - |
| 优惠券类型列表 | `GET` | `/mx-ce-system/api/coupon/couponTypeList` | `application/x-www-form-urlencoded` | - |
| 手机号导入模版下载 | `GET` | `/mx-ce-system/api/coupon/download` | `application/x-www-form-urlencoded` | - |
| 生效优惠券 | `GET` | `/mx-ce-system/api/coupon/effectiveCoupon` | `application/x-www-form-urlencoded` | couponId |
| 导出优惠券发放记录 | `POST` | `/mx-ce-system/api/coupon/exportCouponSendRecord` | `application/x-www-form-urlencoded,application/json` | couponSendRecordDTO, couponSendRecordDTO.pageSize, couponSendRecordDTO.pageCurrent |
| 批量派发优惠券 | `POST` | `/mx-ce-system/api/coupon/importMobile` | `multipart/form-data` | couponId, file |
| 套餐编号列表 | `POST` | `/mx-ce-system/api/coupon/mealIdList` | `application/x-www-form-urlencoded,application/json` | apiPageDTO, apiPageDTO.pageSize, apiPageDTO.pageCurrent |
| 优惠方式列表 | `GET` | `/mx-ce-system/api/coupon/preferentialMethodList` | `application/x-www-form-urlencoded` | - |
| 回收优惠券 | `GET` | `/mx-ce-system/api/coupon/recycleCoupon` | `application/x-www-form-urlencoded` | id |
| 派发优惠券 | `POST` | `/mx-ce-system/api/coupon/sendCoupon` | `application/x-www-form-urlencoded,application/json` | sendCouponDTO, sendCouponDTO.couponId, sendCouponDTO.mobile |
| 优惠券列表 | `POST` | `/mx-ce-system/api/coupon/smsCouponList` | `application/x-www-form-urlencoded,application/json` | smsCouponListDTO, smsCouponListDTO.pageSize, smsCouponListDTO.pageCurrent |
| 绑定电池 | `POST` | `/mx-ce-system/api/mealOperate/bindBattery` | `application/x-www-form-urlencoded,application/json` | bindBatteryDTO |
| 完结订单 | `POST` | `/mx-ce-system/api/mealOperate/closeOrder` | `application/x-www-form-urlencoded,application/json` | closeOrderDTO, closeOrderDTO.completionReason, closeOrderDTO.orderSn |
| 冻结订单 | `POST` | `/mx-ce-system/api/mealOperate/frozenOrder` | `application/x-www-form-urlencoded,application/json` | frozenOrderDTO, frozenOrderDTO.thawingTime |
| 查询订单日志 | `POST` | `/mx-ce-system/api/mealOperate/orderLog` | `application/x-www-form-urlencoded,application/json` | operationLogDTO, operationLogDTO.pageSize, operationLogDTO.pageCurrent |
| 运营端套餐订单列表 | `POST` | `/mx-ce-system/api/mealOperate/screenOperate` | `application/x-www-form-urlencoded,application/json` | operateQueryDTO, operateQueryDTO.pageSize, operateQueryDTO.pageCurrent |
| 运营端套餐订单-统计 | `GET` | `/mx-ce-system/api/mealOperate/screenOperateCount` | `application/x-www-form-urlencoded` | - |
| 解冻订单 | `POST` | `/mx-ce-system/api/mealOperate/UnfreezeOrders` | `application/x-www-form-urlencoded,application/json` | unfreezeOrdersDTO |
| 电池换绑 | `PUT` | `/mx-ce-system/api/mealOperate/updateBattery` | `application/x-www-form-urlencoded,application/json` | operateUpdateBatteryDTO |
| 新增套餐购买数 | `GET` | `/mx-ce-system/api/operationalDataStatistics/addByYearGroupStatusAndMonth/{year}` | `application/x-www-form-urlencoded` | year |
| 告警简报 | `POST` | `/mx-ce-system/api/operationalDataStatistics/getAlarmBrief` | `application/x-www-form-urlencoded,application/json` | orderBrieDTO, orderBrieDTO.time |
| 柜效简报 | `POST` | `/mx-ce-system/api/operationalDataStatistics/getCabinetEfficiencyBrief` | `application/x-www-form-urlencoded,application/json` | orderBrieDTO, orderBrieDTO.time |
| 站点换电次数排名 | `POST` | `/mx-ce-system/api/operationalDataStatistics/getCabinetEfficiencyRank` | `application/x-www-form-urlencoded,application/json` | orderBrieDTO, orderBrieDTO.time |
| 换电数量（月） | `GET` | `/mx-ce-system/api/operationalDataStatistics/getChangeBatteryQuantity/{year}` | `application/x-www-form-urlencoded` | year |
| 换电数量（时段） | `GET` | `/mx-ce-system/api/operationalDataStatistics/getChangeBatteryQuantityByTime/{day}` | `application/x-www-form-urlencoded` | day |
| 套餐用户类型统计 | `POST` | `/mx-ce-system/api/operationalDataStatistics/getMealUserTypeStatistics` | `application/x-www-form-urlencoded,application/json` | orderBrieDTO, orderBrieDTO.time |
| 新增代理商（企业客户）数 | `GET` | `/mx-ce-system/api/operationalDataStatistics/getNewAgent/{year}` | `application/x-www-form-urlencoded` | year |
| 新增实名用户数 | `GET` | `/mx-ce-system/api/operationalDataStatistics/getNewRealName/{year}` | `application/x-www-form-urlencoded` | year |
| （企业客户）新增充值金额（元） | `GET` | `/mx-ce-system/api/operationalDataStatistics/getNewRechargeAmount/{year}` | `application/x-www-form-urlencoded` | year |
| 新增用户数 | `GET` | `/mx-ce-system/api/operationalDataStatistics/getNewUser/{year}` | `application/x-www-form-urlencoded` | year |
| pc端首页换电次数统计 | `POST` | `/mx-ce-system/api/operationalDataStatistics/getOmsChangeOrderSum` | `application/x-www-form-urlencoded,application/json` | operationalDataSumQueryDTO |
| pc端首页营运租赁订单统计 | `POST` | `/mx-ce-system/api/operationalDataStatistics/getOmsLeaseOrderSum` | `application/x-www-form-urlencoded,application/json` | operationalDataSumQueryDTO |
| 订单简报 | `POST` | `/mx-ce-system/api/operationalDataStatistics/getOrderBrief` | `application/x-www-form-urlencoded,application/json` | orderBrieDTO, orderBrieDTO.time |
| 订单简报图表数据 | `POST` | `/mx-ce-system/api/operationalDataStatistics/getOrderBriefChart` | `application/x-www-form-urlencoded,application/json` | orderBrieDTO, orderBrieDTO.time |
| pc端营运订单数据 | `GET` | `/mx-ce-system/api/operationalDataStatistics/getOrderData` | `application/x-www-form-urlencoded` | - |
| 维修简报 | `POST` | `/mx-ce-system/api/operationalDataStatistics/getRepairBrief` | `application/x-www-form-urlencoded,application/json` | orderBrieDTO, orderBrieDTO.time |
| pc端首页营运企业客户统计 | `POST` | `/mx-ce-system/api/operationalDataStatistics/getUmsEnterpriseCustomerSum` | `application/x-www-form-urlencoded,application/json` | operationalDataSumQueryDTO |
| pc端首页营运用户量统计 | `GET` | `/mx-ce-system/api/operationalDataStatistics/getUmsUserSum` | `application/x-www-form-urlencoded` | - |
| 用户简报 | `POST` | `/mx-ce-system/api/operationalDataStatistics/getUserBrief` | `application/x-www-form-urlencoded,application/json` | orderBrieDTO, orderBrieDTO.time |
| 用户量增长均势表 | `GET` | `/mx-ce-system/api/operationalDataStatistics/getUserExpandingTrend` | `application/x-www-form-urlencoded` | - |
| 新增套餐完结数 | `GET` | `/mx-ce-system/api/operationalDataStatistics/renewalByYearGroupStatusAndMonth/{year}` | `application/x-www-form-urlencoded` | year |
| 新增套餐复购数 | `GET` | `/mx-ce-system/api/operationalDataStatistics/repurchaseByYearGroupStatusAndMonth/{year}` | `application/x-www-form-urlencoded` | year |
| 违约逾期 | `POST` | `/mx-ce-system/api/accountingDataStatistics/getBreachOverdue` | `application/x-www-form-urlencoded,application/json` | operationalDataSumQueryDTO |
| 押金收入 | `POST` | `/mx-ce-system/api/accountingDataStatistics/getDepositIncome` | `application/x-www-form-urlencoded,application/json` | operationalDataSumQueryDTO |
| 企业充值 | `POST` | `/mx-ce-system/api/accountingDataStatistics/getEnterpriseRecharge` | `application/x-www-form-urlencoded,application/json` | operationalDataSumQueryDTO |
| 收入增长趋势 | `POST` | `/mx-ce-system/api/accountingDataStatistics/getIncomeGrowthTrend` | `application/x-www-form-urlencoded` | - |
| 套餐收入 | `POST` | `/mx-ce-system/api/accountingDataStatistics/getPackageIncome` | `application/x-www-form-urlencoded,application/json` | operationalDataSumQueryDTO |
| 累计支出 | `POST` | `/mx-ce-system/api/accountingDataStatistics/getTotalExpenditure` | `application/x-www-form-urlencoded,application/json` | operationalDataSumQueryDTO |
| 导出套餐订单 | `POST` | `/mx-ce-system/api/apiOmsManagementOrderController/_export` | `application/x-www-form-urlencoded,application/json` | omsExportOrderDTO, omsExportOrderDTO.pageSize, omsExportOrderDTO.pageCurrent |
| 换电记录导出 | `POST` | `/mx-ce-system/api/apiOmsManagementOrderController/_exportChangeOrder` | `application/x-www-form-urlencoded,application/json` | omsChangeOrderDTO, omsChangeOrderDTO.pageSize, omsChangeOrderDTO.pageCurrent, omsChangeOrderDTO.createDate, omsChangeOrderDTO.endTime |
| downloadExport | `GET` | `/mx-ce-system/api/apiOmsManagementOrderController/_exportChangeOrder/download/{totalChunks}` | `application/x-www-form-urlencoded` | totalChunks |
| 换电记录导出状态检查 | `POST` | `/mx-ce-system/api/apiOmsManagementOrderController/_exportChangeOrder/status` | `application/x-www-form-urlencoded,application/json` | omsChangeOrderDTO, omsChangeOrderDTO.pageSize, omsChangeOrderDTO.pageCurrent, omsChangeOrderDTO.createDate, omsChangeOrderDTO.endTime |
| 逾期订单导出 | `POST` | `/mx-ce-system/api/apiOmsManagementOrderController/_exportOverdue` | `application/x-www-form-urlencoded,application/json` | omsOverdueOrderDTO, omsOverdueOrderDTO.pageSize, omsOverdueOrderDTO.pageCurrent |
| 取消订单 | `POST` | `/mx-ce-system/api/apiOmsManagementOrderController/cancelOrder` | `application/x-www-form-urlencoded,application/json` | omsCancelOrderDTO |
| 分块下载 | `POST` | `/mx-ce-system/api/apiOmsManagementOrderController/chunk/{chunkIndex}` | `application/x-www-form-urlencoded` | chunkIndex |
| 费用详情列表 | `POST` | `/mx-ce-system/api/apiOmsManagementOrderController/costDetails` | `application/x-www-form-urlencoded,application/json` | omsOrderCostDetailsDTO, omsOrderCostDetailsDTO.pageSize, omsOrderCostDetailsDTO.pageCurrent |
| 完结订单 | `POST` | `/mx-ce-system/api/apiOmsManagementOrderController/endOrder` | `application/x-www-form-urlencoded,application/json` | endOrderDTO, endOrderDTO.orderSn, endOrderDTO.notes |
| 冻结订单 | `POST` | `/mx-ce-system/api/apiOmsManagementOrderController/frozenOrder` | `application/x-www-form-urlencoded,application/json` | frozenOrderManagementDTO |
| 套餐订单详情 | `GET` | `/mx-ce-system/api/apiOmsManagementOrderController/managementDetails` | `application/x-www-form-urlencoded` | orderSn |
| 换电记录 | `POST` | `/mx-ce-system/api/apiOmsManagementOrderController/omsChangeOrder` | `application/x-www-form-urlencoded,application/json` | omsChangeOrderDTO, omsChangeOrderDTO.pageSize, omsChangeOrderDTO.pageCurrent, omsChangeOrderDTO.createDate, omsChangeOrderDTO.endTime |
| 冻结订单信息 | `GET` | `/mx-ce-system/api/apiOmsManagementOrderController/omsFrozenOrder` | `application/x-www-form-urlencoded` | orderSn |
| 套餐订单操作日志 | `POST` | `/mx-ce-system/api/apiOmsManagementOrderController/omsOperationLog` | `application/x-www-form-urlencoded,application/json` | omsOperationLogDTO, omsOperationLogDTO.pageSize, omsOperationLogDTO.pageCurrent |
| 订单退款 | `POST` | `/mx-ce-system/api/apiOmsManagementOrderController/omsOrderRefund` | `application/x-www-form-urlencoded,application/json` | omsOrderRefundDTO, omsOrderRefundDTO.refundMoney |
| 订单退款信息 | `GET` | `/mx-ce-system/api/apiOmsManagementOrderController/omsOrderRefundInformation` | `application/x-www-form-urlencoded` | orderSn |
| 逾期订单 | `POST` | `/mx-ce-system/api/apiOmsManagementOrderController/omsOverdueOrder` | `application/x-www-form-urlencoded,application/json` | omsOverdueOrderDTO, omsOverdueOrderDTO.pageSize, omsOverdueOrderDTO.pageCurrent |
| 逾期订单备注 | `POST` | `/mx-ce-system/api/apiOmsManagementOrderController/remarkOverdueOrder` | `application/x-www-form-urlencoded,application/json` | omsOverdueOrderRemarkDTO, omsOverdueOrderRemarkDTO.orderSn, omsOverdueOrderRemarkDTO.remark |
| 重启订单 | `GET` | `/mx-ce-system/api/apiOmsManagementOrderController/restartOrder` | `application/x-www-form-urlencoded` | orderSn |
| pc套餐订单分页列表 | `POST` | `/mx-ce-system/api/apiOmsManagementOrderController/screenManagementOrder` | `application/x-www-form-urlencoded,application/json` | omsManagementDTO, omsManagementDTO.pageSize, omsManagementDTO.pageCurrent |
| 解绑电池 | `PUT` | `/mx-ce-system/api/apiOmsManagementOrderController/unbindBatterySn` | `application/x-www-form-urlencoded,application/json` | unbindBatterySnDTO |
| 解冻订单 | `GET` | `/mx-ce-system/api/apiOmsManagementOrderController/unfreezeOrder` | `application/x-www-form-urlencoded` | orderSn |
| 绑定电池 | `POST` | `/mx-ce-system/api/apiOmsManagementOrderController/updateBatterySn` | `application/x-www-form-urlencoded,application/json` | omsBatterySnDTO |
| 变更到期时间 | `POST` | `/mx-ce-system/api/apiOmsManagementOrderController/updateEndTime` | `application/x-www-form-urlencoded,application/json` | updateEndTimeDTO |
| 变更电池编号 | `POST` | `/mx-ce-system/api/apiOmsManagementOrderController/updateMeal` | `application/x-www-form-urlencoded,application/json` | omsBatteryDTO, omsBatteryDTO.oldBatterySn, omsBatteryDTO.newBatterySn |
| 新增活动 | `POST` | `/mx-ce-system/api/dms/message/activity/addMessageActivity` | `application/x-www-form-urlencoded,application/json` | smsAddMessageActivityDTO, smsAddMessageActivityDTO.link, smsAddMessageActivityDTO.coverImg, smsAddMessageActivityDTO.cityCode |
| 作废活动 | `GET` | `/mx-ce-system/api/dms/message/activity/cancelMessageActivity` | `application/x-www-form-urlencoded` | id |
| 删除活动 | `DELETE` | `/mx-ce-system/api/dms/message/activity/deleteMessageActivity` | `application/x-www-form-urlencoded` | id |
| 活动管理详情 | `GET` | `/mx-ce-system/api/dms/message/activity/getMessageActivityDetail` | `application/x-www-form-urlencoded` | id |
| 活动管理列表 | `POST` | `/mx-ce-system/api/dms/message/activity/getMessageActivityList` | `application/x-www-form-urlencoded,application/json` | smsMessageActivityDTO, smsMessageActivityDTO.pageSize, smsMessageActivityDTO.pageCurrent |
| 操作日志列表 | `POST` | `/mx-ce-system/api/dms/message/activity/getMessageActivityLogList` | `application/x-www-form-urlencoded,application/json` | smsMessageActivityLogDTO, smsMessageActivityLogDTO.pageSize, smsMessageActivityLogDTO.pageCurrent |
| 活动状态列表 | `GET` | `/mx-ce-system/api/dms/message/activity/getMessageActivityStatusList` | `application/x-www-form-urlencoded` | - |
| 活动管理上下架 | `GET` | `/mx-ce-system/api/dms/message/activity/updateMessageActivityStatus` | `application/x-www-form-urlencoded` | id |
| PC端老带新列表导出 | `POST` | `/mx-ce-system/api/pc/referral/export` | `application/x-www-form-urlencoded,application/json` | referralPcListDTO, referralPcListDTO.pageSize, referralPcListDTO.pageCurrent |
| PC端老带新列表 | `POST` | `/mx-ce-system/api/pc/referral/list` | `application/x-www-form-urlencoded,application/json` | referralPcListDTO, referralPcListDTO.pageSize, referralPcListDTO.pageCurrent |
| 新增渠道客户 | `POST` | `/mx-ce-system/pc/channel/addChannelCustomers` | `application/x-www-form-urlencoded,application/json` | umsChannelCustomersAddDTO, umsChannelCustomersAddDTO.name, umsChannelCustomersAddDTO.admin, umsChannelCustomersAddDTO.mobile, umsChannelCustomersAddDTO.cityCode, umsChannelCustomersAddDTO.accountType, umsChannelCustomersAddDTO.firstOrderCommission, umsChannelCustomersAddDTO.renewalCommission |
| 渠道客户账户明细-推广明细列表 | `POST` | `/mx-ce-system/pc/channel/channelCustomersAccountDetail` | `application/x-www-form-urlencoded,application/json` | omsChannelCustomersDetailDTO, omsChannelCustomersDetailDTO.pageSize, omsChannelCustomersDetailDTO.pageCurrent |
| 渠道客户推广记录 | `POST` | `/mx-ce-system/pc/channel/channelCustomersPromotionRecord` | `application/x-www-form-urlencoded,application/json` | channelCustomersPromotionRecordDTO, channelCustomersPromotionRecordDTO.pageSize, channelCustomersPromotionRecordDTO.pageCurrent |
| 渠道客户账户明细-交易明细列表 | `POST` | `/mx-ce-system/pc/channel/channelCustomersTradeDetail` | `application/x-www-form-urlencoded,application/json` | umsChannelCustomersTradeDTO, umsChannelCustomersTradeDTO.pageSize, umsChannelCustomersTradeDTO.pageCurrent |
| 渠道客户账户明细详情 | `GET` | `/mx-ce-system/pc/channel/customersDetail` | `application/x-www-form-urlencoded` | id |
| 渠道客户列表 | `POST` | `/mx-ce-system/pc/channel/listChannelCustomers` | `application/x-www-form-urlencoded,application/json` | umsChannelCustomersListDTO, umsChannelCustomersListDTO.pageSize, umsChannelCustomersListDTO.pageCurrent |
| 启用禁用渠道客户 | `GET` | `/mx-ce-system/pc/channel/status` | `application/x-www-form-urlencoded` | id |
| 导出意见反馈列表 | `POST` | `/mx-ce-system/api/dms/feedback/exportFeedBack` | `application/x-www-form-urlencoded,application/json` | apiFeedbackDTO, apiFeedbackDTO.pageSize, apiFeedbackDTO.pageCurrent |
| 导出投诉建议列表 | `POST` | `/mx-ce-system/api/dms/feedback/exportFeedBackList` | `application/x-www-form-urlencoded,application/json` | dmsFeedBackDTO, dmsFeedBackDTO.pageSize, dmsFeedBackDTO.pageCurrent |
| 意见反馈列表 | `POST` | `/mx-ce-system/api/dms/feedback/feedBack` | `application/x-www-form-urlencoded,application/json` | apiFeedbackDTO, apiFeedbackDTO.pageSize, apiFeedbackDTO.pageCurrent |
| 获取投诉建议列表 | `POST` | `/mx-ce-system/api/dms/feedback/getFeedBackList` | `application/x-www-form-urlencoded,application/json` | dmsFeedBackDTO, dmsFeedBackDTO.pageSize, dmsFeedBackDTO.pageCurrent |
| 办理投诉建议 | `POST` | `/mx-ce-system/api/dms/feedback/handleFeedBack` | `application/x-www-form-urlencoded,application/json` | handleFeedBackDTO |
| 企业客户新增 | `POST` | `/mx-ce-system/pc/enterprise/add` | `application/x-www-form-urlencoded,application/json` | enterpriseAddDTO, enterpriseAddDTO.name, enterpriseAddDTO.contactsName, enterpriseAddDTO.contactsMobile, enterpriseAddDTO.dayRent, enterpriseAddDTO.cityCode, enterpriseAddDTO.billingType |
| 获取型号列表 | `GET` | `/mx-ce-system/pc/enterprise/battery/type/list` | `application/x-www-form-urlencoded` | - |
| 传企业id获取容量匹配 | `GET` | `/mx-ce-system/pc/enterprise/capacity/match/{enterpriseId}` | `application/x-www-form-urlencoded` | enterpriseId |
| 天数池列表 | `POST` | `/mx-ce-system/pc/enterprise/day/list` | `application/x-www-form-urlencoded,application/json` | enterpriseDayDTO, enterpriseDayDTO.pageSize, enterpriseDayDTO.pageCurrent |
| 企业客户扣款 | `PUT` | `/mx-ce-system/pc/enterprise/deduct` | `application/x-www-form-urlencoded,application/json` | enterpriseDeductDTO, enterpriseDeductDTO.id, enterpriseDeductDTO.deductAmount |
| 企业客户详情 | `GET` | `/mx-ce-system/pc/enterprise/detail/{id}` | `application/x-www-form-urlencoded` | id |
| 企业员工导入模版下载 | `GET` | `/mx-ce-system/pc/enterprise/download` | `application/x-www-form-urlencoded` | - |
| 企业客户编辑 | `PUT` | `/mx-ce-system/pc/enterprise/edit` | `application/x-www-form-urlencoded,application/json` | enterpriseEditDTO, enterpriseEditDTO.name, enterpriseEditDTO.contactsName, enterpriseEditDTO.contactsMobile, enterpriseEditDTO.dayRent, enterpriseEditDTO.cityCode |
| 授权企业管理 | `PUT` | `/mx-ce-system/pc/enterprise/grant` | `application/x-www-form-urlencoded,application/json` | enterpriseManagementDTO |
| 企业客户列表 | `POST` | `/mx-ce-system/pc/enterprise/list` | `application/x-www-form-urlencoded,application/json` | enterpriseListDTO, enterpriseListDTO.pageSize, enterpriseListDTO.pageCurrent |
| 操作日志记录列表 | `POST` | `/mx-ce-system/pc/enterprise/operation/log` | `application/x-www-form-urlencoded,application/json` | enterpriseOperationLogDTO, enterpriseOperationLogDTO.pageSize, enterpriseOperationLogDTO.pageCurrent |
| 上级企业下拉列表 | `GET` | `/mx-ce-system/pc/enterprise/parent/list` | `application/x-www-form-urlencoded` | - |
| 企业客户充值 | `PUT` | `/mx-ce-system/pc/enterprise/recharge` | `application/x-www-form-urlencoded,application/json` | enterpriseRechargeDTO, enterpriseRechargeDTO.id, enterpriseRechargeDTO.rechargeAmount |
| 企业员工新增 | `POST` | `/mx-ce-system/pc/enterprise/staff/add` | `application/x-www-form-urlencoded,application/json` | enterpriseStaffAddDTO, enterpriseStaffAddDTO.enterpriseId, enterpriseStaffAddDTO.userId |
| 企业员工免审核设置 | `PUT` | `/mx-ce-system/pc/enterprise/staff/audit` | `application/x-www-form-urlencoded,application/json` | enterpriseStaffAuditDTO, enterpriseStaffAuditDTO.id, enterpriseStaffAuditDTO.isAudit |
| 企业员工批量新增 | `POST` | `/mx-ce-system/pc/enterprise/staff/batchAdd` | `application/x-www-form-urlencoded,application/json` | enterpriseId, file |
| 企业员工企业免押设置 | `PUT` | `/mx-ce-system/pc/enterprise/staff/deposit` | `application/x-www-form-urlencoded,application/json` | enterpriseStaffDepositDTO, enterpriseStaffDepositDTO.id, enterpriseStaffDepositDTO.isDeposit |
| 企业员工明细导出 | `POST` | `/mx-ce-system/pc/enterprise/staff/export` | `application/x-www-form-urlencoded,application/json` | enterpriseStaffListDTO, enterpriseStaffListDTO.pageSize, enterpriseStaffListDTO.pageCurrent, enterpriseStaffListDTO.enterpriseId |
| 企业员工明细列表 | `POST` | `/mx-ce-system/pc/enterprise/staff/list` | `application/x-www-form-urlencoded,application/json` | enterpriseStaffListDTO, enterpriseStaffListDTO.pageSize, enterpriseStaffListDTO.pageCurrent, enterpriseStaffListDTO.enterpriseId |
| 企业员工操作日志列表 | `POST` | `/mx-ce-system/pc/enterprise/staff/log/{staffId}` | `application/x-www-form-urlencoded,application/json` | staffId, apiPageDTO, apiPageDTO.pageSize, apiPageDTO.pageCurrent |
| 企业员工新增前信息查询 | `GET` | `/mx-ce-system/pc/enterprise/staff/query/{mobile}` | `application/x-www-form-urlencoded` | mobile |
| 企业员工禁启用 | `PUT` | `/mx-ce-system/pc/enterprise/staff/status` | `application/x-www-form-urlencoded,application/json` | enterpriseStaffStatusDTO, enterpriseStaffStatusDTO.id, enterpriseStaffStatusDTO.status |
| 企业客户禁启用 | `PUT` | `/mx-ce-system/pc/enterprise/status` | `application/x-www-form-urlencoded,application/json` | enterpriseStatusDTO, enterpriseStatusDTO.id, enterpriseStatusDTO.status |
| 企业客户交易明细导出 | `POST` | `/mx-ce-system/pc/enterprise/transaction/export` | `application/x-www-form-urlencoded,application/json` | enterpriseTransactionListDTO, enterpriseTransactionListDTO.pageSize, enterpriseTransactionListDTO.pageCurrent, enterpriseTransactionListDTO.enterpriseId |
| 企业客户交易明细列表 | `POST` | `/mx-ce-system/pc/enterprise/transaction/list` | `application/x-www-form-urlencoded,application/json` | enterpriseTransactionListDTO, enterpriseTransactionListDTO.pageSize, enterpriseTransactionListDTO.pageCurrent, enterpriseTransactionListDTO.enterpriseId |
| 划入-划出 | `PUT` | `/mx-ce-system/pc/enterprise/transfer` | `application/x-www-form-urlencoded,application/json` | enterpriseTransferDTO |
| 导出报障列表 | `POST` | `/mx-ce-system/api/dms/fault/exportFault` | `application/x-www-form-urlencoded,application/json` | dmsFaultDTO, dmsFaultDTO.pageSize, dmsFaultDTO.pageCurrent |
| 获取用户报障列表 | `POST` | `/mx-ce-system/api/dms/fault/getFaultList` | `application/x-www-form-urlencoded,application/json` | dmsFaultDTO, dmsFaultDTO.pageSize, dmsFaultDTO.pageCurrent |
| 报障回复 | `POST` | `/mx-ce-system/api/dms/fault/reply` | `application/x-www-form-urlencoded,application/json` | dmsFaultReplyDTO |

