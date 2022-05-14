import 'package:flutter/material.dart';
import '../Utils/decoration.dart';

class AuthScreen extends StatefulWidget {
 const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
 // const AuthScreen({Key? key}) : super(key: key);

  final _loginTextController = TextEditingController(text: 'admin'); // Внутри скобок предварительно заполненное значение для быстой авторизации
  final _passwordTextController = TextEditingController(text: 'admin'); // Внутри скобок предварительно заполненное значение для быстой авторизации
  String? errorText;

  void _auth (){
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == 'admin' && password == 'admin') {
      errorText = null;
      Navigator.pushNamed(context, '/consent_to_use');
    }
    else {
      errorText = 'Не верный логин или пароль.';
    }
    setState(() {});
  }

  @override


  Widget build(BuildContext context) {
    final errorText = this.errorText;
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width,
              minHeight: MediaQuery.of(context).size.height,
            ),// Ограничения в соответствии с разрешением экрана устройства
            child: IntrinsicHeight(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Expanded(child: SizedBox()),// Отступ по вертикали
                  SizedBox(
                      width: 165,
                      height: 105,
                      child: Image.asset ('assets/images/logo SibTov.png')),//Логотип "Сибирские товары"
                  const SizedBox(height: 35),// Отступ по вертикали
                  if (errorText != null) ... errorMessage(errorText),
                  SizedBox(width: 244, height: 40,
                    child: TextFormField(
                      controller: _loginTextController,
                      decoration: const InputDecoration(
                        enabledBorder: textFormFieldDecoration,
                        focusedBorder: textFormFieldDecoration,
                        filled: true,
                        fillColor: Color(0xffECEFF1),
                        labelText: 'Логин',
                      ),
                    ),
                  ),// Поле ввода Логина
                  const SizedBox(height: 40),// Отступ по вертикали
                  SizedBox(width: 244, height: 40,
                    child: TextFormField(
                      obscureText: true,
                      controller: _passwordTextController,
                      decoration: const InputDecoration(
                        enabledBorder: textFormFieldDecoration,
                        focusedBorder: textFormFieldDecoration,
                        filled: true,
                        fillColor: Color(0xffECEFF1),
                        labelText: 'Пароль',),
                    ),
                  ),// Поле ввода Пароля
                  const SizedBox(height: 40),// Отступ по вертикали
                  SizedBox(
                    width:154,
                    height:42,
                    child: ElevatedButton(
                      style: elevatedButtonDecoration,// Оформление кнопки
                      onPressed: _auth,// Действие по нажатию
                      // onPressed: (){Navigator.pushNamed(context, '/consent_to_use');},// Действие по нажатию
                      child: const Text('Войти',
                        style: TextStyle(
                          fontSize: 18,
                        ),// Стиль текста
                      ),// Текст внутри кнопки
                    ),
                  ),// Кнопка "Войти"
                  const Expanded(child: SizedBox()),// Отступ по вертикали
                  SizedBox(child: Image.asset ('assets/images/sibt_auth_background.png')),// Фоновый рисунок
                ],
              ),
            ),
          ),// Виджет для задания габаритов
        ),// Скроллинг страницы
      ),
    );
  }

  List<Widget> errorMessage(String errorText) {
    return [
                  SizedBox(
                    width: 244,
                    child: Text(
                      errorText,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 244,
                    child: Text('для демонстрации введите \n логин: admin, пароль: admin',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        // fontSize: 17,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                ];
  }
}
