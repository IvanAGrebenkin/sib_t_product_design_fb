import 'package:flutter/material.dart';
import 'package:sib_t_product_design/Screens/PanScreens/pan_drawing_selection_screen.dart';
import 'package:sib_t_product_design/Screens/PanScreens/pan_lists.dart';
import '../../Utils/decoration.dart';
import '../../Utils/widgets.dart';

class PanSelection extends StatefulWidget {
  const PanSelection({Key? key}) : super(key: key);
  @override
  State<PanSelection> createState() => _PanSelectionState();
}

class _PanSelectionState extends State<PanSelection> {
  get pageName => 'Кастрюли';

  // Переменне
  bool _isDisable=true;// Переменная активности второго списка
  bool isVisible = false;// Переменная видимости кнопки
  bool ignoreNameList = true;// Переменная для выключения списка наименования изделия
  List <String> namesList = <String>['...'];// Переменная для определения необходимого списка с наименованиями изделий
  String groupValue = '...';// Переменная для хранения выбранного значения в списке группы изделий
  String productNameValue = '...';// Переменная для хранения выбранного значения в списке наименования изделия

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: nextPageAppBar(context, pageName),
        drawer: navDrawer(context),
        body: Container(
          decoration: backgroundOfOthersScreen,// Задание фонового изображения
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 50,),
                  const Text('Группа изделий:'),
                  DropdownButton(
                    value: groupValue,
                    items: groupsList.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );}).toList(),
                    onChanged: (String? newValue){ setState(() {
                      groupValue = newValue!;
                      if (newValue == '...') {productNameValue = '...'; _isDisable = true; isVisible=false;}
                      else if (newValue == 'Кастрюли'){namesList=pans;productNameValue = '...'; _isDisable = false;isVisible=false;}
                      else if (newValue == 'Чайники'){namesList=teapots;productNameValue = '...'; _isDisable = false;isVisible=false;}
                      else if (newValue == 'Хозяйственные изделия'){namesList=householdProducts;productNameValue = '...'; _isDisable = false;isVisible=false;}
                      else if (newValue == 'Плоские изделия'){namesList=flatProducts;productNameValue = '...'; _isDisable = false;isVisible=false;}
                      // else { ignore=false;}
                    });},
                  ),
                  const SizedBox(height: 50,),
                  const Text('Наименование изделия:'),
                  DropdownButton(
                    value: productNameValue,
                    items: namesList.map<DropdownMenuItem<String>>((String value) {return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );}).toList(),
                    onChanged: _isDisable? null : (String? newValue1){
                      setState(() {
                        productNameValue = newValue1!;
                        if (productNameValue == '...') {isVisible = false;}
                        else {isVisible = true;}
                      });
                    },
                  ),
                  const SizedBox(height: 50,),
                  Text('Группа изделий: "$groupValue",',
                    textAlign: TextAlign.start,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Text('Наименование изделия: "$productNameValue"',
                      textAlign: TextAlign.center,),
                  ),
                  const SizedBox(height: 50,),
                  Visibility(
                    visible: isVisible,
                    child: SizedBox(width:250, height:55,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            PassArgumentsScreen.routeName,
                            arguments: PassedArguments(
                              groupValue,
                              productNameValue,
                            ),
                          );
                        },
                        child: const Text('Появляющаяся кнопка',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            inherit: false,
                            fontSize:16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          // primary: Colors.lightGreen,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                        ),
                      ),
                    ),
                  ),// Появляющаяся кнопка
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
