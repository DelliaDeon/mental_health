import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text('S E T T I N G S'),
      ),
      body: Column(
        children: [
          // general settings
          DropdownMenu(
            leadingIcon: Icon(Icons.settings),
            label: Text('General'),
            helperText: 'Search for general settings',
            enableFilter: true,
            enableSearch: true,
            dropdownMenuEntries: <DropdownMenuEntry<String>>[
              DropdownMenuEntry(value: 'Language', label: "Language & Region"),
              DropdownMenuEntry(value: 'Appearance', label: "Appearance"),
              DropdownMenuEntry(value: 'Date', label: "Date & Time"),
              DropdownMenuEntry(value: 'Shortcuts', label: "Keyboard Shortcuts"),
            ],
            onSelected: (text){
              if (text != null){
                setState(() {
                  _selectedValue = text;
                });
              }
            },
          ),


          // account

          // plans and upgrades

          // privacy

          // notification

          // accessibility
        ],
      ),
    );
  }
}
