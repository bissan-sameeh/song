import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-10, -10),
                          blurRadius: 10,
                        ),
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(10, 10),
                          blurRadius: 10,
                        ),
                      ],
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.arrow_back, color: Colors.grey[600]),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    margin: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-10, -10),
                          blurRadius: 10,
                        ),
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(10, 10),
                          blurRadius: 10,
                        ),
                      ],
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.stop,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 250,
                      height: 250,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-10, -10),
                            blurRadius: 10,
                          ),
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(10, 10),
                            blurRadius: 10,
                          ),
                        ],
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://images.unsplash.com/photo-1685115910523-2516c451101b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=814&q=80",
                          ),
                        ),
                        borderRadius: BorderRadius.circular(200),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Text(
                      "Unavailable",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff6d7d8f)),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Davido",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w200,
                          color: Color(0xff6d7d8f)),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Slider(
                      value: 0.3,
                      onChanged: (value) {},
                      activeColor: const Color(0xff6d7d8f),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 170,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-10, -10),
                          blurRadius: 10,
                        ),
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(10, 10),
                          blurRadius: 10,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[400],
                    ),
                    child: Icon(
                      Icons.fast_forward,
                      color: Colors.grey[600],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(-5, -5),
                            blurRadius: 10),
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(10, 10),
                            blurRadius: 10)
                      ],
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(-5, -5),
                            blurRadius: 10),
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(10, 10),
                            blurRadius: 10)
                      ],
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.fast_rewind,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
