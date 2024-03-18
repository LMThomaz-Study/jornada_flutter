import 'package:flutter/material.dart';

class MaterialBannerPage extends StatelessWidget {
  static const routeName = '/materialBanner';

  const MaterialBannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Banner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final materialBanner = MaterialBanner(
                  content: const Text(
                    'Usuário salvo com sucesso',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  forceActionsBelow: true,
                  backgroundColor: Colors.greenAccent,
                  actions: [
                    TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .hideCurrentMaterialBanner();
                        },
                        child: const Text('Cancelar'))
                  ],
                );
                ScaffoldMessenger.of(context)
                    .showMaterialBanner(materialBanner);
              },
              child: const Text('Simple Material Banner'),
            ),
          ],
        ),
      ),
    );
  }
}
