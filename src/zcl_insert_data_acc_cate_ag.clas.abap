CLASS zcl_insert_data_acc_cate_ag DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_insert_data_acc_cate_ag IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

dATA: it_acc_cate_ag TYPE TABLE OF ztb_acc_categ_ag.

    it_acc_cate_ag = vaLUE #(
     ( bi_categ  = '1' tipo_acceso = '1' )
     ( bi_categ = '2' tipo_acceso = '2'  )
     ( bi_categ = '3' tipo_acceso = '3'  )
     ( bi_categ = '4' tipo_acceso = '4'  )
     ( bi_categ = '5' tipo_acceso = '5'  )
     ( bi_categ = '6' tipo_acceso = '6'  )
     ( bi_categ = '7' tipo_acceso = '7'  )
     ( bi_categ = '8' tipo_acceso = '8'  )
                          ).

*      -- Borra los datos de tabla base datos
      DElETE fROM ztb_acc_categ_ag.
*      --Inserta los datos de tabla interna en tabla Base datos
      INSERT ztb_acc_categ_ag fROM tABLE @it_acc_cate_ag.
*      -- Mostrar datos de la tabla interna --\\
      SELECT * fROM ztb_acc_categ_ag INTO tABLE @it_acc_cate_ag.
      out->write( sy-dbcnt ).
      out->write( 'ztb_acc_categ_ag data table inserted susseccfully' ).
  ENDMETHOD.

ENDCLASS.
