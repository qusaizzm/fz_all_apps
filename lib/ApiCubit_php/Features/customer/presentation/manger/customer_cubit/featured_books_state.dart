part of 'featured_books_cubit.dart';

abstract class CustomerState extends Equatable {
  const CustomerState();

  @override
  List<Object> get props => [];
}

class CustomerInitial extends CustomerState {}

class CustomerLoading extends CustomerState {}

class CustomerFailure extends CustomerState {
  final String errMessage;

  const CustomerFailure(this.errMessage);
}

class CustomerSuccess extends CustomerState {
  final List<CustModel> books;

  const CustomerSuccess(this.books);
}
