import 'package:belleza_en_casa/src/ui/pages/profile/profesional/step/personal_step.dart';
import 'package:belleza_en_casa/src/ui/pages/profile/profesional/step/schedule_step.dart';
import 'package:flutter/material.dart';

import 'step/service_step.dart';

class ProfesionalStep extends StatefulWidget {
  const ProfesionalStep({super.key});

  @override
  State<ProfesionalStep> createState() => _ProfesionalStepState();
}

class _ProfesionalStepState extends State<ProfesionalStep> {
  @override
  Widget build(BuildContext context) {
    return Stepper(
        controlsBuilder: (context, details) {
          return const SizedBox();
        },
        currentStep: 2,
        elevation: 0,
        type: StepperType.horizontal,
        steps: [
          const Step(
            title: Text("Personal"),
            content: PersonalStep(),
          ),
          const Step(title: Text(""), content: ServiceStep()),
          Step(title: const Text(""), content: ScheduleStep()),
        ]);
  }
}
