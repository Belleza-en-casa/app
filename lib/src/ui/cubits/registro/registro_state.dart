// ignore_for_file: must_be_immutable

part of 'registro_cubit.dart';

class RegistroState extends Equatable {
  final BuildContext context;
  late bool loading;
  late bool btnEnabled;
  late bool showPassword1;
  late bool showPassword2;
  late bool term1;
  late bool term2;
  RegistroState(
      {required this.context,
      this.btnEnabled = false,
      this.loading = false,
      this.term1 = false,
      this.term2 = false,
      this.showPassword1 = false,
      this.showPassword2 = false});

  @override
  List<Object?> get props => [
        context,
        loading,
        btnEnabled,
        showPassword1,
        showPassword2,
        term1,
        term2
      ];

  RegistroState copyWith({
    BuildContext? context,
    bool? loading,
    bool? btnEnabled,
    bool? showPassword1,
    bool? showPassword2,
    bool? term1,
    bool? term2,
  }) =>
      RegistroState(
          term1: term1 ?? this.term1,
          term2: term2 ?? this.term2,
          context: context ?? this.context,
          btnEnabled: btnEnabled ?? this.btnEnabled,
          loading: loading ?? this.loading,
          showPassword1: showPassword1 ?? this.showPassword1,
          showPassword2: showPassword2 ?? this.showPassword2);
}
