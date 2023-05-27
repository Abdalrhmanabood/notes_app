import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/add_note_botton_sheet.dart';

import 'package:notes_app/views/widget/notes_views_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ) ,
              context: context,
              builder: (contex) {
                return const AddNoteBottomSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesViewsBody(),
    );
  }
}
