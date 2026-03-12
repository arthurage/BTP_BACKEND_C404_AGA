CLASS zcl_insert_data_libros_aga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_insert_data_libros_aga IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

   data: it_libros_aga tYPE tABLE of ztb_libros_aga.

  it_libros_aga = vaLUE #(
  ( id_libro = 'KAFKA12345' bi_categ = '1' titulo = 'la metamorfosis'   autor = 'Frank Kafka'   editorial = 'Santillana'    idioma = 'E' paginas = '108' precio = '1530.50' moneda = 'MXN' formato = 'D' url =
'https://academy.logaligroup.com/course/view.php?id=404' )
  ( id_libro = 'Mujer12345' bi_categ = '2' titulo = 'Mujercitas'        autor = 'Louisa May Alcott' editorial = 'Santillana ' idioma = 'S ' paginas = '110' precio = '1260.00' moneda = 'MXN' formato = 'D' url =
'https://academy.logaligroup.com/course/view.php?id=404' )
  ( id_libro = 'LaIsl12345' bi_categ = '3' titulo = 'La Isla Misteriosa' autor = 'McArthur'     editorial = 'Santillana ' idioma = 'E'   paginas = '200' precio = '50.00'   moneda = 'USD' formato = 'F' url =
'https://academy.logaligroup.com/course/view.php?id=404' )
  ( id_libro = 'Porqu12345' bi_categ = '4' titulo = 'Porque lo mando YO' autor = 'Yamileth'     editorial = 'Santillana ' idioma = 'S'   paginas = '150' precio = '1200.05' moneda = 'MXN' formato = 'F' url =
'https://academy.logaligroup.com/course/view.php?id=404' )
  ( id_libro = 'Harry12345' bi_categ = '5' titulo = 'Harry Potter'       autor = 'JC Rowlin'    editorial = 'Santillana ' idioma = 'E'   paginas = '500' precio = '25.00'   moneda = 'USD' formato = 'F' url =
'https://academy.logaligroup.com/course/view.php?id=404' )
  ( id_libro = 'AjoyC12345' bi_categ = '6' titulo = 'Ajo y Cebolla'      autor = 'Martha '      editorial = 'Santillana ' idioma = 'S'   paginas = '50'  precio = '890.50'  moneda = 'MXN' formato = 'D' url =
'https://academy.logaligroup.com/course/view.php?id=404' )
  ( id_libro = 'ElPri12345' bi_categ = '7' titulo = 'El Principito '     autor = 'Antoine de Saint-Exupéry' editorial = 'Santillana ' idioma = 'E' paginas = '80' precio = '40.00' moneda = 'USD' formato = 'D' url =
'https://academy.logaligroup.com/course/view.php?id=404' )
  ( id_libro = 'Presi12345' bi_categ = '8' titulo = 'Presidente en espera' autor = 'Alejandro Paez' editorial = 'Santillana ' idioma = 'S' paginas = '300' precio = '750.50' moneda = 'MXN' formato = 'D' url =
'https://academy.logaligroup.com/course/view.php?id=404' )
  ).

*      -- Borra los datos de tabla base datos
      DElETE fROM ztb_libros_aga.
*      --Inserta los datos de tabla interna en tabla Base datos
      INSERT ztb_libros_aga fROM tABLE @it_libros_aga.
*      -- Mostrar datos de la tabla interna --\\
      SELECT * fROM ztb_libros_aga INTO tABLE @it_libros_aga.
      out->write( sy-dbcnt ).
      out->write( 'ZTB_LIBROS_AGA data table inserted susseccfully' ).

  ENDMETHOD.
ENDCLASS.
