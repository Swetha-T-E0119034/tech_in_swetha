import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DropDownSensex extends StatefulWidget {
  @override
  _DDSState createState() => _DDSState();
}

class _DDSState extends State<DropDownSensex> {
  List<ListItem> _dropdownItems = [
    ListItem(1, "Technical"),
    ListItem(2, "Second Item"),
    ListItem(3, "Third Item"),
    ListItem(4, "Fourth Item")
  ];

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  ListItem _selectedItem;

  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _selectedItem = _dropdownMenuItems[0].value;
  }

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = List();
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding:
              const EdgeInsets.only(top: 4.0, bottom: 4.0, right: 16, left: 16),
          child: Container(
            height: 40,
            width: MediaQuery.of(context).copyWith().size.width,
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                border: Border.all(color: Colors.transparent, width: 0)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                  value: _selectedItem,
                  items: _dropdownMenuItems,
                  onChanged: (value) {
                    setState(() {
                      _selectedItem = value;
                    });
                  }),
            ),
          ),
        ),
      ],
    );
  }
}

class DropDownClassic extends StatefulWidget {
  @override
  _DDCState createState() => _DDCState();
}

class _DDCState extends State<DropDownClassic> {
  List<ListItem> _dropdownItems = [
    ListItem(1, "Classic"),
    ListItem(2, "Second Item"),
    ListItem(3, "Third Item"),
    ListItem(4, "Fourth Item")
  ];

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  ListItem _selectedItem;

  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _selectedItem = _dropdownMenuItems[0].value;
  }

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = List();
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding:
              const EdgeInsets.only(top: 4.0, bottom: 4.0, right: 16, left: 16),
          child: Container(
            height: 40,
            width: 152,
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                border: Border.all(color: Colors.transparent, width: 0)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                  value: _selectedItem,
                  items: _dropdownMenuItems,
                  onChanged: (value) {
                    setState(() {
                      _selectedItem = value;
                    });
                  }),
            ),
          ),
        ),
      ],
    );
  }
}

class DropDownExponential extends StatefulWidget {
  @override
  _DDEState createState() => _DDEState();
}

class _DDEState extends State<DropDownExponential> {
  List<ListItem> _dropdownItems = [
    ListItem(1, "Exponential"),
    ListItem(2, "Second Item"),
    ListItem(3, "Third Item"),
    ListItem(4, "Fourth Item")
  ];

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  ListItem _selectedItem;

  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _selectedItem = _dropdownMenuItems[0].value;
  }

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = List();
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding:
              const EdgeInsets.only(top: 4.0, bottom: 4.0, right: 16, left: 16),
          child: Container(
            height: 40,
            width: 152,
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                border: Border.all(color: Colors.transparent, width: 0)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                  value: _selectedItem,
                  items: _dropdownMenuItems,
                  onChanged: (value) {
                    setState(() {
                      _selectedItem = value;
                    });
                  }),
            ),
          ),
        ),
      ],
    );
  }
}

class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}
