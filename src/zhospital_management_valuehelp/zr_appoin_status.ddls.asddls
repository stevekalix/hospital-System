@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View Entity for  ZAPPOIN_STATUS'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.dataCategory: #VALUE_HELP
define view entity ZR_APPOIN_STATUS as select from zappoin_status
{
    key status_id as StatusId,
    description as Description
}
