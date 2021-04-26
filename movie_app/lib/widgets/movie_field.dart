import 'package:flutter/material.dart';

class MovieField extends StatelessWidget {
  
  const MovieField({Key key, this.field, this.value}) : super(key: key);
  
  final String field;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Text('$field : ', style: TextStyle(fontWeight: FontWeight.w300, color: Colors.black, fontSize: 14),),
       Expanded(child: Text(value, style: TextStyle(fontWeight: FontWeight.w300, color: Colors.black,fontSize: 14),))
     ],
    );
  }
}