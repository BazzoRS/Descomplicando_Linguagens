@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite - Item + Product'
@Metadata.ignorePropagatedAnnotations: false
define view entity ZI_DLSCDS_ORDERIT_PRODUCT
  as select from ZI_ZDLCDST_ORDER_IT
  association [1..1] to ZI_ZDLCDST_PRODUCT as _Product on $projection.Product = _Product.Product
{
  key SalesOrder,
  key SalesOrdemItem,
      Product,
      _Product.Description,
      ProductQuantity,
      ProductUnity,
      TotalValue,
      Currency,
      CreationDate,
      CreationUser,
      LastChangedBy,
      LastChangedFrom,
      
      _Product
}
