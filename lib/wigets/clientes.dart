import 'package:flutter/material.dart';

void main() {
  runApp(ClientForm());
}

class ClientForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Formulario Clientes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ClientFormScreen(),
    );
  }
}

class ClientFormScreen extends StatefulWidget {
  @override
  _ClientFormScreenState createState() => _ClientFormScreenState();
}

class _ClientFormScreenState extends State<ClientFormScreen> {
  String _name = '';
  String _email = '';
  String _gender = '';
  bool _subscribeToNewsletter = false;
  List<String> _selectedLanguages = [];

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Client Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty || !value.contains('@')) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),
              SizedBox(height: 20),
              Text('Gender'),
              Row(
                children: <Widget>[
                  Radio(
                    value: 'Male',
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value.toString();
                      });
                    },
                  ),
                  Text('Male'),
                  Radio(
                    value: 'Female',
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value.toString();
                      });
                    },
                  ),
                  Text('Female'),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: _subscribeToNewsletter,
                    onChanged: (value) {
                      setState(() {
                        _subscribeToNewsletter = value!;
                      });
                    },
                  ),
                  Text('Subscribe to Newsletter'),
                ],
              ),
              SizedBox(height: 20),
              Text('Select Languages'),
              DropdownButtonFormField(
                items: ['English', 'Spanish', 'French']
                    .map((language) => DropdownMenuItem(
                          value: language,
                          child: Text(language),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedLanguages.add(value.toString());
                  });
                },
                value: _selectedLanguages.isNotEmpty ? _selectedLanguages.last : null,
                validator: (value) {
                  if (_selectedLanguages.isEmpty) {
                    return 'Please select at least one language';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        // Save data to database or perform necessary actions
                        print('Name: $_name');
                        print('Email: $_email');
                        print('Gender: $_gender');
                        print('Subscribe to Newsletter: $_subscribeToNewsletter');
                        print('Languages: $_selectedLanguages');
                      }
                    },
                    child: Text('Save'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Exit'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}