import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/notes_list_view.dart';
import 'custom_app_bar.dart';

class NotesViewsBody extends StatelessWidget {
  const NotesViewsBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children:  [
          SizedBox(height: 50),
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
         Expanded(child: NotesListView(), ) 
        ],
      ),
    );
  }
}

