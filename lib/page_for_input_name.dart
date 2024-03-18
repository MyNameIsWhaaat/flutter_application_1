import 'package:flutter/material.dart';
import 'page_for_input_age.dart';

class PageForInputName extends StatelessWidget {
  const PageForInputName({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Введите ваше имя',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Добавьте код для перехода на следующую страницу
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const PageForInputAge(), // Замените NextPage на вашу следующую страницу
                    ),
                  );
                },
                child: const Text('Войти'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
