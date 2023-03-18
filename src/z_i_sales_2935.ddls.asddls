@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface root - Sales'
@Metadata.allowExtensions: true
define root view entity Z_I_SALES_2935
  as select from zheader_2935
  composition [0..*] of Z_I_ITEMS_2935 as _Item
{
  key id           as Id,
      email        as Email,
      firstname    as Firstname,
      lastname     as Lastname,
      country      as Country,
      createon     as Createon,
      deliverydate as Deliverydate,
      orderstatus  as Orderstatus,
      imageurl     as Imageurl,
      _Item // Make association public
}
