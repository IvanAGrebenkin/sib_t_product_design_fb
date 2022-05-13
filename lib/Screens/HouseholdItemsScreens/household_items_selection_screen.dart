import 'package:flutter/material.dart';
import '../../Utils/decoration.dart';
import '../../Utils/widgets.dart';
import 'package:sib_t_product_design_fb/Screens/HouseholdItemsScreens/household_items_lists.dart';
import 'household_items_drawing_selection_screen.dart';

class HouseholdItemsSelection extends StatefulWidget {
  const HouseholdItemsSelection({Key? key}) : super(key: key);
  @override
  State<HouseholdItemsSelection> createState() => _HouseholdItemsSelectionState();
}

class _HouseholdItemsSelectionState extends State<HouseholdItemsSelection> {
  get pageName => 'Хозяйственные\n изделия';

  // Переменне
  bool _isSecondListVisible=false;// Переменная активности второго списка

  // bool _isThirdListDisable=true;// Переменная активности третьего списка
  bool _isThirdListVisible=false;// Переменная активности третьего списка

  bool _isButtonVisible = false;// Переменная видимости кнопки
  List <String> secondList = <String>['...'];// Переменная для определения необходимого второго
  List <String> thirdList = <String>['...'];// Переменная для определения необходимого третьего
  String firstListValue = '...';// Переменная для хранения выбранного значения в списке группы изделий
  String secondListValue = '...';// Переменная для хранения выбранного значения в списке формы корпуса
  String thirdListValue = '...';// Переменная для хранения выбранного значения в списке вместимости изделия
  String householdItemsArt = '';// Переменная для хранения артикула выбранного изделия
  String householdItemsName = '';// Переменная для хранения полного наименования выбранного изделия

