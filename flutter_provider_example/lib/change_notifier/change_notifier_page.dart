import 'package:flutter/material.dart';
import 'package:flutter_provider_example/change_notifier/provider_controller.dart';
import 'package:provider/provider.dart';

class ChangeNotifierPage extends StatefulWidget {
  static const routerName = '/change';

  const ChangeNotifierPage({super.key});

  @override
  State<ChangeNotifierPage> createState() => _ChangeNotifierPageState();
}

class _ChangeNotifierPageState extends State<ChangeNotifierPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Future.delayed(const Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      context.read<ProviderController>().alterarDados();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Notifier'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Selector<ProviderController, String>(
              selector: (_, controller) => controller.avatar,
              builder: (_, avatar, __) {
                return CircleAvatar(
                  backgroundImage: NetworkImage(avatar),
                  radius: 60,
                );
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Selector<ProviderController, String>(
                  selector: (_, controller) => controller.name,
                  builder: (_, name, __) {
                    return Text(name);
                  },
                ),
                Selector<ProviderController, String>(
                  selector: (_, controller) => controller.birthDate,
                  builder: (_, birthDate, __) {
                    return Text('($birthDate)');
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<ProviderController>().alterarNome();
              },
              child: const Text('Alterar nome'),
            )
          ],
        ),
      ),
    );
  }
}
