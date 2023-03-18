CLASS lhc_Sales DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR Sales RESULT result.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Sales RESULT result.

ENDCLASS.

CLASS lhc_Sales IMPLEMENTATION.

  METHOD get_instance_features.

    READ ENTITIES OF z_i_sales_2935 IN LOCAL MODE
          ENTITY Sales
          FIELDS ( Id Email Createon )
          WITH VALUE #( FOR key_row IN keys ( %key = key_row-%key ) )
          RESULT DATA(lt_sales_result).

    result = VALUE #( FOR ls_travel IN lt_sales_result (
                        %key = ls_travel-%key
                        %field-Id = if_abap_behv=>fc-f-read_only
                        %field-Email = if_abap_behv=>fc-f-read_only
                        %field-Createon = if_abap_behv=>fc-f-read_only
                        ) ).

  ENDMETHOD.

  METHOD get_instance_authorizations.
  ENDMETHOD.

ENDCLASS.
