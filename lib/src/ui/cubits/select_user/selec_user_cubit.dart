import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'selec_user_state.dart';

enum UserType { profesional, cliente, none }

class SelectUserCubit extends Cubit<SelectUserState> {
  ///-----------repositorios--------------

  ///-----------constructor--------------

  SelectUserCubit() : super(SelectUserState());

  ///-----------variables--------------

  ///-----------eventos--------------
  
  addUserType(UserType userType){
    emit(state.copyWith(userType: userType));
  }

  ///-----------peticiones--------------
}
