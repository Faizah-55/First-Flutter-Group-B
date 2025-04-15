import 'package:flutter/material.dart';
import 'country_screen.dart';

class InterestScreen extends StatelessWidget {
  final List<Map<String, String>> interests = [
    {"label": "Travel & Adventures", "emoji": "🌍"},
    {"label": "Music", "emoji": "🎶"},
    {"label": "Art", "emoji": "🎨"},
    {"label": "Food & Drink", "emoji": "🍔"},
    {"label": "Home & Lifestyle", "emoji": "🏠"},
    {"label": "Others", "emoji": "❓"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF0EE),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30),
            Text(
              "Select Your 3 Interests",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text("Later you can add more in your account :)"),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.all(20),
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                children: interests.map((item) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(item["emoji"]!, style: TextStyle(fontSize: 40)),
                          SizedBox(height: 10),
                          Text(item["label"]!, textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CountryScreen()),
                  );
                },
                child: Text("CONTINUE"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
