import 'package:flutter/material.dart';
import 'package:padmakanya_app/screens/about_screen.dart';
import 'package:padmakanya_app/widgets/faculty_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              "assets/pk.png",
              width: 40,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("PadmaKanya Multiple Campus"),
                Text(
                  "Bagbazar, Kathmandu",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align children to start
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Color(0xff000B58)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "WELCOME TO THE COLLEGE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "Padma Kanya Multiple Campus (PKMC) was established in 1951(Aswin 2008 B.S.) as first women’s campus of Nepal. Initially, its academic activities were brought into operation at the present location of Kanya School, Dillibazar. King Tribhuvan inaugurated the campus. The then Prime Minister (Head of the Government) Mohan Shamsher Rana, Finance Minister Subarna Sumsher Rana, Home Minister B. P. Koirala, Minister of Education, Nripa Jung Rana, and the social workers of the time were present on the occasion. At the time of establishment, its academic programme started in eight subjects of humanities.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 5),
                    ElevatedButton(onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context){
                          return AboutScreen();
                        })
                      );
                    }, child: Text("Read More"))
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Our Facilities",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Facultycard(
                      text: "Faculty of Humanities and Social Sience",
                      ),
                    SizedBox(width: 10),
                    Facultycard(text: "Faculty of Management",),
                    SizedBox(width: 10),      
                    Facultycard(text: "Institute of Science and Technology"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

