import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24),
      child:  Column(
        children:   [
             SizedBox(height: 50),
          CustomAppBar(
            title: 'EditNote',
            icon: Icons.check,
          ),
          SizedBox(height: 50),
          CustomTextField(hint: 'Title'),
          SizedBox(height: 16),
           CustomTextField(hint: 'content', maxlines: 5,),
        ],
      ),
    );
  }
}