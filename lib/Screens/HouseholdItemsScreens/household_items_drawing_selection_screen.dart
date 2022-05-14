import 'package:flutter/material.dart';
import '../../Utils/decoration.dart';
import '../../Utils/widgets.dart';
import 'household_items_drawing_view_screen.dart';
// import 'package:firebase_storage/firebase_storage.dart';


// Класс для объявления передаваемых аргумнтов
class PassedFromHouseholdItemsSelectionScreenArguments {
  final String householdItemsTypeValue;
  final String householdItemsShapeValue;
  final String householdItemsSizeValue;
  final String householdItemsArt;
  final String householdItemsName;

  PassedFromHouseholdItemsSelectionScreenArguments(
      this.householdItemsTypeValue,
      this.householdItemsShapeValue,
      this.householdItemsSizeValue,
      this.householdItemsArt,
      this.householdItemsName,);
}

class HouseholdItemsDrawings {
  final String householdItemsDrawingNumber;
  final String householdItemsDrawingName;
  final String currentHouseholdItemsDrawing;
  HouseholdItemsDrawings({
    required this.householdItemsDrawingNumber,
    required this.householdItemsDrawingName,
    required this.currentHouseholdItemsDrawing,
  });
}

class HouseholdItemsDrawingSelectionScreen extends StatefulWidget {
  const HouseholdItemsDrawingSelectionScreen({Key? key}) : super(key: key);
  static const routeName = '/household_items_drawing_selection_screen';
  @override
  State<HouseholdItemsDrawingSelectionScreen> createState() => _HouseholdItemsDrawingSelectionScreenState();
}

class _HouseholdItemsDrawingSelectionScreenState extends State<HouseholdItemsDrawingSelectionScreen> {
  get pageName => 'Выберите чертеж';
// Маршрут куда передаются аргументы
  @override
  Widget build(BuildContext context) {

    // Метод для доступа к класу, в котором объявлены передаваемые аргументы
    final argsFromHouseholdItemsSelectionScreen = ModalRoute.of(context)!.settings.arguments as PassedFromHouseholdItemsSelectionScreenArguments;

    final householdItemsDrawings2827 =[
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 35.01.СБ', householdItemsDrawingName: 'Корпус в сборе',currentHouseholdItemsDrawing: 'assets/drawings/household_items/2827/ПЭ 35.01.СБ Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 35.01.01', householdItemsDrawingName: 'Корпус',currentHouseholdItemsDrawing: 'assets/drawings/household_items/2827/ПЭ 35.01.01 Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 35.01.02.А', householdItemsDrawingName: 'Ручка бака',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 35.01.02.А Ручка баков.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 35.02.СБ', householdItemsDrawingName: 'Крышка с ручкой в сборе',currentHouseholdItemsDrawing: 'assets/drawings/lids/02827/ПЭ 35.02.СБ Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 35.02.01.А', householdItemsDrawingName: 'Крышка',currentHouseholdItemsDrawing: 'assets/drawings/lids/02827/ПЭ 35.02.01.А Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 07.02', householdItemsDrawingName: 'Ручка крышки',currentHouseholdItemsDrawing: 'ПЭ 07.02 Ручка.webp',),
    ];

    final householdItemsDrawings2829 =[
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 36.01.СБ', householdItemsDrawingName: 'Корпус в сборе',currentHouseholdItemsDrawing: 'assets/drawings/household_items/2829/ПЭ 36.01.СБ Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 36.01.01', householdItemsDrawingName: 'Корпус',currentHouseholdItemsDrawing: 'assets/drawings/household_items/2829/ПЭ 36.01.01 Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 35.01.02.А', householdItemsDrawingName: 'Ручка бака',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 35.01.02.А Ручка баков.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 36.02.СБ', householdItemsDrawingName: 'Крышка с ручкой в сборе',currentHouseholdItemsDrawing: 'assets/drawings/lids/02829/ПЭ 36.02.СБ Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 36.02.01.А', householdItemsDrawingName: 'Крышка',currentHouseholdItemsDrawing: 'assets/drawings/lids/02829/ПЭ 36.02.01.А Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 07.02', householdItemsDrawingName: 'Ручка крышки',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
    ];

