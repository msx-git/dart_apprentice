void main() {
  final repository = NoteRepository();
  final notes = repository.getAllNotes();

  final note1 = Note(id: 1, title: "Finish the project");
  final note2 = Note(id: 2, title: "Finish the homework");

  repository.addNote(note1);
  repository.addNote(note2);

  for (final note in notes) {
    print("ID: ${note.id} , note: ${note.title}");
  }
}

class Note {
  int id;
  String title;

  Note({
    required this.id,
    required this.title,
  });

  @override
  String toString() {
    return 'id: $id, title: $title';
  }
}

abstract class NoteRepository {
  factory NoteRepository() => FakeNoteRepository();

  List<Note> getAllNotes();

  Note? getNoteById(int id);

  void addNote(Note note);

  void deleteNote(int id);
}

class FakeNoteRepository implements NoteRepository {
  final List<Note> _notes = [];

  @override
  void addNote(Note note) {
    _notes.add(note);
  }

  @override
  void deleteNote(int id) {
    _notes.removeWhere((note) => note.id == id);
  }

  @override
  List<Note> getAllNotes() {
    return _notes;
  }

  @override
  Note? getNoteById(int id) {
    return _notes.firstWhere((note) => note.id == id);
  }
}
