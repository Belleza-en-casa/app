import 'package:belleza_en_casa/src/ui/cubits/select_user/selec_user_cubit.dart';

///-------------------------
///[_userType] alamcena el tipo de usuario para manetenerlo en toda la app

late UserType _userType;

///[setUserType] se solicita el tipo de usuario
set setUserType(UserType user) {
  _userType = user;
}

///[getUserType] retorna el tipo de usuario
get getUserType => _userType;
///-------------------------
