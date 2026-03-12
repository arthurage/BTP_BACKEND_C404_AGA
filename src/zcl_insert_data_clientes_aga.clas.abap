CLASS zcl_insert_data_clientes_aga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_insert_data_clientes_aga IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    dATA: it_clientes_aga TYPE TABLE OF ztb_clientes_aga.

    it_clientes_aga = vaLUE #(
     ( id_cliente = '10001' tipo_acceso = '1' nombre = 'Arturo' apellidos = 'Aguilar' email = 'arturo@yahoo.com' url = 'https://academy.logaligroup.com/course/view.php?id=404' )
     ( id_cliente = '20001' tipo_acceso = '2' nombre = 'Martha' apellidos = 'Aguilar' email = 'arturo@yahoo.com' url = 'https://academy.logaligroup.com/course/view.php?id=404' )
     ( id_cliente = '30001' tipo_acceso = '3' nombre = 'Matilde' apellidos = 'Aguilar' email = 'arturo@yahoo.com' url = 'https://academy.logaligroup.com/course/view.php?id=404' )
     ( id_cliente = '40001' tipo_acceso = '4' nombre = 'Alejandro' apellidos = 'Aguilar' email = 'arturo@yahoo.com' url = 'https://academy.logaligroup.com/course/view.php?id=404' )
     ( id_cliente = '50001' tipo_acceso = '5' nombre = 'Raymundo' apellidos = 'Aguilar' email = 'arturo@yahoo.com' url = 'https://academy.logaligroup.com/course/view.php?id=404' )
     ( id_cliente = '60001' tipo_acceso = '6' nombre = 'Gerardo' apellidos = 'Aguilar' email = 'arturo@yahoo.com' url = 'https://academy.logaligroup.com/course/view.php?id=404' )
     ( id_cliente = '70001' tipo_acceso = '7' nombre = 'Abraham' apellidos = 'Aguilar' email = 'arturo@yahoo.com' url = 'https://academy.logaligroup.com/course/view.php?id=404' )
     ( id_cliente = '80001' tipo_acceso = '8' nombre = 'Miguel' apellidos = 'Aguilar' email = 'arturo@yahoo.com' url = 'https://academy.logaligroup.com/course/view.php?id=404' )
                          ).

*      -- Borra los datos de tabla base datos
      DElETE fROM ztb_clientes_aga.
*      --Inserta los datos de tabla interna en tabla Base datos
      INSERT ztb_clientes_aga fROM tABLE @it_clientes_aga.
*      -- Mostrar datos de la tabla interna --\\
      SELECT * fROM ztb_clientes_aga INTO tABLE @it_clientes_aga.
      out->write( sy-dbcnt ).
      out->write( 'ZTB_CLIENTES_AGA data table inserted susseccfully' ).

  ENDMETHOD.
ENDCLASS.
