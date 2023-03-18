CLASS zcl_carga_datos_2935 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_carga_datos_2935 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: lt_header TYPE TABLE OF zheader_2935,
          lt_items  TYPE TABLE OF zitems_2935.

    lt_header = VALUE #(
    ( id ='1' email ='dm@gmail.com' firstname = 'Diego' lastname = 'Martinez' country = 'Spain' createon = '20230101' deliverydate = '20230101' orderstatus = 1
    imageurl = 'https://')
    ( id ='2' email ='dm@gmail.com' firstname = 'Diego' lastname = 'Martinez' country = 'Spain' createon = '20230101' deliverydate = '20230101' orderstatus = 1
    imageurl = 'https://')
    ( id ='3' email ='dm@gmail.com' firstname = 'Diego' lastname = 'Martinez' country = 'Spain' createon = '20230101' deliverydate = '20230101' orderstatus = 1
    imageurl = 'https://')
    ( id ='4' email ='dm@gmail.com' firstname = 'Diego' lastname = 'Martinez' country = 'Spain' createon = '20230101' deliverydate = '20230101' orderstatus = 1
    imageurl = 'https://')
    ).

    "Delete possible entries; insert new entries
    DELETE FROM zheader_2935.
    INSERT zheader_2935 FROM TABLE @lt_header.
    "Check result in console
    out->write( sy-dbcnt ).
    out->write( 'DONE!' ).

    lt_items = VALUE #(
    ( item_id = '1' id = '1' name = 'Item 1' description = 'Description Item 1' releasedate = '20230101' discontinueddate = '20230101' price = '20.05' height = '27' width = '16' depth = '4' quantity = '1' unitofmeasure = 'CM' )
    ( item_id = '2' id = '1' name = 'Item 2' description = 'Description Item 2' releasedate = '20230101' discontinueddate = '20230101' price = '20.05' height = '27' width = '16' depth = '4' quantity = '1' unitofmeasure = 'CM' )
    ( item_id = '3' id = '1' name = 'Item 3' description = 'Description Item 3' releasedate = '20230101' discontinueddate = '20230101' price = '20.05' height = '27' width = '16' depth = '4' quantity = '1' unitofmeasure = 'CM' )
    ( item_id = '1' id = '2' name = 'Item 1' description = 'Description Item 1' releasedate = '20230101' discontinueddate = '20230101' price = '20.05' height = '27' width = '16' depth = '4' quantity = '1' unitofmeasure = 'CM' )
    ( item_id = '2' id = '2' name = 'Item 2' description = 'Description Item 2' releasedate = '20230101' discontinueddate = '20230101' price = '20.05' height = '27' width = '16' depth = '4' quantity = '1' unitofmeasure = 'CM' )
    ( item_id = '3' id = '2' name = 'Item 3' description = 'Description Item 3' releasedate = '20230101' discontinueddate = '20230101' price = '20.05' height = '27' width = '16' depth = '4' quantity = '1' unitofmeasure = 'CM' )
    ( item_id = '4' id = '2' name = 'Item 4' description = 'Description Item 4' releasedate = '20230101' discontinueddate = '20230101' price = '20.05' height = '27' width = '16' depth = '4' quantity = '1' unitofmeasure = 'CM' )
    ( item_id = '5' id = '2' name = 'Item 5' description = 'Description Item 5' releasedate = '20230101' discontinueddate = '20230101' price = '20.05' height = '27' width = '16' depth = '4' quantity = '1' unitofmeasure = 'CM' )
    ( item_id = '1' id = '3' name = 'Item 1' description = 'Description Item 1' releasedate = '20230101' discontinueddate = '20230101' price = '20.05' height = '27' width = '16' depth = '4' quantity = '1' unitofmeasure = 'CM' )
    ( item_id = '1' id = '4' name = 'Item 1' description = 'Description Item 1' releasedate = '20230101' discontinueddate = '20230101' price = '20.05' height = '27' width = '16' depth = '4' quantity = '1' unitofmeasure = 'CM' )
    ( item_id = '2' id = '4' name = 'Item 2' description = 'Description Item 2' releasedate = '20230101' discontinueddate = '20230101' price = '20.05' height = '27' width = '16' depth = '4' quantity = '1' unitofmeasure = 'CM' )
    ( item_id = '3' id = '4' name = 'Item 3' description = 'Description Item 3' releasedate = '20230101' discontinueddate = '20230101' price = '20.05' height = '27' width = '16' depth = '4' quantity = '1' unitofmeasure = 'CM' )
    ( item_id = '1' id = '5' name = 'Item 1' description = 'Description Item 1' releasedate = '20230101' discontinueddate = '20230101' price = '20.05' height = '27' width = '16' depth = '4' quantity = '1' unitofmeasure = 'CM' )
    ( item_id = '2' id = '5' name = 'Item 2' description = 'Description Item 2' releasedate = '20230101' discontinueddate = '20230101' price = '20.05' height = '27' width = '16' depth = '4' quantity = '1' unitofmeasure = 'CM' )
    ( item_id = '3' id = '5' name = 'Item 3' description = 'Description Item 3' releasedate = '20230101' discontinueddate = '20230101' price = '20.05' height = '27' width = '16' depth = '4' quantity = '1' unitofmeasure = 'CM' )
    ( item_id = '4' id = '5' name = 'Item 4' description = 'Description Item 4' releasedate = '20230101' discontinueddate = '20230101' price = '20.05' height = '27' width = '16' depth = '4' quantity = '1' unitofmeasure = 'CM' )
    ).

    "Delete possible entries; insert new entries
    DELETE FROM zitems_2935.
    INSERT zitems_2935 FROM TABLE @lt_items.
    "Check result in console
    out->write( sy-dbcnt ).
    out->write( 'DONE!' ).

  ENDMETHOD.



ENDCLASS.
