import 'package:clone_doctor/utils/category_card.dart';
import 'package:clone_doctor/utils/doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "Hello,",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const Text(
                        "Toto Thii",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  ),

                  //profile picture
                  Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[200],
                        borderRadius: BorderRadius.circular(12.0)),
                    child: const Icon(Icons.person),
                  )
                ],
              ),
            ),

            const SizedBox(height: 25.0),

            //card -> how do you feel?
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Colors.pink[200],
                    borderRadius: BorderRadius.circular(12.0)),
                child: Row(children: [
                  // animation or cute picture
                  Container(
                    height: 100,
                    width: 100,
                    child: Lottie.network(
                        'https://assets3.lottiefiles.com/packages/lf20_tutvdkg0.json'),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  // how do you feel? + get started button
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "How do you feel?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        const Text("Fill out your medical card right now",
                            style: TextStyle(fontSize: 14)),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple[300],
                              borderRadius: BorderRadius.circular(12.0)),
                          child: const Center(
                            child: Text("Get started"),
                          ),
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ),

            const SizedBox(
              height: 25.0,
            ),
            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12.0)),
                child: const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: 'How can we help you?'),
                ),
              ),
            ),

            const SizedBox(
              height: 25.0,
            ),

            // horizontal list view -> categories list
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryCard(
                    categoryName: 'Dentist',
                    iconImagePath: 'lib/icons/tooth.png',
                  ),
                  CategoryCard(
                    categoryName: 'Surgeon',
                    iconImagePath: 'lib/icons/surgeon.png',
                  ),
                  CategoryCard(
                    categoryName: 'Pharmacist',
                    iconImagePath: 'lib/icons/medicine.png',
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 25.0,
            ),

            // doctor list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Doctor List',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),

            //card
            Expanded(
              child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                DoctorCard(
                  doctorImagePath: "lib/images/doctor1.jpg",
                  doctorName: 'Dr. Arlene McCoy',
                  rating: '4.8',
                  doctorProfession: 'Therepist 7 y.e',
                ),
                DoctorCard(
                  doctorImagePath: "lib/images/doctor2.jpg",
                  doctorName: 'Dr. Ganesh Gupta',
                  rating: '4.9',
                  doctorProfession: 'Surgeon 6 y.e',
                ),
                DoctorCard(
                  doctorImagePath: "lib/images/doctor3.jpg",
                  doctorName: 'Dr. Toto Thii',
                  rating: '4.7',
                  doctorProfession: 'Psycologist 8 y.e',
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
