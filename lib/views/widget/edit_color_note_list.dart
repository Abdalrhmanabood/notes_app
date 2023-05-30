import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/note_model.dart';
import 'color_item.dart';

class EditColorItemList extends StatefulWidget {
  const EditColorItemList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditColorItemList> createState() => _EditColorItemListState();
}

class _EditColorItemListState extends State<EditColorItemList> {
 late int curentIndex ;
  @override
  void initState() {
    curentIndex = kcolors.indexOf(Color(widget.note.color));
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kcolors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                curentIndex = index;
                widget.note.color = kcolors[index].value;
                 setState(() {});
              },
              child: ColorItem(
                color: kcolors[index],
                isSelect: curentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
