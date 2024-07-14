// ignore_for_file: must_be_immutable

part of 'onboarding_cubit.dart';

class OnboardingState extends Equatable {
  ///[buildContext] para el contexto de la pagina
  final BuildContext? buildContext;

  ///[currentIndex] para  saber el indice actual del onbaording
  late int currentIndex;
  final PageController ctrl;

  ///----Constructor
  OnboardingState({this.buildContext,  this.currentIndex = 0, required this.ctrl});

  @override
  List<Object?> get props => [buildContext, currentIndex];

  /// [copyWith] mantiene o reemplaza el estado de las variables
  OnboardingState copyWith({BuildContext? buildContext, int? currentIndex, 
  
  PageController? ctrl
  }) =>
      OnboardingState(
        ctrl: ctrl ?? this.ctrl,
          buildContext: buildContext ?? this.buildContext,
          currentIndex: currentIndex ?? this.currentIndex);
}
