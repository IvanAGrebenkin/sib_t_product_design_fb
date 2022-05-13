import 'package:flutter/material.dart';
import '../../Utils/decoration.dart';
import '../../Utils/widgets.dart';
import 'flat_item_drawing_view_screen.dart';

class FlatItemsSelection extends StatefulWidget {
  const FlatItemsSelection({Key? key}) : super(key: key);
  @override
  State<FlatItemsSelection> createState() => _FlatItemsSelectionState();
}

class FlatItemDrawings {
  final String flatItemDrawingNumber;
  final String flatItemDrawingName;
  final String flatItemArt;
  final String flatItemCurrentDrawing;
  FlatItemDrawings({
    required this.flatItemDrawingNumber,
    required this.flatItemDrawingName,
    required this.flatItemArt,
    required this.flatItemCurrentDrawing,
  });
}


class _FlatItemsSelectionState extends State<FlatItemsSelection> {
  get pageName => 'Плоские изделия';


  @override
  Widget build(BuildContext context) {

    final panDrawings =[
      FlatItemDrawings (flatItemDrawingNumber: 'ПЭ 04', flatItemDrawingName: 'Миска 0,4л.',flatItemArt: '0303',flatItemCurrentDrawing: 'assets/drawings/flat_items/0303/ПЭ 04 Миска вм. 0,4 л.webp',),
      FlatItemDrawings (flatItemDrawingNumber: 'ПЭ 03', flatItemDrawingName: 'Миска 0,9л.',flatItemArt: '0306',flatItemCurrentDrawing: 'assets/drawings/flat_items/0306/ПЭ 03 Миска вм. 0,9 л.webp',),
      FlatItemDrawings (flatItemDrawingNumber: 'ПЭ 02', flatItemDrawingName: 'Миска 2,0л.',flatItemArt: '0310',flatItemCurrentDrawing: 'assets/drawings/flat_items/0310/ПЭ 02 Миска вм. 2,0 л.webp',),
      FlatItemDrawings (flatItemDrawingNumber: 'ПЭ 01', flatItemDrawingName: 'Миска 4,0л.',flatItemArt: '0313',flatItemCurrentDrawing: 'assets/drawings/flat_items/0313/ПЭ 01 Миска вм. 4,0 л.webp',),
      FlatItemDrawings (flatItemDrawingNumber: 'ПЭ 28', flatItemDrawingName: 'Блюдо 2,0л.',flatItemArt: '0808',flatItemCurrentDrawing: 'assets/drawings/flat_items/0808/ПЭ 28 Блюдо вм. 2,0 л.webp',),
      FlatItemDrawings (flatItemDrawingNumber: 'ПЭ 74', flatItemDrawingName: 'Блюдо 3,0л.',flatItemArt: '0810',flatItemCurrentDrawing: 'assets/drawings/flat_items/0810/ПЭ 74 Блюдо вм. 3,0 л.webp',),
      FlatItemDrawings (flatItemDrawingNumber: 'ПЭ 100', flatItemDrawingName: 'Блюдо 5,0л.',flatItemArt: '0812',flatItemCurrentDrawing: 'assets/drawings/flat_items/0812/ПЭ 100 Блюдо вм. 5,0 л.webp',),
      FlatItemDrawings (flatItemDrawingNumber: 'ПЭ 98', flatItemDrawingName: 'Таз 7,0л.',flatItemArt: '3020',flatItemCurrentDrawing: 'assets/drawings/flat_items/3020/ПЭ 98 Таз вм. 7,0 л (27.05.18).webp',),
      FlatItemDrawings (flatItemDrawingNumber: 'ПЭ 66', flatItemDrawingName: 'Таз 9,5л.',flatItemArt: '3021',flatItemCurrentDrawing: 'assets/drawings/flat_items/3021/ПЭ 66 Таз вм. 9,5 л (27.07.18).webp',),
      FlatItemDrawings (flatItemDrawingNumber: 'ПЭ 27.А', flatItemDrawingName: 'Таз 12,0л.',flatItemArt: '3024',flatItemCurrentDrawing: 'assets/drawings/flat_items/3024/ПЭ 27.А Таз вм. 12,0 л (27.07.18).webp',),
      FlatItemDrawings (flatItemDrawingNumber: 'ПЭ 73', flatItemDrawingName: 'Таз 16,0л.',flatItemArt: '3026',flatItemCurrentDrawing: 'assets/drawings/flat_items/3026/ПЭ 73 Таз вм. 16,0 л (27.07.18).webp',),
    ];

    return Scaffold(
      appBar: panDrawingSelectionScreenAppBar(context, pageName),
      drawer: navDrawer(context),
      body: Container(
        decoration: backgroundOfOthersScreen,
        child: Column(
          children: [
            const SizedBox(height:20,),
            Expanded(
              child: SizedBox(height: 500,
                child: ListView.builder(
                    itemCount: panDrawings.length,
                    itemExtent: 150,
                    itemBuilder: (BuildContext context, int index){
                      final flatItemDrawing = panDrawings[index];
                      final largeCurrentDrawing = flatItemDrawing.flatItemCurrentDrawing;
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
                                      child: Image(image: AssetImage(flatItemDrawing.flatItemCurrentDrawing)),
                                    )),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: double.infinity,
                                        child: Text(flatItemDrawing.flatItemDrawingName,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),// Название изделия
                                      // const SizedBox(height: 10,),
                                      const Padding(
                                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                        child: Divider(
                                          color: Color(0x6dba0f1f),
                                          thickness: 2,
                                        ),
                                      ),

                                      Text('Арт. ${flatItemDrawing.flatItemArt}',
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),// Артикул изделия
                                      const SizedBox(height: 10,),
                                      Text('Чертеж № ${flatItemDrawing.flatItemDrawingNumber}',
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),// Номер чертежа
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
                                  // Navigator.pushNamed(context, '/pan_drawing_view_screen');
                                  Navigator.pushNamed(
                                    context,
                                    FlatItemsDrawingViewScreen.routeName,
                                    arguments: PassedFromFlatItemsSelectionScreenArguments(
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
