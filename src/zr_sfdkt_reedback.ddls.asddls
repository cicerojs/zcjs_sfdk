@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite - Feedback'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZR_SFDKT_REEDBACK
  as select from ZI_SFDKT_CJS_001
  association [1..1] to ZI_SFDKT_CJS_USERS as _Users on $projection.CreateBy = _Users.BusinessName
{
  key FeedbackId,
      FeedbackText,
      Sentiment,
      Score,
      CreateAt,
      CreateBy,
      _Users.UserName,
      LastChangedAt,

      _Users
}
