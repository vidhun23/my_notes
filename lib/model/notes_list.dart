class NotesList {
  List notes = [];

  NotesList({this.notes});

  factory NotesList.fromJson(List<dynamic> notes) {
    return NotesList(notes: notes);
  }
}
