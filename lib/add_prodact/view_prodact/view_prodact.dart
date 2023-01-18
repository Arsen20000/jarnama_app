import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/custom_text_field.dart';

class ViewProdact extends StatelessWidget {
  ViewProdact({super.key});

  final _title = TextEditingController();
  final _description = TextEditingController();
  final _dateTime = TextEditingController();
  final _userName = TextEditingController();
  final _phoneNumber = TextEditingController();
  final _addres = TextEditingController();
  final _price = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Viev'),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
        children: [
          CustomTextField(
            hintText: 'Title',
            controller: _title,          
          ),
          CustomTextField(
            hintText: 'Description',
            controller: _description,
          ),
          CustomTextField(
            hintText: 'Date Time',
            controller: _dateTime,
            onTap: () {
              showCupertinoModalPopup(
                  context: context,
                  builder: (BuildContext builder) {
                    return Container(
                        height: MediaQuery.of(context).copyWith().size.height *
                            0.25,
                        color: Colors.white,
                        child:CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        onDateTimeChanged:(value) {
                          _dateTime.text = value.toString();
                        },
                        initialDateTime:DateTime.now(),
                        minimumYear:2000,
                        maximumYear:2023, 
                     ) 
                     );
                  });
            },
          ),
          CustomTextField(
            hintText: 'User nema',
            controller: _userName,
            onTap: () {},
          ),
          CustomTextField(
            hintText: 'PhoneNomber',
            controller: _phoneNumber,
            onTap: () {},
          ),
          CustomTextField(
            hintText: 'Addres',
            controller: _addres,
            onTap: () {},
          ),
          CustomTextField(
            hintText: 'Price',
            controller: _price,
            onTap: () {},
          ),
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.publish),
              label: const Text(' add on firestore'))
        ],
      ),
    );
  }
}



