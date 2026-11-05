import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 200, 235, 159),
          leading: Icon(Icons.menu),
          actions: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: Icon(Icons.person),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(0),
                          child: Text(
                            "Welcome",
                            style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Text(
                            "What would you like to do today?",
                            style: TextStyle(
                              fontSize: 12,
                              color: const Color.fromARGB(255, 67, 67, 67),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset('assets/cute-pink-leaf-plant-pot-cartoon-character-vector-illustration-kawaii-icon-generative-ai-304316276.webp',
                      height: 200,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 181, 201),
                  borderRadius: BorderRadius.circular(17)
                ),
                child: Container(
                  padding: EdgeInsets.all(35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Explore Your Hobbies", 
                            style: TextStyle(
                              
                            ),
                          ),
                          Text("Find activities you love"),
                        ],
                      ),
                      Image.asset('assets/cute-pink-leaf-plant-pot-cartoon-character-vector-illustration-kawaii-icon-generative-ai-304316276.webp'),
                    ],
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    HobbyBox(name: 'soccer'),
                    HobbyBox(name: 'Play game'),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 75,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 241, 181, 201),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomButton(icon: Icons.home),
              BottomButton(icon: Icons.note),
              BottomButton(icon: Icons.mood),
            ],
          ),
        ),
      ),
    ),
  );
}

class BottomButton extends StatelessWidget {
  final IconData icon;

  const new({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Icon(icon),
    );
  }
}

class HobbyBox extends StatelessWidget {
  final String name;
  const new({
    super.key,
    required this.name
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.all(15),
      height: 250,
      width: 300,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 200, 235, 159),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Text(name),
    );
  }
}
