CLASS zcl_insert_data_catego_aga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_insert_data_catego_aga IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

dATA: it_catego_aga TYPE TABLE OF ztb_catego_aga.

    it_catego_aga = vaLUE #(
     ( bi_categ = '1' descripcion = 'Descripción de categoría 1' )
     ( bi_categ = '2' descripcion = 'Descripción de categoría 2'  )
     ( bi_categ = '3' descripcion = 'Descripción de categoría 3'  )
     ( bi_categ = '4' descripcion = 'Descripción de categoría 4'  )
     ( bi_categ = '5' descripcion = 'Descripción de categoría 5'  )
     ( bi_categ = '6' descripcion = 'Descripción de categoría 6'  )
     ( bi_categ = '7' descripcion = 'Descripción de categoría 7'  )
     ( bi_categ = '8' descripcion = 'Descripción de categoría 8'  )
                          ).

*      -- Borra los datos de tabla base datos
      DElETE fROM ztb_catego_aga.

*      --Inserta los datos de tabla interna en tabla Base datos
      INSERT ztb_catego_aga fROM tABLE @it_catego_aga.

*      -- Mostrar datos de la tabla interna --\\
      SELECT * fROM ztb_catego_aga INTO tABLE @it_catego_aga.
      out->write( sy-dbcnt ).
      out->write( 'ztb_acc_categ_ag data table inserted susseccfully' ).

  ENDMETHOD.
ENDCLASS.
