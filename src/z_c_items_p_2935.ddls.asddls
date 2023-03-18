@EndUserText.label: 'Items Consumption Processor'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true
define view entity Z_C_ITEMS_P_2935
  as projection on Z_I_ITEMS_2935
{
  key ItemId           as ItemId,
  key Id               as Id,
      Name             as Name,
      Description      as Description,
      Releasedate      as ReleaseDate,
      Discontinueddate as Discontinueddate,
      Price            as Price,
      Height           as Height,
      Width            as Width,
      Depth            as Depth,
      Quantity         as Quantity,
      Unitofmeasure    as UnitOfMeasure,
      /* Associations */
      _Sale : redirected to parent Z_C_SALES_P_2935

}
