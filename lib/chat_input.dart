import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  const ChatInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
            color: Colors.white,
          ),
          Expanded(child: TextField(decoration: InputDecoration(border: InputBorder.none))),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send),
            color: Colors.white,
          )
        ],
      ),
      height: 100,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
    );
  }
}
