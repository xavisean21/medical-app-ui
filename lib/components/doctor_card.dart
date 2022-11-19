import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard(
      {super.key,
      required this.doctorImagePath,
      required this.rating,
      required this.doctorName,
      required this.doctorProfession});
  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorProfession;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.deepPurple.shade50,
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  doctorImagePath,
                  height: 100,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow[600],
                  ),
                  Text(
                    rating,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                doctorName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 5,
              ),
              Text(doctorProfession)
            ],
          )),
    );
  }
}
