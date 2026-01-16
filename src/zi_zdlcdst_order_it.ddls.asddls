@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic - Item pedido'
@Metadata.ignorePropagatedAnnotations: false
define view entity ZI_ZDLCDST_ORDER_IT
  as select from zdlcdst_order_it
{
  key sales_order       as SalesOrder,
  key sales_ordem_item  as SalesOrdemItem,
      product           as Product,
      product_quantity  as ProductQuantity,
      product_unity     as ProductUnity,
      total_value       as TotalValue,
      currency          as Currency,
      creation_date     as CreationDate,
      creation_user     as CreationUser,
      last_changed_by   as LastChangedBy,
      last_changed_from as LastChangedFrom
}
