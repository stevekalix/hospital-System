CLASS zcl_datafill_gender DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_datafill_gender IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.



 DATA : lt_gender TYPE TABLE OF ZGENDER_VH.

   lt_gender = VALUE #(

      ( gender_id   = 'M'
        gender_name = 'Male'
        description = 'Male Gender'
        status       = 'A' )

      ( gender_id   = 'F'
        gender_name = 'Female'
        description = 'Female Gender'
        status       = 'A' )

      ( gender_id   = 'O'
        gender_name = 'Other'
        description = 'Other Gender'
        status       = 'A' )

      ( gender_id   = 'N'
        gender_name = 'Prefer Not To Say'
        description = 'Prefer Not To Say'
        status       = 'A' )
        ).

INSERT zgender_vh  from table   @lt_gender.

out->write( |Data filled successfully| ).


  ENDMETHOD.

ENDCLASS.
