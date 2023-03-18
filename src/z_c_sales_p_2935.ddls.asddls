@EndUserText.label: 'Sales Consumption Processor'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity Z_C_SALES_P_2935
  as projection on Z_I_SALES_2935
{
  key Id           as Id,
      Email        as Email,
      Firstname    as FirstName,
      Lastname     as LastName,
      Country      as Country,
      Createon     as CreateOn,
      Deliverydate as DeliveryDate,
      Orderstatus  as OrderStatus,
      Imageurl     as ImageUrl,
      /* Associations */
      _Item : redirected to composition child Z_C_ITEMS_P_2935
}
