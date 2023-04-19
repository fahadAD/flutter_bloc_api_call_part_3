
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:industrialstandardproject1/BlocModel_2/product_bloc.dart';


Widget productBody(){

return BlocProvider(create: (context) => ProductBloc()..add(All_data_event()),

child: BlocBuilder<ProductBloc,ProductState>(
  builder: (context, state) {

   if(state is product_Loding){
     return Center(child: CircularProgressIndicator());
   }
  else if(state is product_Loded){
var data_List=state.product_data.products;
     return ListView.builder(
      primary: false,
       shrinkWrap: true,
itemCount: data_List!.length,
       itemBuilder: (BuildContext context, int index) {
var data=data_List[index];


        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [

                 CachedNetworkImage(
                   imageUrl: "${data.image!.original}",
                   placeholder: (context, url) => CircularProgressIndicator(),
                   errorWidget: (context, url, error) => Icon(Icons.error),
                 ),


                 Text("NAME: ${data.name}"),
                 Text("DESCRIPTION: ${data.description??""}"),
               ],
             ),
          ),
        );
     },

     );
   }
   else if(state is product_Error){
       return Center(child: Text(state.err_or));
   }
   else{
     return Text("no data");
   }


},),
);

}

