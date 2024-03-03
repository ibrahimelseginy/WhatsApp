import 'package:flutter/material.dart';
import 'package:whatsapp/custom_text_field.dart';
import 'package:whatsapp/message_widget.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'homeScreen';
  BlendMode? backgroundBlendMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(
          Icons.arrow_back_outlined,
          size: 30,
          color: Colors.white,
        ),
        title: const Row(mainAxisSize: MainAxisSize.min, children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/person.jpg'),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Ahmed',
          )
        ]),
        actions: const [
          Icon(Icons.videocam),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.phone),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.more_vert_outlined),
          SizedBox(
            width: 5,
          ),
        ],
        iconTheme: const IconThemeData(color: Colors.white, size: 30),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Column(
            children: [
              MessageWidget(
                sender: true,
                message: 'this is my first meesage',
                imagePath: 'assets/images/person1.jpg',
              ),
              MessageWidget(
                sender: false,
                message: 'this is my second meesage',
                imagePath: 'assets/images/person2.jpg',
              ),
              const Spacer(),
              Row(
                children: [
                  const Expanded(child: CustomTextField()),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        backgroundBlendMode: BlendMode.color,
                        border: Border.all(color: Colors.white),
                        shape: BoxShape.circle),
                    child: const Icon(
                      Icons.mic,
                      color: Colors.white,
                      size: 30,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          )
        ],
      ),
    );
  }
}
