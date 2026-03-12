CLASS zcl_insert_data_clnts_lib_ag DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_insert_data_clnts_lib_ag IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

      dATA: it_clnts_lib_ag TYPE TABLE OF ztb_clnts_lib_ag.

    it_clnts_lib_ag = vaLUE #(
     ( id_cliente = '10001' id_libro = 'KAFKA12345' )
     ( id_cliente = '20001' id_libro = 'Mujer12345' )
     ( id_cliente = '30001' id_libro = 'LaIsl12345' )
     ( id_cliente = '40001' id_libro = 'Porqu12345'  )
     ( id_cliente = '50001' id_libro = 'Harry12345'  )
     ( id_cliente = '60001' id_libro = 'AjoyC12345' )
     ( id_cliente = '70001' id_libro = 'ElPri12345' )
     ( id_cliente = '80001' id_libro = 'Presi12345' )
                          ).

*      -- Borra los datos de tabla base datos
      DElETE fROM ztb_clnts_lib_ag.
*      --Inserta los datos de tabla interna en tabla Base datos
      INSERT ztb_clnts_lib_ag fROM tABLE @it_clnts_lib_ag.
*      -- Mostrar datos de la tabla interna --\\
      SELECT * fROM ztb_clnts_lib_ag INTO tABLE @it_clnts_lib_ag.
      out->write( sy-dbcnt ).
      out->write( 'ZTB_CLNTS_LIBAG data table inserted susseccfully' ).

  ENDMETHOD.
ENDCLASS.
