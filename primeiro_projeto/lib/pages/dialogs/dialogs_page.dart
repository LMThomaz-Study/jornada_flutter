import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:primeiro_projeto/pages/dialogs/dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  static const routeName = '/dialogs';
  const DialogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (contextDialog) {
                    // return DialogCustom(contextDialog);
                    return DialogCustom(context);
                  },
                );
              },
              child: const Text('Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (contextDialog) {
                    return SimpleDialog(
                      title: const Text('Simple Dialog'),
                      contentPadding: const EdgeInsets.all(8.0),
                      children: [
                        const Text('Título'),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Fechar Dialog'),
                        )
                      ],
                    );
                  },
                );
              },
              child: const Text('SimpleDialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    if (Platform.isIOS) {
                      return CupertinoAlertDialog(
                        title: const Text('Alert Dialog'),
                        content: const SingleChildScrollView(
                          child: ListBody(
                            children: [
                              Text('Deseja realmente salvar?'),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {},
                            child: const Text('Cancelar'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('Confirmar'),
                          )
                        ],
                      );
                    } else {
                      return AlertDialog(
                        title: const Text('Alert Dialog'),
                        content: const SingleChildScrollView(
                          child: ListBody(
                            children: [
                              Text('Deseja realmente salvar?'),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {},
                            child: const Text('Cancelar'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('Confirmar'),
                          )
                        ],
                      );
                    }
                  },
                );
              },
              child: const Text('Alert Dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
                if (Platform.isIOS) {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return CupertinoTimerPicker(
                          onTimerDurationChanged: (_) {},
                        );
                      });
                } else {
                  final selectedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  print('The hour selected is $selectedTime');
                }
              },
              child: const Text('Time Picker'),
            ),
            ElevatedButton(
              onPressed: () async {
                final selectedDate = showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2028),
                );
                print('The date selected is $selectedDate');
              },
              child: const Text('Date Picker'),
            ),
          ],
        ),
      ),
    );
  }
}
