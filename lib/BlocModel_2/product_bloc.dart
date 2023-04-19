import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:industrialstandardproject1/Model/product_model.dart';
import 'package:industrialstandardproject1/Network/product_Repository.dart';
import 'package:meta/meta.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {



  ProductBloc() : super(ProductInitial()) {

    on<ProductEvent>((event, emit) async{
Productmodel? product_list;

 emit(product_Loding());

 product_list=await Product_Repo().get_Product();

if(product_list !=null && product_list.products!.isNotEmpty){

  emit(product_Loded(product_list));
}
else{

  emit(product_Error("went ewong"));
}




     });
  }
}
