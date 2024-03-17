import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  static const routeName = '/forms';

  const FormsPage({super.key});

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  // String text = '';
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final passwordEC = TextEditingController();
  String category = 'categoria1';

  @override
  void dispose() {
    nameEC.dispose();
    passwordEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulários'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                // TextField(
                //   onChanged: (String value) {
                //     setState(() {
                //       text = value;
                //     });
                //   },
                // ),
                TextFormField(
                  controller: nameEC,
                  maxLines: null,
                  decoration: InputDecoration(
                    labelText: 'Nome completo',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.redAccent,
                      ),
                    ),
                    labelStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.deepPurpleAccent,
                    ),
                    isDense: true,
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo não preenchido';
                    }
                    if (value.trim().split(' ').length < 2) {
                      return 'O nome precisa ser completo';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: passwordEC,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.redAccent,
                      ),
                    ),
                    labelStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.deepPurpleAccent,
                    ),
                    isDense: true,
                  ),
                  obscureText: true,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo não preenchido';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField<String>(
                  value: category,
                  elevation: 2,
                  isDense: true,
                  icon: const Icon(Icons.arrow_drop_down),
                  decoration: InputDecoration(
                    labelText: 'Categoria',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Categoria não preenchida';
                    }
                    return null;
                  },
                  items: const [
                    DropdownMenuItem(
                      value: 'categoria1',
                      child: Text('Categoria 1'),
                    ),
                    DropdownMenuItem(
                      value: 'categoria2',
                      child: Text('Categoria 2'),
                    ),
                    DropdownMenuItem(
                      value: 'categoria3',
                      child: Text('Categoria 3'),
                    ),
                    DropdownMenuItem(
                      value: 'categoria4',
                      child: Text('Categoria 4'),
                    ),
                  ],
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() {
                        category = newValue;
                      });
                    }
                  },
                ),

                const SizedBox(height: 24),

                ElevatedButton(
                  onPressed: () {
                    var formValid = formKey.currentState?.validate() ?? false;
                    String message = 'Formulário inválido';

                    if (formValid) {
                      message = 'Formulário válido (Name: ${nameEC.text})';
                    }

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(message)),
                    );
                  },
                  child: const Text('Salvar'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
