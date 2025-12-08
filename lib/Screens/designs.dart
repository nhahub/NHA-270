import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Components/designs_card.dart';
import '../Models/designs.dart';
import '../Repositories/design_repository.dart';

class Designs extends StatefulWidget {
  const Designs({super.key});

  @override
  State<Designs> createState() => _DesignsState();
}

class _DesignsState extends State<Designs> {
  @override
  Widget build(BuildContext context) {
    final repo = context.read<DesignRepository>();

    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: listViewDesigns(context, repo.getAllDesigns()),
    );
  }
}

// ✅ خلّيتها تاخد BuildContext عشان نستخدم الـ Theme
Widget listViewDesigns(BuildContext context, Future<List<Design>> future) {
  final colorScheme = Theme.of(context).colorScheme;
  final textTheme = Theme.of(context).textTheme;

  return FutureBuilder<List<Design>>(
    future: future,
    builder: (context, snapshot) {
      final designs = snapshot.data ?? [];

      if (snapshot.connectionState == ConnectionState.waiting) {
        return Center(
          child: CircularProgressIndicator(
            // يمشي مع البراند
            valueColor: AlwaysStoppedAnimation(colorScheme.primary),
          ),
        );
      }

      if (snapshot.hasError) {
        return Center(
          child: Text(
            'Error: ${snapshot.error}',
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.error,
            ),
            textAlign: TextAlign.center,
          ),
        );
      }

      if (designs.isEmpty) {
        return Center(
          child: Text(
            'No designs found',
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onBackground.withOpacity(0.7),
            ),
          ),
        );
      }

      return Scrollbar(
        thumbVisibility: true,
        thickness: 6,
        radius: const Radius.circular(12),
        child: ListView.builder(
          itemCount: designs.length,
          itemBuilder: (context, index) {
            return DesignsCard(
              description: designs[index].description,
              image: designs[index].image,
            );
          },
        ),
      );
    },
  );
}
