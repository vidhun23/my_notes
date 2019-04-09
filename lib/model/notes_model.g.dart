// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies

mixin _$NotesModel on NotesModelBase, Store {
  final _$notesAtom = Atom(name: 'NotesModelBase.notes');

  @override
  List<Note> get notes {
    _$notesAtom.reportObserved();
    return super.notes;
  }

  @override
  set notes(List<Note> value) {
    _$notesAtom.context.checkIfStateModificationsAreAllowed(_$notesAtom);
    super.notes = value;
    _$notesAtom.reportChanged();
  }

  final _$notes_countAtom = Atom(name: 'NotesModelBase.notes_count');

  @override
  int get notes_count {
    _$notes_countAtom.reportObserved();
    return super.notes_count;
  }

  @override
  set notes_count(int value) {
    _$notes_countAtom.context
        .checkIfStateModificationsAreAllowed(_$notes_countAtom);
    super.notes_count = value;
    _$notes_countAtom.reportChanged();
  }

  final _$NotesModelBaseActionController =
      ActionController(name: 'NotesModelBase');

  @override
  dynamic addNote(Note note) {
    final _$actionInfo = _$NotesModelBaseActionController.startAction();
    try {
      return super.addNote(note);
    } finally {
      _$NotesModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getAllNotes() {
    final _$actionInfo = _$NotesModelBaseActionController.startAction();
    try {
      return super.getAllNotes();
    } finally {
      _$NotesModelBaseActionController.endAction(_$actionInfo);
    }
  }
}
