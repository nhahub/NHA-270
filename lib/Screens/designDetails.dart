import 'package:flutter/material.dart';

class Designdetails extends StatefulWidget {
  final String image;
  final String description;

  const Designdetails({
    super.key,
    required this.image,
    required this.description,
  });

  @override
  State<Designdetails> createState() => _DesigndetailsState();
}
class _DesigndetailsState extends State<Designdetails> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFDDF2),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFDDF2),
        title: Text(
          "Design Details",
          style: TextStyle(
            color: Color(0xFF9700A3),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: BackButton(color: Color(0xFF9700A3)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, color: Color(0xFF9700A3)),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xFFFF08FF).withOpacity(0.26),
                Color(0xFFFF08FF).withOpacity(0.36),
              ]),

            ),
            height: 250,
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Hero(
                  tag: widget.image,
                  child: Image.asset(
                      widget.image,
                      width: 400,
                      height: 400,
                      fit: BoxFit.fill
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Description",
                                style: TextStyle(
                                    color: Color(0xFF9700A3),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500
                                )
                            ),
                            SizedBox(height: 16,),
                            SizedBox(
                                width: 300,
                                child: Text(widget.description)
                            ),
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                      },
                      icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        size: 32,
                        color: const Color(0xFF9700A3),
                      ),
                    )

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
