import 'package:flutter/material.dart';
import 'package:sib_t_product_design_fb/Screens/PanScreens/pan_drawing_selection_screen.dart';
import 'package:sib_t_product_design_fb/Screens/PanScreens/pan_lists.dart';
import '../../Utils/decoration.dart';
import '../../Utils/widgets.dart';

class PanSelection extends StatefulWidget {
  const PanSelection({Key? key}) : super(key: key);
  @override
  State<PanSelection> createState() => _PanSelectionState();
}

class _PanSelectionState extends State<PanSelection> {
  get pageName => 'Кастрюли';// Заголовок в AppBar

  // Переменне

  bool _isPanShapeVisible=false;// Переменная активности списка формы изделия


  bool _isPanSizeVisible=false;// Переменная активности списка формы изделия

  bool _isButtonVisible = false;// Переменная видимости кнопки
  List <String> panShapeList = <String>['...'];// Переменная для определения необходимого списка формы корпуса
  List <String> panSizeList = <String>['...'];// Переменная для определения необходимого списка вместимости изделия
  String panTypeValue = '...';// Переменная для хранения выбранного значения в списке группы изделий
  String panShapeValue = '...';// Переменная для хранения выбранного значения в списке формы корпуса
  String panSizeValue = '...';// Переменная для хранения выбранного значения в списке вместимости изделия
  String art = '';// Переменная для хранения артикула выбранного изделия
  String panName = '';// Переменная для хранения полного наименования выбранного изделия


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: nextPageAppBar(context, pageName),
        drawer: navDrawer(context),
        body: Container(
          decoration: backgroundOfOthersScreen,// Задание фонового изображения
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width,
              minHeight: MediaQuery.of(context).size.height,
            ),// Ограничения в соответствии с разрешением экрана устройства
            child: IntrinsicHeight(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(height: 50,),// Отступ по вертикали
                  const Text('Выберите тип кастрюли:',
                  style: TextStyle(
                    // fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),),
                  DropdownButton(
                    value: panTypeValue,
                    items: listOfPanTypes.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value,
                                  style: const TextStyle(
                                    fontSize: 18,
                                  ),),
                              );}).toList(),

