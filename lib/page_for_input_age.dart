import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PageForInputAge extends StatelessWidget {
  const PageForInputAge({super.key});

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
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    LengthLimitingTextInputFormatter(2)
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () { 
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const PageForInputAge(), 
                    ),
                  );
                },
                child: const Text('Тут'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
