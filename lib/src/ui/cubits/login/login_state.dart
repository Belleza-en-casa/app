part of 'login_cubit.dart';

class LoginState extends Equatable {
  final BuildContext context;
  late bool btnEnabled;
  late bool loading;
  late bool showPassword;
  LoginState({
    required this.context,
    this.loading = false,
    this.showPassword = false,
    this.btnEnabled = false,
  });

  @override
  List<Object?> get props => [
        context,
        btnEnabled,
        loading,
        showPassword,
      ];
  LoginState copyWith({
    BuildContext? context,
    bool? loading,
    bool? btnEnabled,
    bool? showPassword,
  }) =>
      LoginState(
          context: context ?? this.context,
          btnEnabled: btnEnabled ?? this.btnEnabled,
          loading: loading ?? this.loading,
          showPassword: showPassword ?? this.showPassword
          );
}
