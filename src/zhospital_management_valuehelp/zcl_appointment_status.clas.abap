CLASS zcl_appointment_status DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_appointment_status IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

  DATA:  IT_ZAPPOIN_STATUS TYPE TABLE OF ZAPPOIN_STATUS.

  IT_ZAPPOIN_STATUS = VALUE #(

      ( status_id = 'S'  description = 'Scheduled' )

      ( status_id = 'C'  description = 'Confirmed' )

      ( status_id = 'CI' description = 'Checked-In' )

      ( status_id = 'IP' description = 'In Progress' )

      ( status_id = 'CO' description = 'Completed' )

      ( status_id = 'CN' description = 'Cancelled' )

      ( status_id = 'NS' description = 'No Show' )

      ( status_id = 'RS' description = 'Rescheduled' )


                                 ).

     INSERT ZAPPOIN_STATUS FROM TABLE @IT_ZAPPOIN_STATUS.

      OUT->WRITE( 'Data Enter sucessfully ' ).

  ENDMETHOD.

ENDCLASS.
