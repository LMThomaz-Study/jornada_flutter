import 'dart:math';

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_default_state_manager/widgets/imc_gauge.dart';
import 'package:intl/intl.dart';

//   o valueNotifier diferentemente do setState que faz a reconstrução de todo o Widget,
//ele faz a reconstrução apenas de onde ele está sendo utilizado

class ImcValueNotifierPage extends StatefulWidget {
  const ImcValueNotifierPage({super.key});

  @override
  State<ImcValueNotifierPage> createState() => _ImcValueNotifierPageState();
}

class _ImcValueNotifierPageState extends State<ImcValueNotifierPage> {
  final formKey = GlobalKey<FormState>();
  final pesoEC = TextEditingController();
  final alturaEC = TextEditingController();

  ValueNotifier<double> imc = ValueNotifier(0.0);

  Future<void> _calcIMC({required double peso, required double altura}) async {
    imc.value = 0;

    await Future.delayed(const Duration(seconds: 1));

    imc.value = peso / pow(altura, 2);
  }

  @override
  void dispose() {
    pesoEC.dispose();
    alturaEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('IMC Value Notifier')),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ValueListenableBuilder<double>(
                  valueListenable: imc,
                  builder: (_, value, __) {
                    return ImcGauge(imc: value);
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: pesoEC,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Peso',
                  ),
                  inputFormatters: [
                    CurrencyTextInputFormatter(
                      locale: 'pt_BR',
                      symbol: '',
                      decimalDigits: 2,
                      turnOffGrouping: true,
                    ),
                  ],
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Peso obrigatório';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: alturaEC,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Altura',
                  ),
                  inputFormatters: [
                    CurrencyTextInputFormatter(
                      locale: 'pt_BR',
                      symbol: '',
                      decimalDigits: 2,
                      turnOffGrouping: true,
                    ),
                  ],
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Altura obrigatório';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    final formValid = formKey.currentState?.validate() ?? false;

                    if (formValid) {
                      final formatter = NumberFormat.simpleCurrency(
                        locale: 'pt_BR',
                        decimalDigits: 2,
                      );
                      double peso = formatter.parse(pesoEC.text) as double;
                      double altura = formatter.parse(alturaEC.text) as double;
                      _calcIMC(peso: peso, altura: altura);
                    }
                  },
                  child: const Text(
                    'Calcular IMC',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
