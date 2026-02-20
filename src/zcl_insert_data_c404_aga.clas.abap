CLASS zcl_insert_data_c404_aga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  inTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_insert_data_c404_aga IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    dATA: it_customers tYPE TABLE OF zrent_customers.

    it_customers = vaLUE #(
     ( doc_id = '10001' matricula = '12345' nombre = 'Arturo' apellidos = 'Aguilar' email = 'arturo@yahoo.com' cntr_type = 'AB' )
     ( doc_id = '20001' matricula = '22345' nombre = 'Arturo' apellidos = 'Aguilar' email = 'arturo@yahoo.com' cntr_type = 'AB' )
     ( doc_id = '30001' matricula = '32345' nombre = 'Arturo' apellidos = 'Aguilar' email = 'arturo@yahoo.com' cntr_type = 'AB' )
     ( doc_id = '40001' matricula = '42345' nombre = 'Arturo' apellidos = 'Aguilar' email = 'arturo@yahoo.com' cntr_type = 'AB' )
     ( doc_id = '50001' matricula = '52345' nombre = 'Arturo' apellidos = 'Aguilar' email = 'arturo@yahoo.com' cntr_type = 'AB' )
     ( doc_id = '60001' matricula = '62345' nombre = 'Arturo' apellidos = 'Aguilar' email = 'arturo@yahoo.com' cntr_type = 'AB' )
     ( doc_id = '70001' matricula = '72345' nombre = 'Arturo' apellidos = 'Aguilar' email = 'arturo@yahoo.com' cntr_type = 'AB' )
     ( doc_id = '80001' matricula = '82345' nombre = 'Arturo' apellidos = 'Aguilar' email = 'arturo@yahoo.com' cntr_type = 'AB' )
                          ).

*      -- Borra los datos de tabla base datos
      DElETE fROM zrent_customers.
*      --Inserta los datos de tabla interna en tabla Base datos
      INSERT zrent_customers fROM tABLE @it_customers.
*      -- Mostrar datos de la tabla interna --\\
      SELECT * fROM zrent_customers INTO tABLE @it_customers.
      out->write( sy-dbcnt ).
      out->write( 'ZRENT_CUSTOMERS data table inserted susseccfully' ).
  ENDMETHOD.

ENDCLASS.
