@EndUserText.label: 'Master View Table'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define view entity ZI_MasterViewTable
  as select from ZMAT_VIEWMASTER
  association to parent ZI_MasterViewTable_S as _MasterViewTableAll on $projection.SingletonID = _MasterViewTableAll.SingletonID
{
  key VIEW_CODE as ViewCode,
  VIEW_NAME as ViewName,
  @Consumption.hidden: true
  1 as SingletonID,
  _MasterViewTableAll
  
}
