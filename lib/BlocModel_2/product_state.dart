part of 'product_bloc.dart';

@immutable
abstract class ProductState extends Equatable{}

class ProductInitial extends ProductState {

  @override

  List<Object?> get props =>  [];
}
class product_Loding extends ProductState {

  @override
  List<Object?> get props =>  [];
}


class product_Loded extends ProductState {

  final Productmodel product_data;

product_Loded(this.product_data);

  @override
  List<Object?> get props =>  [product_data];
}

class product_Error extends ProductState {
final String err_or;
product_Error(this.err_or);
  @override
  List<Object?> get props =>  [err_or];
}