    final householdItemsDrawings2833 =[
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 34.01.СБ', householdItemsDrawingName: 'Корпус в сборе',currentHouseholdItemsDrawing: 'assets/drawings/household_items/2833/ПЭ 34.01.СБ Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 34.01.01', householdItemsDrawingName: 'Корпус',currentHouseholdItemsDrawing: 'assets/drawings/household_items/2833/ПЭ 34.01.01 Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 35.01.02.А', householdItemsDrawingName: 'Ручка бака',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 35.01.02.А Ручка баков.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 36.02.СБ', householdItemsDrawingName: 'Крышка с ручкой в сборе',currentHouseholdItemsDrawing: 'assets/drawings/lids/02829/ПЭ 36.02.СБ Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 36.02.01.А', householdItemsDrawingName: 'Крышка',currentHouseholdItemsDrawing: 'assets/drawings/lids/02829/ПЭ 36.02.01.А Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 07.02', householdItemsDrawingName: 'Ручка крышки',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
    ];

    final householdItemsDrawings1224 =[
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 30.01.СБ', householdItemsDrawingName: 'Корпус в сборе',currentHouseholdItemsDrawing: 'assets/drawings/household_items/1224/ПЭ 30.01.СБ Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 30.01.02', householdItemsDrawingName: 'Корпус',currentHouseholdItemsDrawing: 'assets/drawings/household_items/1224/ПЭ 30.01.02 Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 30.01.01', householdItemsDrawingName: 'Дно',currentHouseholdItemsDrawing: 'assets/drawings/household_items/1224/ПЭ 30.01.01 Дно.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 30.01.03', householdItemsDrawingName: 'Ушко',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 30.01.03 Ушко ведра.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 30.03.СБ', householdItemsDrawingName: 'Дужка',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 30.03.СБ Дужка ведра.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 30.02.СБ', householdItemsDrawingName: 'Крышка с ручкой в сборе',currentHouseholdItemsDrawing: 'assets/drawings/lids/01124/ПЭ 30.02.СБ Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 30.02.01', householdItemsDrawingName: 'Крышка',currentHouseholdItemsDrawing: 'assets/drawings/lids/01124/ПЭ 30.02.01 Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 30.02.01', householdItemsDrawingName: 'Крышка (из кружка)',currentHouseholdItemsDrawing: 'assets/drawings/lids/01124/ПЭ 30.02.01 Крышка (из кружка).webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 07.02', householdItemsDrawingName: 'Ручка крышки',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
    ];

    final householdItemsDrawings1222C =[
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 102.01.СБ', householdItemsDrawingName: 'Корпус в сборе',currentHouseholdItemsDrawing: 'assets/drawings/household_items/1222C/ПЭ 102.01.СБ Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 16.01.01.А', householdItemsDrawingName: 'Корпус',currentHouseholdItemsDrawing: 'assets/drawings/pans/1622/ПЭ 16.01.01.А Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 30.01.03', householdItemsDrawingName: 'Ушко',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 30.01.03 Ушко ведра.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 30.03.А.СБ', householdItemsDrawingName: 'Дужка',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 30.03.А.СБ Дужка ведра цельнотянутого.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 17.02.СБ', householdItemsDrawingName: 'Крышка с ручкой в сборе',currentHouseholdItemsDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.СБ Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 17.02.01', householdItemsDrawingName: 'Крышка',currentHouseholdItemsDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.01 Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 17.02.01', householdItemsDrawingName: 'Крышка (из кружка)',currentHouseholdItemsDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.01 Крышка (из кружка).webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 07.02', householdItemsDrawingName: 'Ручка крышки',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
    ];

    final householdItemsDrawings1224C =[
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 49.01.СБ', householdItemsDrawingName: 'Корпус в сборе',currentHouseholdItemsDrawing: 'assets/drawings/household_items/1224C/ПЭ 49.01.СБ Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 49.01.03.А', householdItemsDrawingName: 'Корпус',currentHouseholdItemsDrawing: 'assets/drawings/pans/1624/ПЭ 49.01.03.А Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 30.01.03', householdItemsDrawingName: 'Ушко',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 30.01.03 Ушко ведра.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 30.03.А.СБ', householdItemsDrawingName: 'Дужка',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 30.03.А.СБ Дужка ведра цельнотянутого.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 17.02.СБ', householdItemsDrawingName: 'Крышка с ручкой в сборе',currentHouseholdItemsDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.СБ Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 17.02.01', householdItemsDrawingName: 'Крышка',currentHouseholdItemsDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.01 Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 17.02.01', householdItemsDrawingName: 'Крышка (из кружка)',currentHouseholdItemsDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.01 Крышка (из кружка).webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 07.02', householdItemsDrawingName: 'Ручка крышки',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
    ];

