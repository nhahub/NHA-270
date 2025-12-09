import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Bloc/floorplan/floorplan_bloc.dart';
import '../Bloc/floorplan/floorplan_event.dart';
import '../Components/custom_button.dart';
import 'message.dart';

class ErrorView extends StatelessWidget {
  final String msgPrompt;
  final String errorMessage;

  const ErrorView({
    super.key,
    required this.msgPrompt,
    required this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    final bloc        = context.read<FloorplanBloc>();
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme   = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Message(msg: msgPrompt),
          const SizedBox(height: 24),
          Text(
            "Error: $errorMessage",
            textAlign: TextAlign.center,
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.error,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),
          CustomButton(
            text: "Retry",
            onPressed: () {
              bloc.add(GenerateFloorplanRequested(msgPrompt));
            },
          ),
        ],
      ),
    );
  }
}
