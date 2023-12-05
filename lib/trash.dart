// Import necessary packages
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Validation'),
        ),
        body: MyForm(),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Controllers for text fields
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();
  final TextEditingController _panController = TextEditingController();
  final TextEditingController _aadhaarController = TextEditingController();
  final TextEditingController _advanceAmountController = TextEditingController();

  String? dropdownValue;
  String? district;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(
              hintText: 'Name*',
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
          ),
          // Other TextFormField widgets for Address, Pincode, PAN Number, AADHAAR Number, Advance Amount, and other widgets as in your original code

          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Form is valid, perform necessary actions
                // Access field values using controllers:
                String name = _nameController.text;
                String address = _addressController.text;
                String pincode = _pincodeController.text;
                String panNumber = _panController.text;
                String aadhaarNumber = _aadhaarController.text;
                String advanceAmount = _advanceAmountController.text;

                // Perform actions with validated data here
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the controllers when the widget is removed from the widget tree
    _nameController.dispose();
    _addressController.dispose();
    _pincodeController.dispose();
    _panController.dispose();
    _aadhaarController.dispose();
    _advanceAmountController.dispose();
    super.dispose();
  }
}
