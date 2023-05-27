import 'package:flutter/material.dart';

import 'package:notes_app/views/widget/notes_views_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const NotesViewsBody(),
      floatingActionButton: FloatingActionButton(onPressed: (){} , child:const Icon(Icons.add),),
    );
  }
}
