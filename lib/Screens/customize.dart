import 'package:depi_project/Repositories/floorplan_repository.dart';
import 'package:depi_project/Screens/aiResult.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Bloc/floorplan_bloc.dart';
import '../Bloc/floorplan_event.dart';
import '../Components/examples.dart';
import '../Components/prompt_text_field.dart';
import '../Components/suggestions.dart';

class Customize extends StatefulWidget {
   Customize({super.key});

  @override
  State<Customize> createState() => _CustomizeState();
}

class _CustomizeState extends State<Customize> {
  final TextEditingController promptController = TextEditingController();

  @override
  void dispose() {
    promptController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Describe Your Ideal         Space"
                    ,style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                    color: Color(0xFF163D7C)
                )),
                SizedBox(height: 10,),
                Text("Let our AI bring it to life. Start by describing the rooms, style, and key features"
                    ,style: TextStyle(
                  color: Color(0xFF163D7C)
                )),
                SizedBox(height: 24,),
                Stack(
                  children:[
                    Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Prompt(
                      controller: promptController,
                    ),
                    ),
                    Positioned(
                      right: 24,
                        bottom: 32,
                        child: IconButton(
                            onPressed: (){
                              String text = promptController.text.trim();
                              if (text.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Please enter a prompt first"),
                                  ),
                                );
                              }

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BlocProvider(
                                    create: (_) => FloorplanBloc(FloorplanRepository())
                                      ..add(GenerateFloorplanRequested(text)),
                                    child: AIresult(msg_prompt: text),
                                  ),
                                ),
                              );
                            },
                            icon: Icon(Icons.send,color: Color(0xFF9700A3)),
                        ))
                    ],
                ),
                SizedBox(height: 24,),
                Text("Suggestions",
                    style: TextStyle(
                    color: Color(0xFF9700A3),
                    fontSize: 16,
                    fontWeight: FontWeight.bold
          )),
                SizedBox(height: 10,),
                Suggestions(),
                Text("Examples",
                    style: TextStyle(
                  color: Color(0xFF163D7C),
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                )
                ),
                SizedBox(height: 10,),
                Examples()


              ],
            ),
          ),

    );
  }
}
