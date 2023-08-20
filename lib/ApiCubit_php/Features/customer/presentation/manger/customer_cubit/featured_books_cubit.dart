import 'package:bloc/bloc.dart';
import 'package:fz_all_apps/ApiCubit_php/Features/customer/data/models/customer_model.dart';
import 'package:fz_all_apps/ApiCubit_php/Features/customer/data/repos/cust_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class CustomerCubit extends Cubit<CustomerState> {
  CustomerCubit(this.homeRepo) : super(CustomerInitial());

  final CustomerRepo homeRepo;

  Future<void> fetchCustomer() async {
    emit(CustomerLoading());
    var result = await homeRepo.fetchAllCustomer();
    result.fold((failure) {
      emit(CustomerFailure(failure.errMessage));
    }, (books) {
      emit(CustomerSuccess(books));
    });
  }
}
