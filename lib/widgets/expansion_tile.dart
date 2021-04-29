import 'package:flutter/material.dart';
/**
 * Expansion Tile is used to achieve collapsible List Tile
 */
class ExpansionTileWidget extends StatelessWidget {
  const ExpansionTileWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpansionTile(
                backgroundColor: Colors.amber,
                title: Text('Hello World'),
                children: [
                  Text('Hello Africa')
                ],
              ),
            );
          }
          ),
      )
    );
  }
}