import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/doctor_card.dart';
import '../components/reuseable_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello,",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Xavier Chukumah,",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.person,
                        size: 30,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple.shade50,
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.purple.shade100,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          child: SvgPicture.asset(
                              "lib/images/undraw_medicine_b-1-ol.svg"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "How do you feel?",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "fill out your medical card \n right now",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: size.height * 0.07,
                                width: size.width * 0.5,
                                decoration: BoxDecoration(
                                  color: Colors.deepPurple.shade300,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                    child: Text(
                                  "Get Started",
                                  style: TextStyle(color: Colors.white),
                                )),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.deepPurple.shade50,
                      borderRadius: BorderRadius.circular(12)),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "How can we help you?",
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 80,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ReuseableCard(
                      widget: Row(
                        children: [
                          Image.asset(
                            "lib/icons/tooth.png",
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("Dentist")
                        ],
                      ),
                    ),
                    ReuseableCard(
                      widget: Row(
                        children: [
                          Image.asset("lib/icons/medicine.png"),
                          SizedBox(
                            width: 20,
                          ),
                          Text("Pharmacist")
                        ],
                      ),
                    ),
                    ReuseableCard(
                      widget: Row(
                        children: [
                          Image.asset("lib/icons/surgeon.png"),
                          SizedBox(
                            width: 20,
                          ),
                          Text("Surgeon")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Doctor List",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: size.height * 0.35,
                  child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  DoctorCard(
                    doctorImagePath:
                        'lib/images/austin-distel-7bMdiIqz_J4-unsplash.jpg',
                    rating: "4.9",
                    doctorName: 'Austin Diesel',
                    doctorProfession: 'Therapist, 7 y.e',
                  ),
                  DoctorCard(
                    doctorImagePath:
                        'lib/images/bruno-rodrigues-279xIHymPYY-unsplash.jpg',
                    rating: "4.7",
                    doctorName: 'Bruno Rodrigues',
                    doctorProfession: 'Cardiologist, 5 y.e',
                  ),
                  DoctorCard(
                    doctorImagePath:
                        'lib/images/rian-ramirez-rm7rZYdl3rY-unsplash.jpg',
                    rating: "4.8",
                    doctorName: 'Rian Ramirez',
                    doctorProfession: 'Surgeon, 4 y.e',
                  ),
                  DoctorCard(
                    doctorImagePath:
                        'lib/images/usman-yousaf-SakqLf78KVo-unsplash.jpg',
                    rating: "4.3",
                    doctorName: 'Usman Yousaf',
                    doctorProfession: 'Dentist, 9 y.e',
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
