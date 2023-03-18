@AbapCatalog.sqlViewName: 'ZIITEMS2935'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface - Items'
@Metadata.allowExtensions: true
define view Z_I_ITEMS_2935
  as select from zitems_2935
  association to parent Z_I_SALES_2935 as _Sale on $projection.Id = _Sale.Id
{
  key item_id          as ItemId,
  key id               as Id,
      name             as Name,
      description      as Description,
      releasedate      as Releasedate,
      discontinueddate as Discontinueddate,
      price            as Price,
      @Semantics.quantity.unitOfMeasure : 'unitofmeasure'
      height           as Height,
      @Semantics.quantity.unitOfMeasure : 'unitofmeasure'
      width            as Width,
      depth            as Depth,
      quantity         as Quantity,
      unitofmeasure    as Unitofmeasure,
      _Sale
}
