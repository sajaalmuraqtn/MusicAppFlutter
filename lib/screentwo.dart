import 'package:flutter/material.dart';

void main() {
  runApp(ScreenTwo());
}

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Color(0xffE8EEFC),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color:  Color(0xffE8EEFC),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 5,
                          offset: Offset(-5, -10),
                        ),
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 12,
                          offset: Offset(5, 10),
                        ),
                      ],
                    ),
                    child: Icon(Icons.arrow_back_rounded, color: Colors.grey),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color:  Color(0xffE8EEFC),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 5,
                          offset: Offset(-5, -10),
                        ),
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 12,
                          offset: Offset(5, 10),
                        ),
                      ],
                    ),
                    child: Icon(Icons.stop, color: Colors.grey),
                  ),
                ],
              ),

              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 8,
                      spreadRadius: 6,

                      offset: Offset(-5, -10),
                    ),
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      spreadRadius: 6,
                      offset: Offset(5, 10),
                    ),
                  ],
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/circleMusic.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Text(
                    'Unavailable',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Davido',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 20),

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("1:47", style: TextStyle(color: Colors.black54)),
                        Text("4:00", style: TextStyle(color: Colors.black54)),
                      ],
                    ),
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      activeTrackColor: Colors.blueAccent,
                      inactiveTrackColor: Colors.blueAccent.withOpacity(0.3),
                      thumbColor: Colors.blueAccent,
                      trackHeight: 4,
                      thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: 8,
                      ),
                      overlayColor: Colors.blueAccent.withOpacity(0.1),
                    ),
                    child: Slider(
                      value: 107, // القيمة الحالية (بالثواني)
                      min: 0,
                      max: 240, // المدة الكاملة 4 دقائق
                      onChanged: (value) {}, // هنا ممكن تضيف تحكم بالتقدم
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 5,
                          offset: Offset(-5, -10),
                        ),
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 12,
                          offset: Offset(5, 10),
                        ),
                      ],
                    ),
                    child: Icon(Icons.fast_rewind, color: Colors.grey),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xff789AFE),
                      shape: BoxShape.circle,
                      boxShadow: [],
                    ),
                    child: Icon(Icons.pause, color: Colors.white),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 5,
                          offset: Offset(-5, -10),
                        ),
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 12,
                          offset: Offset(5, 10),
                        ),
                      ],
                    ),
                    child: Icon(Icons.fast_forward, color: Colors.grey),
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
