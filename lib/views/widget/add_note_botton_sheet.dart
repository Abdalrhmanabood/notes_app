import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
           CustomTextField(
            hint: 'Content',
            maxlines: 5,
          ),
        ],
      ),
    );
  }
}