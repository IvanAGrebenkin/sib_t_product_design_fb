import 'package:flutter/material.dart';
import 'package:sib_t_product_design_fb/Utils/decoration.dart';

class ConsentToUse extends StatefulWidget {
  const ConsentToUse({Key? key}) : super(key: key);
  @override
  State<ConsentToUse> createState() => _ConsentToUseState();
}

class _ConsentToUseState extends State<ConsentToUse> {
  bool confirm = false;
  bool _isDisable = true;// Переменная активности второго списка
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: backgroundOfOthersScreen,// Задание фонового изображения
          child: Column(
            children: [
              const SizedBox(height: 200,),// Отступ по вертикали
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,// Расположение Checkbox перед описанием
                value: confirm,
                onChanged: (value) {setState(() {
                  confirm = !confirm;
                  if(confirm==false){_isDisable = true;}
                  else{_isDisable = false;}
                  });
                },
                title: const Text('Я принимаю условия данного соглашения'),// Текст описания
              ),// CheckBox с описанием
              const SizedBox(height: 30,),// Отступ по вертикали
              SizedBox(
                width:154,
                height:42,
                child: ElevatedButton(
                  style: elevatedButtonDecoration,// Оформление кнопки
                  onPressed: _isDisable? null : (){Navigator.pushNamed(context, '/group_selection_screen');},// Действие по нажатию
                  child: const Text('Принять',
                    style: TextStyle(
                      fontSize: 18,
                    ),// Стиль текста
                  ),// Текст внутри кнопки
                ),
              ),// Активируемая/деактивируемая кнопка 'Поехали!'
            ],
          ),
        ),
      ),
    );
  }
}
