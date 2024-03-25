import 'package:flutter/material.dart';
import 'package:flutter_provider_example/provider/provider_page.dart';
import 'package:flutter_provider_example/provider/user_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (BuildContext _) {
        return UserModel(
          name: 'Leonardo Thomaz',
          avatar: 'https://github.com/LMThomaz.png',
          birthDate: '01/01/2001',
        );
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blueAccent,
          ),
          useMaterial3: true,
        ),
        routes: {
          ProviderPage.routerName: (_) => const ProviderPage(),
        },
        home: Builder(
          builder: (BuildContext context) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(ProviderPage.routerName);
                      },
                      child: const Text('Provider'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Change Notifier'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
