import 'package:flutter/material.dart';

class CountryScreen extends StatelessWidget {
  final List<Map<String, String>> countries = [
    {"name": "Ukraine", "emoji": "🇺🇦"},
    {"name": "Australia", "emoji": "🇦🇺"},
    {"name": "Kazakhstan", "emoji": "🇰🇿"},
    {"name": "Europe", "emoji": "🇪🇺"},
    {"name": "Slovenia", "emoji": "🇸🇮"},
    {"name": "Czech", "emoji": "🇨🇿"},
    {"name": "Netherlands", "emoji": "🇳🇱"},
    {"name": "Poland", "emoji": "🇵🇱"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF0EE),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFF0EE),
        elevation: 0,
        leading: BackButton(color: Colors.black),
        title: Text("Country Selection", style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Find Yours",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: countries.map((country) {
                return ListTile(
                  leading: Text(country["emoji"]!, style: TextStyle(fontSize: 24)),
                  title: Text(country["name"]!),
                  trailing: Icon(Icons.circle_outlined, color: Colors.redAccent),
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
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                // ممكن نضيف شي هنا لاحقًا
              },
              child: Text("SAVE"),
            ),
          )
        ],
      ),
    );
  }
}
