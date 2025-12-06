
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Bloc/floorplan/floorplan_bloc.dart';
import '../Bloc/floorplan/floorplan_event.dart';
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
    final bloc = context.read<FloorplanBloc>();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Message(msg: msgPrompt),
          const SizedBox(height: 24),
          Text(
            "Error: $errorMessage",
            style: const TextStyle(color: Colors.red),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              bloc.add(GenerateFloorplanRequested(msgPrompt));
            },
            child: const Text("Retry"),
          ),
        ],
      ),
    );
  }
}