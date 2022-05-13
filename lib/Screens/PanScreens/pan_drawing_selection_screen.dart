import 'package:flutter/material.dart';
import 'package:sib_t_product_design_fb/Screens/PanScreens/pan_drawing_view_screen.dart';
import '../../Utils/decoration.dart';
import '../../Utils/widgets.dart';

// Класс для объявления передаваемых аргумнтов
class PassedFromPanSelectionScreenArguments {
  final String panTypeValue;
  final String panShapeValue;
  final String panSizeValue;
  final String art;
  final String panName;

  PassedFromPanSelectionScreenArguments(this.panTypeValue, this.panShapeValue, this.panSizeValue,this.art, this.panName,);
}

class PanDrawings {
  final String panDrawingNumber;
  final String panDrawingName;
  final String currentDrawing;
  PanDrawings({
    required this.panDrawingNumber,
    required this.panDrawingName,
    required this.currentDrawing,
  });
}

class PanDrawingSelectionScreen extends StatefulWidget {
const PanDrawingSelectionScreen({Key? key}) : super(key: key);
  static const routeName = '/pan_drawing_selection_screen';
  @override
  State<PanDrawingSelectionScreen> createState() => _PanDrawingSelectionScreenState();
}

class _PanDrawingSelectionScreenState extends State<PanDrawingSelectionScreen> {
  get pageName => 'Выберите чертеж';
// Маршрут куда передаются аргументы
  @override
  Widget build(BuildContext context) {

    // Метод для доступа к класу, в котором объявлены передаваемые аргументы
    final argsFromPanSelectionScreen = ModalRoute.of(context)!.settings.arguments as PassedFromPanSelectionScreenArguments;

    final panDrawings1607 =[
      PanDrawings (panDrawingNumber: 'ПЭ 99.01.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/1607/ПЭ 99.01.СБ Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 33.01.01', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/1607/ПЭ 33.01.01 Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.01.02.А', panDrawingName: 'Ручка 16',currentDrawing: 'assets/drawings/fittings/ПЭ 19.01.02.А Ручка 16.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 99.02.СБ', panDrawingName: 'Крышка с ручкой в сборе',currentDrawing: 'assets/drawings/lids/01607/ПЭ 99.02.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 99.02-01.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/lids/01607/ПЭ 99.02-01.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 99.02.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/01607/ПЭ 99.02.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 07.02', panDrawingName: 'Ручка крышки',currentDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final panDrawings1610 =[
      PanDrawings (panDrawingNumber: 'ПЭ 21.01.А.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/1610/ПЭ 21.01.А.СБ Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 21.01.01', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/1610/ПЭ 21.01.01 Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.01.02', panDrawingName: 'Ручка 18',currentDrawing: 'assets/drawings/fittings/ПЭ 19.01.02 Ручка 18.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.02.СБ', panDrawingName: 'Крышка с ручкой в сборе',currentDrawing: 'assets/drawings/lids/01610/ПЭ 19.02.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.02-01.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/lids/01610/ПЭ 19.02-01.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.02.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/01610/ПЭ 19.02.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.02.01', panDrawingName: 'Крышка (из кружка)',currentDrawing: 'assets/drawings/lids/01610/ПЭ 19.02.01 Крышка (из кружка).webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 07.02', panDrawingName: 'Ручка крышки',currentDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final panDrawings1612 =[
      PanDrawings (panDrawingNumber: 'ПЭ 19.01.А.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/1612/ПЭ 19.01.А.СБ Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.01.01.А', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/1612/ПЭ 19.01.01.А Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.01.02', panDrawingName: 'Ручка 18',currentDrawing: 'assets/drawings/fittings/ПЭ 19.01.02 Ручка 18.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.02.СБ', panDrawingName: 'Крышка с ручкой в сборе',currentDrawing: 'assets/drawings/lids/01610/ПЭ 19.02.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.02-01.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/lids/01610/ПЭ 19.02-01.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.02.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/01610/ПЭ 19.02.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.02.01', panDrawingName: 'Крышка (из кружка)',currentDrawing: 'assets/drawings/lids/01610/ПЭ 19.02.01 Крышка (из кружка).webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 07.02', panDrawingName: 'Ручка крышки',currentDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final panDrawings1617 =[
      PanDrawings (panDrawingNumber: 'ПЭ 18.01.А.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/1617/ПЭ 18.01.А.СБ Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 18.01.01.А', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/1617/ПЭ 18.01.01.А Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 18.02.СБ', panDrawingName: 'Крышка с ручкой в сборе',currentDrawing: 'assets/drawings/lids/01617/ПЭ 18.02.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 18.02-01.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/lids/01617/ПЭ 18.02-01.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 18.02.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/01617/ПЭ 18.02.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 07.02', panDrawingName: 'Ручка крышки',currentDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final panDrawings1620 =[
      PanDrawings (panDrawingNumber: 'ПЭ 17.01.А.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/1620/ПЭ 17.01.А.СБ Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.01.01.А', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/1620/ПЭ 17.01.01.А Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.01.02', panDrawingName: 'Ручка 24',currentDrawing: 'assets/drawings/fittings/ПЭ 17.01.02 Ручка 24.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02.СБ', panDrawingName: 'Крышка с ручкой в сборе',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02-01.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02-01.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02.01', panDrawingName: 'Крышка (из кружка)',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.01 Крышка (из кружка).webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 07.02', panDrawingName: 'Ручка крышки',currentDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final panDrawings1622 =[
      PanDrawings (panDrawingNumber: 'ПЭ 16.01.А.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/1622/ПЭ 16.01.А.СБ Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 16.01.01.А', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/1622/ПЭ 16.01.01.А Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.01.02', panDrawingName: 'Ручка 24',currentDrawing: 'assets/drawings/fittings/ПЭ 17.01.02 Ручка 24.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02.СБ', panDrawingName: 'Крышка с ручкой в сборе',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02-01.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02-01.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02.01', panDrawingName: 'Крышка (из кружка)',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.01 Крышка (из кружка).webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 07.02', panDrawingName: 'Ручка крышки',currentDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final panDrawings1624 =[
      PanDrawings (panDrawingNumber: 'ПЭ 49.01.А.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/1624/ПЭ 49.01.А.СБ Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 49.01.03.А', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/1624/ПЭ 49.01.03.А Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.01.02', panDrawingName: 'Ручка 24',currentDrawing: 'assets/drawings/fittings/ПЭ 17.01.02 Ручка 24.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02.СБ', panDrawingName: 'Крышка с ручкой в сборе',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02-01.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02-01.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02.01', panDrawingName: 'Крышка (из кружка)',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.01 Крышка (из кружка).webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 07.02', panDrawingName: 'Ручка крышки',currentDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final panDrawings1626 =[
      PanDrawings (panDrawingNumber: 'ПЭ 111.01.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/1626/ПЭ 111.01.СБ Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 111.01.01', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/1626/ПЭ 111.01.01 Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.01.02', panDrawingName: 'Ручка 24',currentDrawing: 'assets/drawings/fittings/ПЭ 17.01.02 Ручка 24.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 30.02.СБ', panDrawingName: 'Крышка с ручкой в сборе',currentDrawing: 'assets/drawings/lids/01124/ПЭ 30.02.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 30.02.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/01124/ПЭ 30.02.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 30.02.01', panDrawingName: 'Крышка (из кружка)',currentDrawing: 'assets/drawings/lids/01124/ПЭ 30.02.01 Крышка (из кружка).webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 07.02', panDrawingName: 'Ручка крышки',currentDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
    ];

    final panDrawings1912 =[
      PanDrawings (panDrawingNumber: 'ПЭ 11.01.А.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/1912/ПЭ 11.01.А.СБ Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 11.01.01.А', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/1912/ПЭ 11.01.01.А Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.01.02', panDrawingName: 'Ручка 18',currentDrawing: 'assets/drawings/fittings/ПЭ 19.01.02 Ручка 18.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.02.СБ', panDrawingName: 'Крышка с ручкой в сборе',currentDrawing: 'assets/drawings/lids/01610/ПЭ 19.02.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.02-01.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/lids/01610/ПЭ 19.02-01.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.02.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/01610/ПЭ 19.02.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.02.01', panDrawingName: 'Крышка (из кружка)',currentDrawing: 'assets/drawings/lids/01610/ПЭ 19.02.01 Крышка (из кружка).webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 07.02', panDrawingName: 'Ручка крышки',currentDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final panDrawings1917 =[
      PanDrawings (panDrawingNumber: 'ПЭ 22.01.А.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/1917/ПЭ 22.01.А.СБ Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 22.01.01.А', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/1917/ПЭ 22.01.01.А Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 18.02.СБ', panDrawingName: 'Крышка с ручкой в сборе',currentDrawing: 'assets/drawings/lids/01617/ПЭ 18.02.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 18.02-01.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/lids/01617/ПЭ 18.02-01.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 18.02.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/01617/ПЭ 18.02.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 07.02', panDrawingName: 'Ручка крышки',currentDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final panDrawings1920 =[
      PanDrawings (panDrawingNumber: 'ПЭ 20.01.А.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/1920/ПЭ 20.01.А.СБ Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 20.01.01.А', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/1920/ПЭ 20.01.01.А Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.01.02', panDrawingName: 'Ручка 24',currentDrawing: 'assets/drawings/fittings/ПЭ 17.01.02 Ручка 24.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02.СБ', panDrawingName: 'Крышка с ручкой в сборе',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02-01.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02-01.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02.01', panDrawingName: 'Крышка (из кружка)',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.01 Крышка (из кружка).webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 07.02', panDrawingName: 'Ручка крышки',currentDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final panDrawings2512 =[
      PanDrawings (panDrawingNumber: 'ПЭ 19.01.В.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/2512/ПЭ 19.01.В.СБ Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.01.01.В', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/2512/ПЭ 19.01.01.В Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.01.02', panDrawingName: 'Ручка 18',currentDrawing: 'assets/drawings/fittings/ПЭ 19.01.02 Ручка 18.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.02.СБ', panDrawingName: 'Крышка с ручкой в сборе',currentDrawing: 'assets/drawings/lids/01610/ПЭ 19.02.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.02-01.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/lids/01610/ПЭ 19.02-01.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.02.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/01610/ПЭ 19.02.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.02.01', panDrawingName: 'Крышка (из кружка)',currentDrawing: 'assets/drawings/lids/01610/ПЭ 19.02.01 Крышка (из кружка).webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 07.02', panDrawingName: 'Ручка крышки',currentDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final panDrawings2517 =[
      PanDrawings (panDrawingNumber: 'ПЭ 18.01.В.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/2517/ПЭ 18.01.В.СБ Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 18.01.01.В', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/2517/ПЭ 18.01.01.В Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 18.02.СБ', panDrawingName: 'Крышка с ручкой в сборе',currentDrawing: 'assets/drawings/lids/01617/ПЭ 18.02.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 18.02-01.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/lids/01617/ПЭ 18.02-01.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 18.02.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/01617/ПЭ 18.02.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 07.02', panDrawingName: 'Ручка крышки',currentDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final panDrawings2520 =[
      PanDrawings (panDrawingNumber: 'ПЭ 17.01.В.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/2520/ПЭ 17.01.В.СБ Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.01.01.В', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/2520/ПЭ 17.01.01.В Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.01.02', panDrawingName: 'Ручка 24',currentDrawing: 'assets/drawings/fittings/ПЭ 17.01.02 Ручка 24.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02.СБ', panDrawingName: 'Крышка с ручкой в сборе',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02-01.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02-01.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02.01', panDrawingName: 'Крышка (из кружка)',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.01 Крышка (из кружка).webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 07.02', panDrawingName: 'Ручка крышки',currentDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final panDrawings1720 =[
      PanDrawings (panDrawingNumber: 'ПЭ 97.01.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/1720/ПЭ 97.01.СБ Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 97.01.01', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/1720/ПЭ 97.01.01 Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.01.02', panDrawingName: 'Ручка 24',currentDrawing: 'assets/drawings/fittings/ПЭ 17.01.02 Ручка 24.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 97.03.СБ', panDrawingName: 'Вставка в сборе',currentDrawing: 'assets/drawings/lids/1723/ПЭ 97.03.СБ Вставка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 97.03.01', panDrawingName: 'Вставка',currentDrawing: 'assets/drawings/lids/1723/ПЭ 97.03.01 Вставка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 97.03.02', panDrawingName: 'Державка вставки',currentDrawing: 'assets/drawings/fittings/ПЭ 97.03.02 Державка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02.СБ', panDrawingName: 'Крышка с ручкой в сборе',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02-01.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02-01.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02.01', panDrawingName: 'Крышка (из кружка)',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.01 Крышка (из кружка).webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 07.02', panDrawingName: 'Ручка крышки',currentDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final panDrawings1722 =[
      PanDrawings (panDrawingNumber: 'ПЭ 96.01.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/1722/ПЭ 96.01.СБ Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 96.01.01', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/1722/ПЭ 96.01.01 Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.01.02', panDrawingName: 'Ручка 24',currentDrawing: 'assets/drawings/fittings/ПЭ 17.01.02 Ручка 24.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 97.03.СБ', panDrawingName: 'Вставка в сборе',currentDrawing: 'assets/drawings/lids/1723/ПЭ 97.03.СБ Вставка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 97.03.01', panDrawingName: 'Вставка',currentDrawing: 'assets/drawings/lids/1723/ПЭ 97.03.01 Вставка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 97.03.02', panDrawingName: 'Державка вставки',currentDrawing: 'assets/drawings/fittings/ПЭ 97.03.02 Державка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02.СБ', panDrawingName: 'Крышка с ручкой в сборе',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02-01.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02-01.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02.01', panDrawingName: 'Крышка (из кружка)',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.01 Крышка (из кружка).webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 07.02', panDrawingName: 'Ручка крышки',currentDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final panDrawings1724 =[
      PanDrawings (panDrawingNumber: 'ПЭ 88.01.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/1724/ПЭ 88.01.СБ Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 88.01.01', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/1724/ПЭ 88.01.01 Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.01.02', panDrawingName: 'Ручка 24',currentDrawing: 'assets/drawings/fittings/ПЭ 17.01.02 Ручка 24.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 97.03.СБ', panDrawingName: 'Вставка в сборе',currentDrawing: 'assets/drawings/lids/1723/ПЭ 97.03.СБ Вставка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 97.03.01', panDrawingName: 'Вставка',currentDrawing: 'assets/drawings/lids/1723/ПЭ 97.03.01 Вставка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 97.03.02', panDrawingName: 'Державка вставки',currentDrawing: 'assets/drawings/fittings/ПЭ 97.03.02 Державка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02.СБ', panDrawingName: 'Крышка с ручкой в сборе',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02-01.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02-01.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.02.01', panDrawingName: 'Крышка (из кружка)',currentDrawing: 'assets/drawings/lids/01620/ПЭ 17.02.01 Крышка (из кружка).webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 07.02', panDrawingName: 'Ручка крышки',currentDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final panDrawingsMD161 =[
      PanDrawings (panDrawingNumber: 'ПЭ 103.01.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/MD161/ПЭ 103.01.СБ Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 103.01.01', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/MD161/ПЭ 103.01.01 Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.01.02.А', panDrawingName: 'Ручка 16',currentDrawing: 'assets/drawings/fittings/ПЭ 19.01.02.А Ручка 16.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 103.04.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/lids/0MD161M/ПЭ 103.04.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 103.04.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/0MD161M/ПЭ 103.04.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final panDrawingsMD181 =[
      PanDrawings (panDrawingNumber: 'ПЭ 104.01.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/MD181/ПЭ 104.01.СБ Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 104.01.01', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/MD181/ПЭ 104.01.01 Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.01.02', panDrawingName: 'Ручка 18',currentDrawing: 'assets/drawings/fittings/ПЭ 19.01.02 Ручка 18.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 104.04.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/lids/0MD181M/ПЭ 104.04.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 104.04.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/0MD181M/ПЭ 104.04.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final panDrawingsMD201 =[
      PanDrawings (panDrawingNumber: 'ПЭ 105.01.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/MD201/ПЭ 105.01.СБ Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 105.01.01', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/MD201/ПЭ 105.01.01 Корпус.webp',),
      // PanDrawings (panDrawingNumber: 'ПЭ 19.01.02.А', panDrawingName: 'Ручка 16',currentDrawing: 'assets/drawings/fittings/ПЭ 19.01.02.А Ручка 16.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 105.04.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/lids/0MD201M/ПЭ 105.04.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 105.04.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/0MD201M/ПЭ 105.04.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final panDrawingsMD221 =[
      // PanDrawings (panDrawingNumber: 'ПЭ 103.01.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/MD161/ПЭ 103.01.СБ Корпус.webp',),
      // PanDrawings (panDrawingNumber: 'ПЭ 103.01.01', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/MD161/ПЭ 103.01.01 Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.01.02', panDrawingName: 'Ручка 24',currentDrawing: 'assets/drawings/fittings/ПЭ 17.01.02 Ручка 24.webp',),
      // PanDrawings (panDrawingNumber: 'ПЭ 19.01.02.А', panDrawingName: 'Ручка 16',currentDrawing: 'assets/drawings/fittings/ПЭ 19.01.02.А Ручка 16.webp',),
      // PanDrawings (panDrawingNumber: 'ПЭ 103.04.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/lids/0MD161M/ПЭ 103.04.СБ Крышка.webp',),
      // PanDrawings (panDrawingNumber: 'ПЭ 103.04.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/0MD161M/ПЭ 103.04.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final panDrawingsMC161 =[
      PanDrawings (panDrawingNumber: 'ПЭ 106.СБ', panDrawingName: 'Кастрюля в сборе',currentDrawing: 'assets/drawings/pans/MC161/ПЭ 106.СБ Кастрюля 2,0л.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 106.01.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/MC161/ПЭ 106.01.СБ Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 106.01.01', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/MC161/ПЭ 106.01.01 Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.01.02.А', panDrawingName: 'Ручка 16',currentDrawing: 'assets/drawings/fittings/ПЭ 19.01.02.А Ручка 16.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 103.04.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/lids/0MD161M/ПЭ 103.04.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 103.04.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/0MD161M/ПЭ 103.04.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final panDrawingsMC181 =[
      PanDrawings (panDrawingNumber: 'ПЭ 107.СБ', panDrawingName: 'Кастрюля в сборе',currentDrawing: 'assets/drawings/pans/MC181/ПЭ 107.СБ Кастрюля 3,0л.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 107.01.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/MC181/ПЭ 107.01.СБ Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 106.01.01', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/MC161/ПЭ 106.01.01 Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 19.01.02', panDrawingName: 'Ручка 18',currentDrawing: 'assets/drawings/fittings/ПЭ 19.01.02 Ручка 18.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 104.04.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/lids/0MD181M/ПЭ 104.04.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 104.04.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/0MD181M/ПЭ 104.04.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final panDrawingsMC201 =[
      PanDrawings (panDrawingNumber: 'ПЭ 108.СБ', panDrawingName: 'Кастрюля в сборе',currentDrawing: 'assets/drawings/pans/MC201/ПЭ 108.СБ Кастрюля 4,0л.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 108.01.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/MC201/ПЭ 108.01.СБ Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 108.01.01', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/MC201/ПЭ 108.01.01 Корпус.webp',),
      // PanDrawings (panDrawingNumber: 'ПЭ 19.01.02.А', panDrawingName: 'Ручка 16',currentDrawing: 'assets/drawings/fittings/ПЭ 19.01.02.А Ручка 16.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 105.04.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/lids/0MD201M/ПЭ 105.04.СБ Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 105.04.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/0MD201M/ПЭ 105.04.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final panDrawingsMC221 =[
      // PanDrawings (panDrawingNumber: 'ПЭ 107.СБ', panDrawingName: 'Кастрюля в сборе',currentDrawing: 'assets/drawings/pans/MC181/ПЭ 107.СБ Кастрюля 3,0л.webp',),
      // PanDrawings (panDrawingNumber: 'ПЭ 103.01.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/MD161/ПЭ 103.01.СБ Корпус.webp',),
      // PanDrawings (panDrawingNumber: 'ПЭ 103.01.01', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/MD161/ПЭ 103.01.01 Корпус.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 17.01.02', panDrawingName: 'Ручка 24',currentDrawing: 'assets/drawings/fittings/ПЭ 17.01.02 Ручка 24.webp',),
      // PanDrawings (panDrawingNumber: 'ПЭ 19.01.02.А', panDrawingName: 'Ручка 16',currentDrawing: 'assets/drawings/fittings/ПЭ 19.01.02.А Ручка 16.webp',),
      // PanDrawings (panDrawingNumber: 'ПЭ 103.04.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/lids/0MD161M/ПЭ 103.04.СБ Крышка.webp',),
      // PanDrawings (panDrawingNumber: 'ПЭ 103.04.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/lids/0MD161M/ПЭ 103.04.01 Крышка.webp',),
      PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    List panDrawings = [];

    var currentArt=argsFromPanSelectionScreen.art;

    if (currentArt == '1607'){panDrawings=panDrawings1607;}
    else if (currentArt == '1610'){panDrawings=panDrawings1610;}
    else if (currentArt == '1612'){panDrawings=panDrawings1612;}
    else if (currentArt == '1617'){panDrawings=panDrawings1617;}
    else if (currentArt == '1620'){panDrawings=panDrawings1620;}
    else if (currentArt == '1622'){panDrawings=panDrawings1622;}
    else if (currentArt == '1624'){panDrawings=panDrawings1624;}
    else if (currentArt == '1626'){panDrawings=panDrawings1626;}
    else if (currentArt == '1912'){panDrawings=panDrawings1912;}
    else if (currentArt == '1917'){panDrawings=panDrawings1917;}
    else if (currentArt == '1920'){panDrawings=panDrawings1920;}
    else if (currentArt == '2512'){panDrawings=panDrawings2512;}
    else if (currentArt == '2517'){panDrawings=panDrawings2517;}
    else if (currentArt == '2520'){panDrawings=panDrawings2520;}
    else if (currentArt == '1720'){panDrawings=panDrawings1720;}
    else if (currentArt == '1722'){panDrawings=panDrawings1722;}
    else if (currentArt == '1724'){panDrawings=panDrawings1724;}
    else if (currentArt == 'MD161'){panDrawings=panDrawingsMD161;}
    else if (currentArt == 'MD181'){panDrawings=panDrawingsMD181;}
    else if (currentArt == 'MD201'){panDrawings=panDrawingsMD201;}
    else if (currentArt == 'MD221'){panDrawings=panDrawingsMD221;}
    else if (currentArt == 'MC161'){panDrawings=panDrawingsMC161;}
    else if (currentArt == 'MC181'){panDrawings=panDrawingsMC181;}
    else if (currentArt == 'MC201'){panDrawings=panDrawingsMC201;}
    else if (currentArt == 'MC221'){panDrawings=panDrawingsMC221;}

    return Scaffold(
        appBar: panDrawingSelectionScreenAppBar(context, pageName),
        drawer: navDrawer(context),
        body: Container(
          decoration: backgroundOfOthersScreen,
          child: Column(
            children: [
              const SizedBox(height:20,),
              Text(argsFromPanSelectionScreen.panName,
                style: const TextStyle(
                  fontSize: 18,
                ),),// Вывод наименования изделия
              const SizedBox(height:10,),
              Text('Арт. ${argsFromPanSelectionScreen.art}',
                style: const TextStyle(
                  fontSize: 16,
                ),),
              const SizedBox(height:10,),
              Expanded(
                child: SizedBox(height: 500,
                  child: ListView.builder(
                      itemCount: panDrawings.length,
                      itemExtent: 150,
                      itemBuilder: (BuildContext context, int index){
                        final panDrawing = panDrawings[index];
                        final largeCurrentDrawing = panDrawing.currentDrawing;
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
                                        child: Image(image: AssetImage(panDrawing.currentDrawing)),
                                      )),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          child: Text('Чертеж № ${panDrawing.panDrawingNumber}',
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
                                        Text(panDrawing.panDrawingName,
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
                                      PanDrawingViewScreen.routeName,
                                      arguments: PassedFromPanDrawingListArguments(
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

