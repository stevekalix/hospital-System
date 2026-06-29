CLASS zcl_datafill_zhosp_status DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_datafill_zhosp_status IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

  DATA: lt_zhosp_status TYPE TABLE OF ZHOSP_STATUS.

  lt_zhosp_status = VALUE #(
                      ( status = 'A' description = 'Active' )
                      ( status = 'I' description = 'Inactive' )
                      ( status = 'P' description = 'Pending' )
                      ( status = 'D' description = 'Deceased' )
                      ).
  INSERT ZHOSP_STATUS FROM TABLE @lt_zhosp_status.

  OUT->write( |Data fill for ZHOSP_STATUS completed successfully.| ).

  ENDMETHOD.

ENDCLASS.
