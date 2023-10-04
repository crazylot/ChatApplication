import 'package:chatapp/chat_input.dart';
import 'package:flutter/material.dart';


class chatpage extends StatelessWidget {
  const chatpage({super.key});

  Widget getChatBubble(alignment, text) {
    return Align(
      alignment: alignment,
      child: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(text, style: TextStyle(fontSize: 20, color: Colors.white)),
            Image.network(
              'https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              height: 150,
            )
          ],
        ),
        margin: EdgeInsets.all(50),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(12)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Hi Muskan"),
        actions: [
          IconButton(
              onPressed: () {
                print('Button Pressed');
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Flexible(
            child: 
              ListView.builder(itemCount:10,itemBuilder: (context,index){
                return getChatBubble(index%2==0 ? Alignment.centerLeft:Alignment.centerRight,'How it\'s going');
              })
          ),
          //input
          ChatInput()
        ],
      ),
    );
  }
}
