import 'dart:math';

import 'package:flutter/material.dart';
import 'package:todo/model/notes.dart';
import 'package:todo/model/notes_model.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final note_model = NotesModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 150.0,
              padding: EdgeInsets.all(50.0),
              child: Text(
                "Hi",
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Observer(
                builder: (_) {
                  return Container(
                    padding: EdgeInsets.all(20.0).copyWith(bottom: 0),
                    child: GridView.builder(
                      itemCount: note_model.notes_count,
                      gridDelegate:
                          new SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      itemBuilder: _itemBuilder,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          note_model.addNote(Note(note: "Test Test Test Test"));
        },
        backgroundColor: Colors.deepPurple,
        label: Text("Add new note"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    Note note = note_model.notes[index];
    return Container(
      margin: EdgeInsets.all(10),
      child: Material(
        elevation: 10,
        color: Colors.white,
        shadowColor: Colors.black.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(10.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10).copyWith(bottom: 0),
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: _randomColor(),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  )
                ],
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(10).copyWith(top: 0),
                  child: Text(
                    note.note,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 6,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Color _randomColor() {
    return Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
        .withOpacity(1.0);
  }
}
