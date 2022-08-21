import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  String selectBankType = 'Bkash';
  List<String> dropdownList = [
    'Select Bank',
    'Bkash',
    'Nagad',
    'Rocket',
    'Bank',
    'Cash',
  ];

  Map<String, bool> values = {
    'Apple': false,
    'Banana': false,
    'Cherry': false,
    'Mango': false,
    'Orange': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade100,
      body: SafeArea(
        child: Column(

          children: [

            Center(
              child: DropdownButton(
                dropdownColor: Colors.pink.shade200,
                // Initial Value
                value: selectBankType,
                icon: const Icon(Icons.keyboard_arrow_down),
                underline: const Text(""),
                // Array list of items
                items: dropdownList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items, style: TextStyle(color: Colors.black),),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    selectBankType = newValue!;
                    // if(selectBankType == 'Cash')
                  });
                  // selectBankType = newValue!;
                },
              ),
            ),


            if(selectBankType == 'Cash')Expanded(
              child: ListView(
                children: values.keys.map((String key) {
                  return CheckboxListTile(
                    title:Text(key),
                    value: values[key],
                    activeColor: Colors.pink,
                    checkColor: Colors.white,
                    onChanged: (value) {
                      setState(() {
                        values[key] = value!;
                      });
                    },
                  );
                }).toList(),
              ),
            ),
        


          ],

        ),
      ),
    );
  }
}
