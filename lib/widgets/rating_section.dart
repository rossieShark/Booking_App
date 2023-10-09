import 'package:flutter/material.dart';

class CreateRatingSection extends StatelessWidget {
  const CreateRatingSection(
      {super.key, required this.rating, required this.ratingName});

  final int rating;
  final String ratingName;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        width: 149,
        height: 29,
        color: const Color.fromARGB(255, 255, 199, 0).withOpacity(0.2),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(children: [
            const Icon(Icons.star,
                size: 15, color: Color.fromARGB(255, 255, 168, 0)),
            Text(
              "$rating $ratingName",
              style: const TextStyle(
                  color: Color.fromARGB(255, 255, 168, 0),
                  fontSize: 16,
                  fontFamily: 'SFPro',
                  fontWeight: FontWeight.w500),
            ),
          ]),
        ),
      ),
    );
  }
}
