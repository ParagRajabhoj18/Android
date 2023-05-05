import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
              ),
              const Text(
                'About Us',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Image.asset(
                      "assets/logo.png",
                      height: 200,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Welcome to our app! We are a team of developers dedicated to creating high-quality Flutter applications. Thank you for choosing us! Wagging Tails is a mobile application designed to bring dog owners and dog lovers together. Our mission is to create a community where people can connect with each other and share their love for dogs. Our app provides a platform where dog owners can find trusted dog sitters, walkers, and trainers in their local area. We also offer a social network where users can create profiles for their dogs, connect with other dog owners, and share photos and tips. At Wagging Tails, we are committed to providing a safe and reliable service for our users. All of our dog care providers are vetted and undergo background checks before being listed on our platform. We also offer 24/7 support to ensure that our users have a positive experience using our app. Thank you for choosing Wagging Tails as your go-to app for all things dog-related. We are excited to help you and your furry friend make new friends and explore new places!',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Follow Us'),
                            content: const Text('Insta: @waggingtails2023'
                                'Email us: waggingtails@gmail.com '),

                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },

                      );
                    },


                    child: const Text('Connect to Wagging Tails'),

                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFffd28d), // change the button color here
                    ),

                  ),
                  ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
