import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Components/result_body.dart';
import '../Bloc/floorplan_bloc.dart';
import '../Bloc/floorplan_state.dart';
import '../Components/error_view.dart';

class AIresult extends StatelessWidget {
  final String msg_prompt;
  const AIresult({super.key, required this.msg_prompt});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFDDF2),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFDDF2),
        title: Text(
          "AI Result",
          style: TextStyle(
            color: Color(0xFF7F167F),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: BackButton(color: Color(0xFF7F167F)),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_vert,color: Color(0xFF7F167F))
          )
        ],
      ),
      body: BlocConsumer<FloorplanBloc, FloorplanState>(
        listener: (context, state) {
          if (state is FloorplanFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        builder: (context, state) {
          if (state is FloorplanLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is FloorplanSuccess) {
            return Result(
              msgPrompt: msg_prompt,
              imageBytes: state.imageBytes, // 👈 صورة جاية من الـ API
            );
          } else if (state is FloorplanFailure) {
            return ErrorView(
              msgPrompt: msg_prompt,
              errorMessage: state.message,
            );
          }
          // FloorplanInitial أو أي حالة غريبة
          return const Center(
            child: Text("Preparing to generate floorplan..."),
          );
        },
      ),
    );
  }
}










