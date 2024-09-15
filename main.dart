import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FAQPage(),
    );
  }
}

class FAQPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back_ios_new_outlined),
                SizedBox(width: 10,),
                Text('Frequently Asked Questions', style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),),
              ],
            ),
            SizedBox(height: 20,),
            buildFAQItem(
              'What is Realink Really About?',
              'Realink is a platform that connects users with real estate services...',
            ),
            buildFAQItem(
              'What regions is it Available in?',
              'Realink is available in multiple regions across the globe...',
            ),
            buildFAQItem(
              'How does payment Work?',
              'You can make payments via multiple methods...',
            ),
            buildFAQItem(
              'Can I Chat with agents & Landlords?',
              'Yes, users can chat directly with agents and landlords...',
            ),
            buildFAQItem(
              'Who can use the RealinkApp?',
              'Anyone can use the Realink app to find properties...',
            ),
            buildFAQItem(
              'How can I Check my Balance?',
              'Users can check their balance in the account section of the app...',
            ),
            buildFAQItem(
              'Can I see live video of House?',
              'Yes, live video tours of houses are available...',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFAQItem(String question, String answer) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffFFF5EE),
          borderRadius: BorderRadius.circular(12),
        ),
        child: ExpansionTile(
          title: Text(
            question,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 16.0, vertical: 8.0),
              child: Text(
                answer,
                style: TextStyle(fontSize: 16.0,
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}