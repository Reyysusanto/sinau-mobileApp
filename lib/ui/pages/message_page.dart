import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mainn/shared/theme.dart';
import 'package:mainn/ui/widgets/message_view.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  String selectedButton = 'message';
  Widget displayListMessage = const SizedBox();
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    displayListMessage = viewMessage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundHomeColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        children: [
          const SizedBox(
            height: 18,
          ),
          Text(
            'Notification',
            style: blackTextStyle.copyWith(
              fontSize: 24,
              fontWeight: bold,
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          displayMessage(),
          const SizedBox(
            height: 16,
          ),
          displayListMessage,
        ],      
      ),
    );
  }

  Widget displayMessage(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          chooseMessage('message'),
          chooseMessage('notification'),
        ],
      ),
    );
  }

  Widget viewMessage(){
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: const Column(
        children: [
          MessageView(
            image: 'assets/avatar.png', 
            sender: 'Bert Pullman', 
            status: 'Online', 
            time: '04:32 pm', 
            contain: 'Congratulations on completing the first lesson, keep up the good work!',
          ),
          MessageView(
            image: 'assets/avatar.png', 
            sender: 'Daniel Lawson', 
            status: 'Online', 
            time: '04:32 pm', 
            contain: 'Your course has been updated, you can check the new course in your study course.',
          ),
          MessageView(
            image: 'assets/avatar.png', 
            sender: 'Nguyen Shane', 
            status: 'Offline', 
            time: '12:00 am', 
            contain: 'Congratulations, you have completed your registration! Let\' start your learning journey next.',
          ),
        ],
      ),
    );
  }

  Widget viewNotification(){
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: const Column(
        children: [
          notificationView(
            isTransaction: true, 
            contain: 'Successful purchase!', 
            time: 'Just now'
          ),
          notificationView(
            isTransaction: false, 
            contain: 'Congratulations on completing the ...', 
            time: 'Just now'
          ),
          notificationView(
            isTransaction: false, 
            contain: 'Your course has been updated, you ...', 
            time: 'Just now'
          ),
          notificationView(
            isTransaction: false, 
            contain: 'Congratulations, you have ...', 
            time: 'Just now'
          ),
        ],
      ),
    );
  }


  Widget chooseMessage(String text){
    bool isSelected = selectedButton == text;
    return Container(
      child: TextButton(
        onPressed: () {
          setState(() {
            selectedButton = text;
            if (text == 'message'){
              displayListMessage = viewMessage();
              
            } else if (text == 'notification'){
              displayListMessage = viewNotification();
            }
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            if(isSelected) condition()
          ],
        ),
      ),
    );
  }

  Widget condition(){
    return Container(
      width: 42,
      height: 2,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: blueColor,
      ),
    );
  }
}