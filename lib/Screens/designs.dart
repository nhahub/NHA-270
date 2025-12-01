import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Components/designs_card.dart';
import '../Models/designs.dart';
import '../Repositories/design_repository.dart';

// Map<String,String> designs = {
//   "assets/images/design1.png":"A modern, open-cost concept house with 2 bedrooms, a home office, and a large kitchen island. Include a master bathroom with a walk-in shower.",
//   "assets/images/design2.png":"Cozy 1-bedroom apartment with a small balcony, a combined living and dining area, and plenty of natural light.",
//   "assets/images/design3.png":"A modern, open-cost concept house with 2 bedrooms, a home office, and a large kitchen island. Include a master bathroom with a walk-in shower.",
//   "assets/images/design4.png":"Cozy 1-bedroom apartment with a small balcony, a combined living and dining area, and plenty of natural light.",
//   "assets/images/design5.png":"A modern, open-cost concept house with 2 bedrooms, a home office, and a large kitchen island. Include a master bathroom with a walk-in shower.",
//   "assets/images/design6.png":"Cozy 1-bedroom apartment with a small balcony, a combined living and dining area, and plenty of natural light.",
// };

class Designs extends StatefulWidget {

  const Designs({super.key,});

  @override
  State<Designs> createState() => _DesignsState();
}

class _DesignsState extends State<Designs> {


  @override
  Widget build(BuildContext context) {
    final repo = context.read<DesignRepository>();
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: ListViewDesigns(repo.getAllDesigns())
    );

  }
}






Widget ListViewDesigns( Future<List<Design>> repo){
  return FutureBuilder <List<Design>>(
      future: repo,
      builder: (context, snapshot) {
        final designs = snapshot.data ?? [];
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }
        if (designs.isEmpty) {
          return const Center(
            child: Text('No designs found'),
          );
        }
        return ListView.builder(
            itemCount: designs.length ,
            itemBuilder: (context,index){
              return DesignsCard(
                description: designs[index].description,
                image: designs[index].image,
              );
            });
      }
  );
}