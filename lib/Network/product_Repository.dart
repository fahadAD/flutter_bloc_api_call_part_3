

import 'package:industrialstandardproject1/Model/product_model.dart';
import 'package:http/http.dart' as http;

class Product_Repo{

 Future<Productmodel?> get_Product()async{

   var response=await http.get(Uri.parse("https://grocery.ebasket.com.bd/api/all-products"));

   if(response.statusCode==200){

  return productmodelFromJson(response.body);

   }else{
     return null;
   }


 }


}