@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic - Feedback'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_SFDKT_CJS_001
  as select from zsfdkt_cjs_001
{
  key feedback_id     as FeedbackId,
      feedback_text   as FeedbackText,
      sentiment       as Sentiment,
      score           as Score,
      create_at       as CreateAt,
      create_by       as CreateBy,
      last_changed_at as LastChangedAt
}
