import 'package:flutter/material.dart';
import '../data/formdata.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

// class ListItem {
//   int value;
//   String name;

//   ListItem(this.value, this.name);
// }

class _MainPageState extends State<MainPage> {
  GlobalKey<FormState> _key = GlobalKey<FormState>();
  // ListItem dropDown1;
  // ListItem dropDown2;
  // String farmSize, manPower, machinery;
  List<ListItem> _dropdownItems1 = [
    ListItem(1, "Soil Type 1"),
    ListItem(2, "Soil Type 2"),
    ListItem(3, "Soil Type 3"),
    ListItem(4, "Soil Type 4")
  ];

  List<ListItem> _dropdownItems2 = [
    ListItem(1, "Soil Type 1"),
    ListItem(2, "Soil Type 2"),
    ListItem(3, "Soil Type 3"),
    ListItem(4, "Soil Type 4")
  ];

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems1;
  List<DropdownMenuItem<ListItem>> _dropdownMenuItems2;
  ListItem _selectedItem1;
  ListItem _selectedItem2;

  void initState() {
    super.initState();
    _dropdownMenuItems1 = buildDropDownMenuItems(_dropdownItems1);
    _selectedItem1 = _dropdownMenuItems1[0].value;
    _dropdownMenuItems2 = buildDropDownMenuItems(_dropdownItems2);
    _selectedItem2 = _dropdownMenuItems2[0].value;
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown Button"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: _key,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(7.0),
                  child: DropdownButton<ListItem>(
                    value: _selectedItem1,
                    items: _dropdownMenuItems1,
                    onChanged: (val) {
                      setState(() {
                        _selectedItem1 = val;
                        // Saved value of first drop down in dropDown1 variable
                        dropDown1 = val;
                        print(dropDown1.name);
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(7.0),
                  child: DropdownButton<ListItem>(
                    value: _selectedItem2,
                    items: _dropdownMenuItems2,
                    onChanged: (val) {
                      setState(() {
                        _selectedItem2 = val;
                        // Saved value of second drop down in dropDown2 variable
                        dropDown2 = val;
                        print(dropDown2.name);
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(7.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Farm Size",
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                    ),
                    validator: (val) {
                      if (val.isEmpty) {
                        return "This field is mandatory";
                      }
                    },
                    onChanged: (value) {
                      setState(() {
                        farmSize = value;
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(7.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Man Power",
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        manPower = value;
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(7.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Machinery",
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        machinery = value;
                      });
                    },
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                MaterialButton(
                  color: Colors.blue,
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    validator();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  validator() {
    if (_key.currentState.validate()) {
      _key.currentState.save();
      print(dropDown1.name);
      print(dropDown2.name);
      print(farmSize);
      print(manPower);
      print(machinery);
    }
  }
}
