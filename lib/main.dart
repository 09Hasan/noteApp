import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/Cubits/constants.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/home_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox(kNotesBoxName);

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: HomeView(),
    ),
  );
}
