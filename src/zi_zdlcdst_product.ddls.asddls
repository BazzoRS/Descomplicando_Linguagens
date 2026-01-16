@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic - Products'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_ZDLCDST_PRODUCT
  as select from zdlcdst_product
{
  key product             as Product,
      description         as Description,
      product_type        as ProductType,
      authorization_group as AuthorizationGroup,
      creation_date_time  as CreationDateTime
}
