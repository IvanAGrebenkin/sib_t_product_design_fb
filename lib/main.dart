import 'package:flutter/material.dart';
import 'Screens/FlatItemsScreens/flat_item_drawing_view_screen.dart';
import 'Screens/HouseholdItemsScreens/household_items_drawing_selection_screen.dart';
import 'Screens/HouseholdItemsScreens/household_items_drawing_view_screen.dart';
import 'Screens/KettleScreens/kettle_drawing_selection_screen.dart';
import 'Screens/KettleScreens/kettle_drawing_view_screen.dart';
import 'Screens/PanScreens/pan_drawing_selection_screen.dart';
import 'Screens/PanScreens/pan_drawing_view_screen.dart';
import 'Screens/auth_screen.dart';
import 'Screens/consent_to_use.dart';
import 'Screens/FlatItemsScreens/flat_items_selection_screen.dart';
import 'Screens/firebase_screen.dart';
import 'Screens/group_selection_screen.dart';
import 'Screens/HouseholdItemsScreens/household_items_selection_screen.dart';
import 'Screens/KettleScreens/kettle_selection_screen.dart';
import 'Screens/PanScreens/pan_selection_screen.dart';

void main() {
  runApp(const FirebaseScreen());
  // runApp(const SibTProductDesignApp());
  // runApp(const AuthScreen());
  // runApp(const ConsentToUse());
  // runApp(const PanSelection());
  // runApp(const PanDrawingViewScreen());
  // runApp(const KettleDrawingViewScreen());
}

class SibTProductDesignApp extends StatefulWidget {
  const SibTProductDesignApp({Key? key}) : super(key: key);
  @override
  _SibTProductDesignAppState createState() => _SibTProductDesignAppState();
}


class _SibTProductDesignAppState extends State<SibTProductDesignApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SibTProductDesignApp',
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthScreen(),
        '/consent_to_use': (context) => const ConsentToUse(),
        '/group_selection_screen': (context) => const GroupSelectionScreen(),
        '/pan_selection_screen': (context) => const PanSelection(),
        '/kettle_selection_screen': (context) => const KettleSelection(),
        '/household_items_selection_screen': (context) => const HouseholdItemsSelection(),
        '/flat_items_selection_screen': (context) => const FlatItemsSelection(),
        PanDrawingSelectionScreen.routeName: (context) => const PanDrawingSelectionScreen(),
        PanDrawingViewScreen.routeName: (context) => const PanDrawingViewScreen(),
        KettleDrawingSelectionScreen.routeName: (context) => const KettleDrawingSelectionScreen(),
        KettleDrawingViewScreen.routeName: (context) => const KettleDrawingViewScreen(),
        FlatItemsDrawingViewScreen.routeName: (context) => const FlatItemsDrawingViewScreen(),
        HouseholdItemsDrawingSelectionScreen.routeName: (context) => const HouseholdItemsDrawingSelectionScreen(),
        HouseholdItemsDrawingViewScreen.routeName: (context) => const HouseholdItemsDrawingViewScreen(),
      },
    );
  }
}