  String secondListHeader = '';// Переменная заголовка второго спска
  String thirdListHeader = '';// Переменная заголовка третьего спска

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
                  const Text('Выберите тип изделия:'),
                  DropdownButton(
                    value: firstListValue,
                    items: firstList.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,
                          style: const TextStyle(
                            fontSize: 18,
                          ),),
                      );}).toList(),
                    onChanged: (String? newValue){ setState(() {
                      firstListValue = newValue!;
                      if (newValue == '...') {
                        secondListValue = '...';
                        thirdListValue = '...';
                        _isSecondListVisible = false;
                        _isThirdListVisible=false;
                        _isButtonVisible = false;
                        secondListHeader='';
                        thirdListHeader = '';
                      }
                      else if (newValue == 'Бак'){
                        secondList=secondListForTanks;
                        firstListWorkWithTypeAndSize();
                        secondListHeader='Выберите вместимость';
                      }
                      else if (newValue == 'Ведро'){
                        secondList=secondListForBuckets;
                        firstListWorkWithTypeAndSize();
                        secondListHeader='Выберите форму корпуса';
                      }
                      else if (newValue == 'Ковш'){
                        secondList=secondListForLadles;
                        firstListWorkWithTypeAndSize();
                        secondListHeader='Выберите форму корпуса';
                      }
                      else if (newValue == 'Кружка'){
                        secondList=secondListForMugs;
                        firstListWorkWithTypeAndSize();
                        secondListHeader='Выберите вместимость';
                      }
                      else if (newValue == 'Дуршлаг'){
                        firstListWorkOnlyType();
                      }
                      else if (newValue == 'Бидон'){
                        firstListWorkOnlyType();
                      }
                      else if (newValue == 'Горшок ночной'){
                        firstListWorkOnlyType();
                      }
                    });},
                  ),// Список выбора типа кастрюли
                  const SizedBox(height: 50,),
                  Text(secondListHeader),
                  Visibility(
                    visible: _isSecondListVisible,
                    child: DropdownButton(
                      value: secondListValue,
                      items: secondList.map<DropdownMenuItem<String>>((String value) {return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,
                          style: const TextStyle(
                            fontSize: 18,
                          ),),
                      );}).toList(),
                        onChanged: (String? newValue1){
                        setState(() {
                          secondListValue = newValue1!;
                          if (secondListValue == '...') {
                            thirdListValue = '...';
                            _isButtonVisible = false;
                            _isThirdListVisible=false;
                          }
                          else if (firstListValue == 'Бак' && secondListValue == '20,0 л'){
                            secondListWorkWithTypeAndSize();
                          }
                          else if (firstListValue == 'Бак' && secondListValue == '32,0 л'){
                            secondListWorkWithTypeAndSize();
                          }
                          else if (firstListValue == 'Бак' && secondListValue == '40,0 л'){
                            secondListWorkWithTypeAndSize();
                          }
                          else if (firstListValue == 'Ведро' && secondListValue == 'Сварное'){
                            secondListWorkWithTypeAndSize();
                          }
                          else if (firstListValue == 'Ведро' && secondListValue == 'Цельнотянутое'){
                            thirdList=thirdListForStampedBucket;
                            secondListWorkWithTypeShapeAndSize();
                          }
                          else if (firstListValue == 'Ковш' && secondListValue == 'без крышки'){
                            thirdList=thirdListForLadles;
                            secondListWorkWithTypeShapeAndSize();
                          }
                          else if (firstListValue == 'Ковш' && secondListValue == 'с крышкой'){
                            thirdList=thirdListForLadles;
                            secondListWorkWithTypeShapeAndSize();
                          }
                          else if (firstListValue == 'Кружка' && secondListValue == '0,25 л'){
                            secondListWorkWithTypeAndSize();
                          }
                          else if (firstListValue == 'Кружка' && secondListValue == '0,4 л'){
                            secondListWorkWithTypeAndSize();
                          }
                          else if (firstListValue == 'Кружка' && secondListValue == '1,0 л'){
                            secondListWorkWithTypeAndSize();
                          }
                        });
                      },
                    ),
                  ),// Список выбора формы корпуса
                  const SizedBox(height: 50,),
                  Text(thirdListHeader),
                  Visibility(
                    visible: _isThirdListVisible,
                    child: DropdownButton(
                      value: thirdListValue,
                      items: thirdList.map<DropdownMenuItem<String>>((String value) {return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,
                          style: const TextStyle(
                            fontSize: 18,
                          ),),
                      );}).toList(),
                      onChanged: (String? newValue2){
                        setState(() {
                          thirdListValue = newValue2!;
                          if (thirdListValue == '...') {_isButtonVisible = false;}
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
                          if (firstListValue == 'Бак' && secondListValue == '20,0 л') {householdItemsArt= '2827';householdItemsName=art2827;}
                          else if (firstListValue == 'Бак' && secondListValue == '32,0 л') {householdItemsArt= '2829';householdItemsName=art2829;}
                          else if (firstListValue == 'Бак' && secondListValue == '40,0 л') {householdItemsArt= '2833';householdItemsName=art2833;}
                          else if (firstListValue == 'Бак' && secondListValue == '40,0 л') {householdItemsArt= '2833';householdItemsName=art2833;}
                          else if (firstListValue == 'Ведро' && secondListValue == 'Сварное') {householdItemsArt= '1224';householdItemsName=art1224;}
                          else if (firstListValue == 'Ведро' && secondListValue == 'Цельнотянутое'&& thirdListValue == '9,0 л') {householdItemsArt= '1222.Ц';householdItemsName=art1222C;}
                          else if (firstListValue == 'Ведро' && secondListValue == 'Цельнотянутое'&& thirdListValue == '12,0 л') {householdItemsArt= '1224.Ц';householdItemsName=art1224C;}
                          else if (firstListValue == 'Ковш' && secondListValue == 'без крышки'&& thirdListValue == '1,5 л') {householdItemsArt= '2008';householdItemsName=art2008;}
                          else if (firstListValue == 'Ковш' && secondListValue == 'без крышки'&& thirdListValue == '2,0 л') {householdItemsArt= '2011';householdItemsName=art2011;}
                          else if (firstListValue == 'Ковш' && secondListValue == 'с крышкой'&& thirdListValue == '1,5 л') {householdItemsArt= '2108';householdItemsName=art2108;}
                          else if (firstListValue == 'Ковш' && secondListValue == 'с крышкой'&& thirdListValue == '2,0 л') {householdItemsArt= '2111';householdItemsName=art2111;}
                          else if (firstListValue == 'Кружка' && secondListValue == '0,25 л') {householdItemsArt= '0102';householdItemsName=art0102;}
                          else if (firstListValue == 'Кружка' && secondListValue == '0,4 л') {householdItemsArt= '0103';householdItemsName=art0103;}
                          else if (firstListValue == 'Кружка' && secondListValue == '1,0 л') {householdItemsArt= '0207';householdItemsName=art0207;}
                          else if (firstListValue == 'Дуршлаг') {householdItemsArt= '1406';householdItemsName=art1406;}
                          else if (firstListValue == 'Бидон') {householdItemsArt= '0612';householdItemsName=art0612;}
                          else if (firstListValue == 'Горшок ночной') {householdItemsArt= '0908';householdItemsName=art0908;}
                          Navigator.pushNamed(context, HouseholdItemsDrawingSelectionScreen.routeName, arguments: PassedFromHouseholdItemsSelectionScreenArguments(
                            firstListValue,
                            secondListValue,
                            thirdListValue,
                            householdItemsArt,
                            householdItemsName,
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
          ),
        ),
      ),
    );
  }

  void secondListWorkWithTypeShapeAndSize() {
    _isButtonVisible = false;
    thirdListValue = '...';
    _isThirdListVisible=true;
    thirdListHeader = 'Выберите вместимость';
  }

  void secondListWorkWithTypeAndSize() {
    _isButtonVisible = true;
    thirdListValue = '...';
    _isThirdListVisible=false;
    thirdListHeader = '';
  }

  void firstListWorkWithTypeAndSize() {
    _isButtonVisible=false;
    secondListValue = '...';
    thirdListValue = '...';
    _isSecondListVisible = true;
    _isThirdListVisible=false;
    thirdListHeader = '';
  }

  void firstListWorkOnlyType() {
    _isButtonVisible=true;
    secondListValue = '...';
    thirdListValue = '...';
    _isSecondListVisible = false;
    _isThirdListVisible=false;
    secondListHeader='';
    thirdListHeader = '';
  }
}
