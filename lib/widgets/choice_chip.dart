import 'package:flutter/material.dart';

class ChoiceChipWidget extends StatefulWidget {
  @override
  _ChoiceChipWidgetState createState() => _ChoiceChipWidgetState();
}

class _ChoiceChipWidgetState extends State<ChoiceChipWidget> {
  List badStudent = ['Olayinka', 'Idowu'];
  int _value = 1;
  List selectedChoice = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
              child: Center(
                child: Wrap(
          children: List.generate(
           badStudent.length, (int index) =>  
                 ChoiceChip(
                   label: Text(badStudent[index]),
                   selected: selectedChoice.contains(index),
                   onSelected: (bool selected){
                     setState(() {
                      //  _value = selected ? index :null;
                      selectedChoice.contains(index) ? selectedChoice.remove(index) : selectedChoice.add(index);
                     });
                   },
                  )
             
            ),
        ),
              ),
      ),
    );
  }
}