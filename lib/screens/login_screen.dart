import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  void _submitForm() async {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Login efetuado com sucesso!')),
      );

      await Future.delayed(const Duration(seconds: 1));

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/svg/logo.svg',
                width: 44,
                height: 44,
              ),
              const SizedBox(width: 8),
              Align(
                alignment: const Alignment(-1, 1),
                child: RichText(
                  text: const TextSpan(
                    text: 'Banking',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return ConstrainedBox(
                constraints:
                    BoxConstraints(maxWidth: constraints.maxWidth * 0.9),
                child: SingleChildScrollView(
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(8), // Define o borderRadius
                    child: Container(
                      color: Colors.white, // Define a cor de fundo do container
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment
                                .center, // Centraliza na vertical
                            children: <Widget>[
                              Center(
                                // Centraliza o conteúdo na horizontal
                                child: SvgPicture.asset(
                                  'assets/svg/logo.svg',
                                  width: 204,
                                  height: 110,
                                  color: Colors.orange,
                                ),
                              ),
                              const SizedBox(height: 32),
                              const Center(
                                child: Text(
                                  'Seja bem-vindo',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      labelText: 'E-mail'),
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value?.isEmpty ?? true) {
                                      return 'Por favor, insira um e-mail';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) => _email = value ?? '',
                                ),
                              ),
                              const SizedBox(height: 16),
                              TextFormField(
                                decoration:
                                    const InputDecoration(labelText: 'Senha'),
                                obscureText: true,
                                validator: (value) {
                                  if (value?.isEmpty ?? true) {
                                    return 'Por favor, insira uma senha';
                                  }
                                  return null;
                                },
                                onSaved: (value) => _password = value ?? '',
                              ),
                              const SizedBox(height: 32),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                child: ElevatedButton(
                                  onPressed: _submitForm,
                                  child: RichText(
                                    text: const TextSpan(
                                      text: 'Login',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
