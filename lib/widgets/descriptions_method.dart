import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("An Online learning app can be accessed from a smartphone. It is a technology-based study tool that enables information sharing. It is commonly known as mobile apps for learning. Online learning app is a great learning tool for students who do not have access to a physical classroom.",
        style: TextStyle(
          fontSize: 16,
          color: Colors.black54.withOpacity(0.7)
        ),
        ),
        SizedBox(height: 20,),
        Row(
          children: [
              Text(
              "Courses Length",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              
            ),
            Icon(
              Icons.timer,
              color: Color.fromARGB(255, 102, 47, 204),

            ),
            SizedBox(width: 5),
            Text(
              "20 Hours",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Color.fromARGB(225, 216, 189, 33),

            ),
            SizedBox(width: 5),
            Text(
              "4.5",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}