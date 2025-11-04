@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic - Feedback Users'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_SFDKT_CJS_USERS
  as select from usr21
  association [1..1] to adrp as _UsersAddress on $projection.UserAddrressId = _UsersAddress.persnumber
{
  key bname                    as BusinessName,
      persnumber               as UserAddrressId,
      _UsersAddress.name_first as UserName,

      _UsersAddress
}
