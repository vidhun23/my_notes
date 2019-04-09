class Note {
  String note = '';

  Note({this.note});

  factory Note.fromJson(Map<String, dynamic> jsonMap) {
    return Note(
      note: jsonMap['note'] ?? '',
    );
  }
}
