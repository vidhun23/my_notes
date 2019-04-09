import 'package:todo/model/notes.dart';
import 'package:mobx/mobx.dart';

part 'notes_model.g.dart';

class NotesModel = NotesModelBase with _$NotesModel;

abstract class NotesModelBase implements Store {
  @observable
  List<Note> notes = [];

  @observable
  int notes_count = 0;

  @action
  addNote(Note note) {
    notes.add(note);
    notes_count++;
  }

  @action
  getAllNotes() {
    return notes;
  }
}
