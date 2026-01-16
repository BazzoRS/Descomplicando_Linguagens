CLASS zdlcdscl_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zdlcdscl_001 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.


  TYPES tt_product TYPE TABLE OF zdlcdst_product WITH DEFAULT KEY.
  DATA(lt_product) = VALUE tt_product(

  ( product = 1 description = 'Parafuso' product_type = 1 authorization_group = 1 )
  ( product = 2 description = 'Porca' product_type = 1 authorization_group = 1 )
  ( product = 3 description = 'Brumo' product_type = 1 authorization_group = 1 )
  ( product = 4 description = 'Prego' product_type = 1 authorization_group = 1 )

  ).

 MODIFY zdlcdst_product FROM TABLE @lt_product.

 if sy-subrc = 0.

   out->write( 'Dados inseridos com sucesso em linha de cabeçalho' ).

 endif.

  TYPES tt_item TYPE TABLE OF zdlcdst_order_it WITH DEFAULT KEY.
  DATA(lt_item) = VALUE tt_item(

  ( sales_order = 1 sales_ordem_item = 10 product = 1 product_quantity = 1  total_value = 10 )
  ( sales_order = 1 sales_ordem_item = 20 product = 2 product_quantity = 2  total_value = 20 )
  ( sales_order = 1 sales_ordem_item = 30 product = 3 product_quantity = 30 total_value = 50 )
  ( sales_order = 2 sales_ordem_item = 10 product = 4 product_quantity = 15 total_value = 30 )

  ).

 MODIFY zdlcdst_order_it FROM TABLE @lt_item.

 if sy-subrc = 0.

   out->write( 'Dados inseridos com sucesso em linha de item' ).

 endif.


  ENDMETHOD.

ENDCLASS.
