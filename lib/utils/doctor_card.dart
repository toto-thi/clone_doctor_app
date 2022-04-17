import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorProfession;

  const DoctorCard(
      {Key? key,
      required this.doctorImagePath,
      required this.rating,
      required this.doctorName,
      required this.doctorProfession})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(12.0)),
        child: Column(
          children: [
            //pic docs
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                doctorImagePath,
                height: 80.0,
              ),
            ),

            // rating doctor
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[600],
                ),
                Text(rating,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold)
                )
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            //doc name
            Text(
              doctorName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 5.0,
            ),
            //doc title
            Text(doctorProfession)
          ],
        ),
      ),
    );
  }
}
