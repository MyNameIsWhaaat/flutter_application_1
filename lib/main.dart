import 'package:flutter/material.dart';
import 'page_for_input_name.dart';
import 'g.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Main(),
        '/g.dart': (context) => NameInputWidget(),
      },
    );
  }
}

// class Main extends StatelessWidget {
//   const Main({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Лист, но не кленовый'),
//         ),
//         body: Column(
//           children: [
//             const Expanded(
//               child: MyList(),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // Добавьте код для перехода на следующую страницу
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) =>
//                         PageForInputName(), // Замените NextPage на вашу следующую страницу
//                   ),
//                 );
//               },
//               child: const Text('Перейти на следующую страницу'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Expanded(
                child: MyList(),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          NameInputWidget(),
                    ),
                  );
                },
                child: const Text('Перейти на следующую страницу'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  const MyList({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Число элементов в списке
      itemBuilder: (context, index) {
        // Возвращаем ListTile для каждого элемента в списке
        return index.isOdd // Проверяем, является ли индекс нечетным
            ? ListTile(
                title: Text('Элементик $index',
                    style: const TextStyle(
                        color: Color.fromARGB(
                            255, 211, 211, 211))), // Текст элемента
                leading: const Icon(Icons.check_box_outline_blank,
                    color: Color.fromARGB(255, 213, 213, 213)), // Иконка
                onTap: () {},
              )
            : ListTile(
                title: Text('Элементик $index'), // Текст элемента
                leading: const Icon(Icons.check_box), // Иконка
                onTap: () {},
              );
      },
    );
  }
}
