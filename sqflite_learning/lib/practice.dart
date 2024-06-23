import 'package:flutter/material.dart';

import 'package:whatsapp_clone/modelclass.dart';
import 'package:whatsapp_clone/sqflite_helper.dart';

class NoteListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Note List'),
      ),
      body: NoteList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddNoteScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class NoteList extends StatefulWidget {
  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  List<Map<String, dynamic>>? _notes = [];

  @override
  void initState() {
    super.initState();
    _loadNotes();
  }

  Future<void> _loadNotes() async {
    List<Map<String, dynamic>>? notes = await DBHelper.instance.read();
    setState(() {
      _notes = notes;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_notes == null || _notes!.isEmpty) {
      return Center(
        child: Text('No notes available'),
      );
    }

    return ListView.builder(
      itemCount: _notes!.length,
      itemBuilder: (context, index) {
        Map<String, dynamic> note = _notes![index];
        return ListTile(
          title: Text(note['title']),
          subtitle: Text(note['message']),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () => _deleteNoteAndReload(note['id']),
          ),
        );
      },
    );
  }

  Future<void> _deleteNoteAndReload(int id) async {
    await DBHelper.instance.delete(id);
    _loadNotes();
  }
}

class AddNoteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Note'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            Note newNote = Note(
              title: 'New Note', // The database will auto-generate the ID
              id: 8,
              message: 'This is a new note',
            );
            await DBHelper.instance.create(newNote);
            Navigator.pop(context);
          },
          child: Text('Add Note'),
        ),
      ),
    );
  }
}
