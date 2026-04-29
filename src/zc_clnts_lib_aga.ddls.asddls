@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Books'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_clnts_lib_aga
  as select from ztb_clnts_lib_ag
{
      //    key id_cliente as IdCliente,
  key id_libro                     as BookID,
      count( distinct id_cliente ) as Sales
}
group by id_libro;
