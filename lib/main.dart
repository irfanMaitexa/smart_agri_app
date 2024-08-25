import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_agri_app/modules/user/screens/loginScreen.dart';  
import 'modules/user/screens/singinScreen.dart';
import 'modules/user/view_model/auth_view_model.dart'; 

void main() async{


  WidgetsFlutterBinding.ensureInitialized(); 


   
  await Firebase.initializeApp(); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthViewModel>(
          create: (context) => AuthViewModel(),
        ),
        // Add more providers if you have more ViewModels
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  Loginscreen(),  // Set initial screen directly
      ),
    );
  }
}

