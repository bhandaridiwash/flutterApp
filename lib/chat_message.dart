import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart'; // Add this line to import the library that defines 'subtitle1' getter

const String _name = "SnowDiwash";

class ChatMessage extends StatelessWidget {
  final String text;
  ChatMessage({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        // give width portion to each child
        crossAxisAlignment: CrossAxisAlignment.start, //starts from top
        children: <Widget>[
          //
          Container(
            //container for avatar
            margin: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(child: Text(_name[0])),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(_name, style: Theme.of(context).textTheme.titleMedium),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: Text(text),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
