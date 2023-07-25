part of 'seller_signup_bloc.dart';

abstract class SignupState {}

class SignupInitial extends SignupState {}

class SignupLodingState extends SignupState{}

class SignupLoadedState extends SignupState{
  SignupModel responseModel;
  SignupLoadedState({required this.responseModel});
}

class SignupErrorState extends SignupState{
  String errorMsg;
  SignupErrorState({required this.errorMsg});
}

// abstract class SellerSignupState extends Equatable {
//   const SellerSignupState();
//
//   @override
//   List<Object> get props => [];
// }
//
// class SellerSignupStateInitial extends SellerSignupState {}
//
// class SellerSignupStateLoading extends SellerSignupState {}
//
// class SellerSignupStateLoaded extends SellerSignupState {
//   final SellerSignupModel sellerSignupModel;
//
//   SellerSignupStateLoaded(this.sellerSignupModel);
//
//   @override
//   List<Object> get props => [sellerSignupModel];
//
// }
//
// class SellerSignupStateFailed extends SellerSignupState {
//   final String errorMessage;
//
//   SellerSignupStateFailed(this.errorMessage);
//
//   @override
//   List<Object> get props => [errorMessage];
// }