    final householdItemsDrawings2008 =[
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 33.СБ', householdItemsDrawingName: 'Корпус в сборе',currentHouseholdItemsDrawing: 'assets/drawings/household_items/2008/ПЭ 33.СБ Ковш вм. 1,5 л.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 33.01.01', householdItemsDrawingName: 'Корпус',currentHouseholdItemsDrawing: 'assets/drawings/household_items/2008/ПЭ 33.01.01 Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 33.02.А', householdItemsDrawingName: 'Ручка',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 33.02.А Ручка ковша.webp',),
     ];

    final householdItemsDrawings2011 =[
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 101.СБ', householdItemsDrawingName: 'Корпус в сборе',currentHouseholdItemsDrawing: 'assets/drawings/household_items/2011/ПЭ 101.СБ Ковш вм. 2,0 л.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 29.01.01', householdItemsDrawingName: 'Корпус',currentHouseholdItemsDrawing: 'assets/drawings/household_items/0908/ПЭ 29.01.01 Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 33.02.А', householdItemsDrawingName: 'Ручка',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 33.02.А Ручка ковша.webp',),
    ];

    final householdItemsDrawings2108 =[
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 33.01.А.СБ', householdItemsDrawingName: 'Корпус в сборе',currentHouseholdItemsDrawing: 'assets/drawings/household_items/2108/ПЭ 33.01.А.СБ Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 33.01.01.А', householdItemsDrawingName: 'Корпус',currentHouseholdItemsDrawing: 'assets/drawings/household_items/2108/ПЭ 33.01.01.А Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 33.02.А', householdItemsDrawingName: 'Ручка',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 33.02.А Ручка ковша.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 33.03.СБ', householdItemsDrawingName: 'Крышка с ручкой в сборе',currentHouseholdItemsDrawing: 'assets/drawings/lids/02108/ПЭ 33.03.СБ Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 33.03-01.СБ', householdItemsDrawingName: 'Крышка с державкой в сборе',currentHouseholdItemsDrawing: 'assets/drawings/lids/02108/ПЭ 33.03-01.СБ Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 26.02.01', householdItemsDrawingName: 'Крышка',currentHouseholdItemsDrawing: 'assets/drawings/lids/02108/ПЭ 26.02.01 Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 07.02', householdItemsDrawingName: 'Ручка крышки',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 72.02.02', householdItemsDrawingName: 'Державка',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final householdItemsDrawings2111 =[
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 101.СБ', householdItemsDrawingName: 'Корпус в сборе',currentHouseholdItemsDrawing: 'assets/drawings/household_items/2011/ПЭ 101.СБ Ковш вм. 2,0 л.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 29.01.01', householdItemsDrawingName: 'Корпус',currentHouseholdItemsDrawing: 'assets/drawings/household_items/0908/ПЭ 29.01.01 Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 33.02.А', householdItemsDrawingName: 'Ручка',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 33.02.А Ручка ковша.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 29.02.СБ', householdItemsDrawingName: 'Крышка с ручкой в сборе',currentHouseholdItemsDrawing: 'assets/drawings/lids/00908/ПЭ 29.02.СБ Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 29.02-01.СБ', householdItemsDrawingName: 'Крышка с державкой в сборе',currentHouseholdItemsDrawing: 'assets/drawings/lids/00908/ПЭ 29.02-01.СБ Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 29.02.01', householdItemsDrawingName: 'Крышка',currentHouseholdItemsDrawing: 'assets/drawings/lids/00908/ПЭ 29.02.01 Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 07.02', householdItemsDrawingName: 'Ручка крышки',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 72.02.02', householdItemsDrawingName: 'Державка',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final householdItemsDrawings0102 =[
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 08.СБ', householdItemsDrawingName: 'Корпус в сборе',currentHouseholdItemsDrawing: 'assets/drawings/household_items/0102/ПЭ 08.СБ Кружка вм. 0,25 л.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 08.01', householdItemsDrawingName: 'Корпус',currentHouseholdItemsDrawing: 'assets/drawings/household_items/0102/ПЭ 08.01 Корпус.webp',),
      // HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 07.02', householdItemsDrawingName: 'Ручка',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 07.02', householdItemsDrawingName: 'Ручка',currentHouseholdItemsDrawing: 'ПЭ 07.02 Ручка.webp',),

    ];

    final householdItemsDrawings0103 =[
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 07.СБ', householdItemsDrawingName: 'Корпус в сборе',currentHouseholdItemsDrawing: 'assets/drawings/household_items/0103/ПЭ 07.СБ Кружка вм. 0,4 л.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 07.01', householdItemsDrawingName: 'Корпус',currentHouseholdItemsDrawing: 'assets/drawings/household_items/0103/ПЭ 07.01 Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 07.02', householdItemsDrawingName: 'Ручка',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
    ];

    final householdItemsDrawings0207 =[
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 09.01.СБ', householdItemsDrawingName: 'Корпус в сборе',currentHouseholdItemsDrawing: 'assets/drawings/household_items/0207/ПЭ 09.01.СБ Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 09.01', householdItemsDrawingName: 'Корпус',currentHouseholdItemsDrawing: 'assets/drawings/household_items/0207/ПЭ 09.01 Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 29.01.02', householdItemsDrawingName: 'Ручка корпуса',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 29.01.02 Ручка (кружка 1л).webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 70.02.СБ', householdItemsDrawingName: 'Крышка с ручкой в сборе',currentHouseholdItemsDrawing: 'assets/drawings/lids/00207/ПЭ 70.02.СБ Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 70.02-01.СБ', householdItemsDrawingName: 'Крышка с державкой в сборе',currentHouseholdItemsDrawing: 'assets/drawings/lids/00207/ПЭ 70.02-01.СБ Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 70.02.01', householdItemsDrawingName: 'Крышка',currentHouseholdItemsDrawing: 'assets/drawings/lids/00207/ПЭ 70.02.01 Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 07.02', householdItemsDrawingName: 'Ручка крышки',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 72.02.02', householdItemsDrawingName: 'Державка',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final householdItemsDrawings1406 =[
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 50.СБ', householdItemsDrawingName: 'Корпус в сборе',currentHouseholdItemsDrawing: 'assets/drawings/household_items/1406/ПЭ 50.СБ Дуршлаг.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 50.01', householdItemsDrawingName: 'Корпус',currentHouseholdItemsDrawing: 'assets/drawings/household_items/1406/ПЭ 50.01 Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 33.02.А', householdItemsDrawingName: 'Ручка',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 33.02.А Ручка ковша.webp',),
    ];

    final householdItemsDrawings0612 =[
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 40.СБ', householdItemsDrawingName: 'Изделие в сборе',currentHouseholdItemsDrawing: 'assets/drawings/household_items/0612/ПЭ 40.СБ Бидон вм. 3,0л.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 40.01.СБ', householdItemsDrawingName: 'Корпус в сборе',currentHouseholdItemsDrawing: 'assets/drawings/household_items/0612/ПЭ 40.01.СБ Корпус в сборе.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 40.01.01', householdItemsDrawingName: 'Корпус',currentHouseholdItemsDrawing: 'assets/drawings/household_items/0612/ПЭ 40.01.01 Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 40.01.02', householdItemsDrawingName: 'Ухо',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 40.01.02 Ухо бидона.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 40.03.СБ', householdItemsDrawingName: 'Дужка',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 40.03.СБ Ручка-дужка бидона.webp',),


      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 72.02.СБ', householdItemsDrawingName: 'Крышка с ручкой в сборе',currentHouseholdItemsDrawing: 'assets/drawings/lids/02713/ПЭ 72.02.СБ Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 72.02-01.СБ', householdItemsDrawingName: 'Крышка с державкой в сборе',currentHouseholdItemsDrawing: 'assets/drawings/lids/02713/ПЭ 72.02-01.СБ Крышка в сборе.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 72.02.01', householdItemsDrawingName: 'Крышка',currentHouseholdItemsDrawing: 'assets/drawings/lids/02713/ПЭ 72.02.01 Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 72.02.01', householdItemsDrawingName: 'Крышка (из кружка)',currentHouseholdItemsDrawing: 'assets/drawings/lids/02713/ПЭ 72.02.01 Крышка (из кружка).webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 07.02', householdItemsDrawingName: 'Ручка крышки',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 72.02.02', householdItemsDrawingName: 'Державка',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final householdItemsDrawings0908 =[
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 29.01.СБ', householdItemsDrawingName: 'Корпус в сборе',currentHouseholdItemsDrawing: 'assets/drawings/household_items/0908/ПЭ 29.01.СБ Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 29.01.01', householdItemsDrawingName: 'Корпус',currentHouseholdItemsDrawing: 'assets/drawings/household_items/0908/ПЭ 29.01.01 Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 29.01.02', householdItemsDrawingName: 'Ручка корпуса',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 29.01.02 Ручка (кружка 1л).webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 29.02.СБ', householdItemsDrawingName: 'Крышка с ручкой в сборе',currentHouseholdItemsDrawing: 'assets/drawings/lids/00908/ПЭ 29.02.СБ Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 29.02.01', householdItemsDrawingName: 'Крышка',currentHouseholdItemsDrawing: 'assets/drawings/lids/00908/ПЭ 29.02.01 Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 07.02', householdItemsDrawingName: 'Ручка крышки',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
    ];

    List householdItemsDrawings = [];

    var currentArt=argsFromHouseholdItemsSelectionScreen.householdItemsArt;

    if (currentArt == '2827'){householdItemsDrawings=householdItemsDrawings2827;}
    else if (currentArt == '2829'){householdItemsDrawings=householdItemsDrawings2829;}
    else if (currentArt == '2833'){householdItemsDrawings=householdItemsDrawings2833;}
    else if (currentArt == '1224'){householdItemsDrawings=householdItemsDrawings1224;}
    else if (currentArt == '1222.Ц'){householdItemsDrawings=householdItemsDrawings1222C;}
    else if (currentArt == '1224.Ц'){householdItemsDrawings=householdItemsDrawings1224C;}
    else if (currentArt == '2008'){householdItemsDrawings=householdItemsDrawings2008;}
    else if (currentArt == '2011'){householdItemsDrawings=householdItemsDrawings2011;}
    else if (currentArt == '2108'){householdItemsDrawings=householdItemsDrawings2108;}
    else if (currentArt == '2111'){householdItemsDrawings=householdItemsDrawings2111;}
    else if (currentArt == '0102'){householdItemsDrawings=householdItemsDrawings0102;}
    else if (currentArt == '0103'){householdItemsDrawings=householdItemsDrawings0103;}
    else if (currentArt == '0207'){householdItemsDrawings=householdItemsDrawings0207;}
    else if (currentArt == '1406'){householdItemsDrawings=householdItemsDrawings1406;}
    else if (currentArt == '0612'){householdItemsDrawings=householdItemsDrawings0612;}
    else if (currentArt == '0908'){householdItemsDrawings=householdItemsDrawings0908;}



    return Scaffold(
      appBar: panDrawingSelectionScreenAppBar(context, pageName),
      drawer: navDrawer(context),
      body: Container(
        decoration: backgroundOfOthersScreen,
        child: Column(
          children: [
            const SizedBox(height:20,),
            Text(argsFromHouseholdItemsSelectionScreen.householdItemsName,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),// Вывод наименования изделия
            const SizedBox(height:10,),
            Text('Арт. ${argsFromHouseholdItemsSelectionScreen.householdItemsArt}',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height:10,),
            Expanded(
              child: SizedBox(height: 500,
                child: ListView.builder(
                    itemCount: householdItemsDrawings.length,
                    itemExtent: 150,
                    itemBuilder: (BuildContext context, int index){
                      final householdItemsDrawing = householdItemsDrawings[index];
                      final largeCurrentDrawing = householdItemsDrawing.currentHouseholdItemsDrawing;

                      // final ref = FirebaseStorage.instance.ref().child(householdItemsDrawing.currentHouseholdItemsDrawing);
                      // var url = await ref.getDownloadURL();
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color:const Color(0x434d9de0),
                              ),
                              child: Row(children: [
                                SizedBox(
                                    width: 150,
                                    height: 150,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image(image: AssetImage(householdItemsDrawing.currentHouseholdItemsDrawing)),
                                    )),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: double.infinity,
                                        child: Text('Чертеж № ${householdItemsDrawing.householdItemsDrawingNumber}',
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                        child: Divider(
                                          color: Color(0x6dba0f1f),
                                          thickness: 2,
                                        ),
                                      ),
                                      Text(householdItemsDrawing.householdItemsDrawingName,
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],),
                            ),
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(25.0),
                                onTap: (){
                                  Navigator.pushNamed(
                                    context,
                                    HouseholdItemsDrawingViewScreen.routeName,
                                    arguments: PassedFromHouseholdItemsDrawingListArguments(
                                      largeCurrentDrawing,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

