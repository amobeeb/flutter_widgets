import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/choice_chip.dart';
import 'package:flutter_widgets/widgets/expansion_tile.dart';
import 'package:flutter_widgets/widgets/filter_list.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
         TextButton(
           onPressed: (){
           Navigator.of(context).push(
             MaterialPageRoute(builder: (context){
               return ExpansionTileWidget();
             })
           );
         }, child: Text('Expansion Tile')),
          TextButton(
           onPressed: (){
           Navigator.of(context).push(
             MaterialPageRoute(builder: (context){
               return FilterPage();
             })
           );
         }, child: Text('Filter List')),
          TextButton(
           onPressed: (){
           Navigator.of(context).push(
             MaterialPageRoute(builder: (context){
               return ChoiceChipWidget();
             })
           );
         }, child: Text('Choice Chip'))
        ],
      ),
    );
  }
}