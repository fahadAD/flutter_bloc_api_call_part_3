part of 'product_bloc.dart';

@immutable
abstract class ProductEvent extends Equatable{}

class All_data_event extends ProductEvent{

  @override
  List<Object?> get props =>  [];

}