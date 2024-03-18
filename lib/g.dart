import 'package:flutter/material.dart';

class NameInputWidget extends StatefulWidget {
  const NameInputWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NameInputWidgetState createState() => _NameInputWidgetState();
}

class _NameInputWidgetState extends State<NameInputWidget> {
  late TextEditingController _nameController;
  late String _enteredName;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _enteredName = '';
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: _nameController,
          decoration: const InputDecoration(
            labelText: 'Введите ваше имя',
          ),
          onChanged: (value) {
            setState(() {
              _enteredName = value;
            });
          },
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Здесь вы можете использовать _enteredName для сохранения или обработки введённого имени
            print('Введённое имя: $_enteredName');
          },
          child: Text('Сохранить имя'),
        ),
      ],
    );
  }
}