                    onChanged: (String? newValue){ setState(() {
                      panTypeValue = newValue!;
                      if (newValue == '...') {
                        panShapeValue = '...';
                        panSizeValue = '...';
                        _isPanShapeVisible=false;
                        _isPanSizeVisible=false;
                        _isButtonVisible = false;
                      }
                      else if (newValue == 'Кастрюля без ободка'){
                        panShapeList=typesOfPanWithoutRimShapesList;
                        workWithFirstDropButton();
                      }
                      else if (newValue == 'Кастрюля с ободком'){
                        panShapeList=typesOfPanWithRimShapesList;
                        workWithFirstDropButton();
                      }
                    });},
                  ),// Список выбора типа кастрюли
                  const SizedBox(height: 50,),
                  Visibility(
                      visible: _isPanShapeVisible,
                      child: const Text('Выберите форму корпуса:')),// Текст "Выберите форму корпуса:"
                  Visibility(
                    visible: _isPanShapeVisible,
                    child: DropdownButton(
                      value: panShapeValue,
                      items: panShapeList.map<DropdownMenuItem<String>>((String value) {return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,
                          style: const TextStyle(
                            fontSize: 18,
                          ),),
                      );}).toList(),
                      onChanged: (String? newValue1){
                        setState(() {
                          panShapeValue = newValue1!;
                          if (panShapeValue == '...') {
                            panSizeValue = '...';
                            _isPanSizeVisible=false;
                            _isButtonVisible = false;
                          }
                          else if (panTypeValue == 'Кастрюля с ободком' && panShapeValue == 'Цилиндрическая'){
                            panSizeList=panCylindricalWithRimSizeList;
                            workWithSecondDropButton();
                          }
                          else if (panTypeValue == 'Кастрюля с ободком' && panShapeValue == 'Сферическая'){
                            panSizeList=panSphericalWithRimSizeList;
                            workWithSecondDropButton();
                          }
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Цилиндрическая'){
                            panSizeList=panCylindricalWithoutRimSizeList;
                            workWithSecondDropButton();
                          }
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Сферическая'){
                            panSizeList=panSphericalWithoutRimSizeList;
                            workWithSecondDropButton();
                          }
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Грушевидная'){
                            panSizeList=panPearShapedWithoutRimSizeList;
                            workWithSecondDropButton();
                          }
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Позница'){
                            panSizeList=poznicaSizeList;
                            workWithSecondDropButton();
                          }
                        });
                      },
                    ),
                  ),// Список выбора формы корпуса
                  const SizedBox(height: 50,),
                  Visibility(
                      visible: _isPanSizeVisible,
                      child: const Text('Выберите вместимость:')),// Текст "Выберите вместимость:"
                  Visibility(
                    visible: _isPanSizeVisible,
                    child: DropdownButton(
                      value: panSizeValue,
                      items: panSizeList.map<DropdownMenuItem<String>>((String value) {return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,
                          style: const TextStyle(
                            fontSize: 18,
                          ),),
                      );}).toList(),
                      onChanged: (String? newValue2){
                        setState(() {
                          panSizeValue = newValue2!;
                          if (panSizeValue == '...') {_isButtonVisible = false;}
                          else {_isButtonVisible=true;}
                        });
                      },
                    ),
                  ),// Список выбора вместимости изделия
                  const SizedBox(height: 50,),
                  Visibility(
                    visible: _isButtonVisible,
                    child: SizedBox(width:250, height:55,
                      child: ElevatedButton(
                        onPressed: () {
                          if (panTypeValue == 'Кастрюля с ободком' && panShapeValue == 'Цилиндрическая' && panSizeValue == '2,0 л') {art= 'MD161'; panName=artMD161;}
                          else if (panTypeValue == 'Кастрюля с ободком' && panShapeValue == 'Цилиндрическая' && panSizeValue == '3,0 л') {art= 'MD181';panName=artMD181;}
                          else if (panTypeValue == 'Кастрюля с ободком' && panShapeValue == 'Цилиндрическая' && panSizeValue == '4,0 л') {art= 'MD201';panName=artMD201;}
                          else if (panTypeValue == 'Кастрюля с ободком' && panShapeValue == 'Цилиндрическая' && panSizeValue == '5,5 л') {art= 'MD221';panName=artMD221;}
                          else if (panTypeValue == 'Кастрюля с ободком' && panShapeValue == 'Сферическая' && panSizeValue == '2,0 л') {art= 'MC161';panName=artMC161;}
                          else if (panTypeValue == 'Кастрюля с ободком' && panShapeValue == 'Сферическая' && panSizeValue == '3,0 л') {art= 'MC181';panName=artMC181;}
                          else if (panTypeValue == 'Кастрюля с ободком' && panShapeValue == 'Сферическая' && panSizeValue == '4,0 л') {art= 'MC201';panName=artMC201;}
                          else if (panTypeValue == 'Кастрюля с ободком' && panShapeValue == 'Сферическая' && panSizeValue == '5,5 л') {art= 'MC221';panName=artMC221;}
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Цилиндрическая' && panSizeValue == '1,5 л') {art= '1607';panName=art1607;}
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Цилиндрическая' && panSizeValue == '2,0 л') {art= '1610';panName=art1610;}
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Цилиндрическая' && panSizeValue == '3,5 л') {art= '1612';panName=art1612;}
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Цилиндрическая' && panSizeValue == '5,5 л') {art= '1617';panName=art1617;}
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Цилиндрическая' && panSizeValue == '8,0 л') {art= '1620';panName=art1620;}
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Цилиндрическая' && panSizeValue == '9,0 л') {art= '1622';panName=art1622;}
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Цилиндрическая' && panSizeValue == '12,0 л') {art= '1624';panName=art1624;}
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Цилиндрическая' && panSizeValue == '14,0 л') {art= '1626';panName=art1626;}
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Сферическая' && panSizeValue == '4,0 л') {art= '1912';panName=art1912;}
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Сферическая' && panSizeValue == '5,5 л') {art= '1917';panName=art1917;}
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Сферическая' && panSizeValue == '8,0 л') {art= '1920';panName=art1920;}
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Грушевидная' && panSizeValue == '4,0 л') {art= '2512';panName=art2512;}
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Грушевидная' && panSizeValue == '5,5 л') {art= '2517';panName=art2517;}
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Грушевидная' && panSizeValue == '8,0 л') {art= '2520';panName=art2520;}
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Позница' && panSizeValue == '8,0 л (2 вставки)') {art= '1720';panName=art1720;}
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Позница' && panSizeValue == '9,0 л (3 вставки)') {art= '1722';panName=art1722;}
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Позница' && panSizeValue == '12,0 л (4 вставки)') {art= '1724';panName=art1724;}
                          Navigator.pushNamed(context, PanDrawingSelectionScreen.routeName, arguments: PassedFromPanSelectionScreenArguments(
                              panTypeValue,
                              panShapeValue,
                              panSizeValue,
                              art,
                              panName,
                            ),
                          );
                        },
                        child: const Text('Выбрать чертеж',
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
                  ),// Появляющаяся кнопка перехода на экран выбора чертежа
                  const Expanded(child: SizedBox(height: 50,)),// Отступ по вертикали
                ],
              ),
            ),
          ),// Скроллинг страницы
        ),
      ),
    );
  }


  void workWithFirstDropButton() {
    panShapeValue = '...';
    panSizeValue = '...';
    _isPanShapeVisible=true;
    _isPanSizeVisible=false;
    _isButtonVisible=false;
  }

  void workWithSecondDropButton() {
    panSizeValue = '...';
    _isPanSizeVisible=true;
    _isButtonVisible=false;
  }

}
