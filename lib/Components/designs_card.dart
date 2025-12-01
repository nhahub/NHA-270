import 'package:flutter/material.dart';
import '../Screens/designDetails.dart';
class DesignsCard extends StatelessWidget {
  final String description;
  final String image;
  const DesignsCard({super.key, required this.description, required this.image});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Designdetails(image: image,description: description,)));
        },
        child: Container(
          width: 100,
          height: 112,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            // border: Border(
            //   bottom: BorderSide(color: Color(0xFFFF08FF).withOpacity(0.35),width: 4),
            // ),
            gradient:  LinearGradient(
              // stops: [0.9,0.1],
              colors: [Color(0xFFFF08FF).withOpacity(0.05),Color(0xFFFF08FF).withOpacity(0.15)]
            )
            // color: Color(0xFFFF08FF).withOpacity(0.05),
          //   0xFF7F167F
          ),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const SizedBox(width: 16),
              SizedBox(
                width: 190,
                height: 88,
                child: Text(description,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0xFF7F167F),
                    fontSize: 12,
                  ),
                ),

              ),
      SizedBox(width: 16,),
      Hero(
        tag: image,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(image,
            width: 120,
            height: 88,
          ),
        ),
      ),



          ],
          ),
        ),
      ),
    );

  }
}
