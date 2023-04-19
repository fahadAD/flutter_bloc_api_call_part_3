import 'package:flutter/material.dart';
import 'package:industrialstandardproject1/Screen/Product/product_body.dart';
 class ProductScreen1 extends StatefulWidget {
   const ProductScreen1({Key? key}) : super(key: key);

  @override
  State<ProductScreen1> createState() => _ProductScreen1State();
}

class _ProductScreen1State extends State<ProductScreen1> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(

       body: productBody(),
     );
   }
}
