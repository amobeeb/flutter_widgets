import 'package:filter_list/filter_list.dart';
import 'package:flutter/material.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({Key key, this.allTextList, this.selectedUserList})
      : super(key: key);
  final List<User> allTextList;
  final List<User> selectedUserList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filter list Page"),
      ),
      body: SafeArea(
        child: FilterListWidget(
          listData: userList,
          selectedListData: selectedUserList,
          hideheaderText: true,
          onApplyButtonClick: (list) {
            Navigator.pop(context, list);
          },
          label: (item) {
            /// Used to print text on chip
            return item.name;
          },
          choiceChipBuilder: (context, item, isSelected) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  border: Border.all(
                color: isSelected ? Colors.blue[300] : Colors.grey[300],
              )),
              child: Text(item.name),
            );
          },
          validateSelectedItem: (list, val) {
            ///  identify if item is selected or not
            return list.contains(val);
          },
          onItemSearch: (list, text) {
            /// When text change in search text field then return list containing that text value
            ///
            ///Check if list has value which matchs to text
            if (list.any((element) =>
                element.name.toLowerCase().contains(text.toLowerCase()))) {
              /// return list which contains matches
              return list
                  .where((element) =>
                      element.name.toLowerCase().contains(text.toLowerCase()))
                  .toList();
            }
            return null;
          },
        ),
      ),
    );
  }
}

class User {
  final String name;
  final String avatar;
  User({this.name, this.avatar});
}

/// Creating a global list for example purpose.
/// Generally it should be within data class or whereever you want
List<User> userList = [
  User(name: "Jon", avatar: "asd"),
  User(name: "Lindsey ", avatar: "asd"),
  User(name: "Valarie ", avatar: "asd"),
  User(name: "Elyse ", avatar: "asd"),
  User(name: "Ethel ", avatar: "asd"),
  User(name: "Emelyan ", avatar: "asd"),
  User(name: "Catherine ", avatar: "asd"),
  User(name: "Stepanida  ", avatar: "asd"),
  User(name: "Carolina ", avatar: "asd"),
  User(name: "Nail  ", avatar: "asd"),
];