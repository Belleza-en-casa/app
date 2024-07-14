// ignore_for_file: must_be_immutable

part of 'selec_user_cubit.dart';

class SelectUserState extends Equatable {
  late UserType userType;

  SelectUserState({this.userType = UserType.none});

  @override
  List<Object?> get props => [userType];

  SelectUserState copyWith({UserType? userType}) =>
      SelectUserState(userType: userType ?? this.userType);
}
