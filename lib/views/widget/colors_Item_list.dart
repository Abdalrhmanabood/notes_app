
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/add_note_cubit/add_note_cubit.dart';
import 'color_item.dart';
class ColorItemList extends StatefulWidget {
  const ColorItemList({
    super.key,
  });

  @override
  State<ColorItemList> createState() => _ColorItemListState();
}

class _ColorItemListState extends State<ColorItemList> {
  int curentIndex = 0;
  List<Color> colors = const [

    Color(0xffAc3931),
    Color(0xffe5d352),
    Color(0xffd9e76c),
    Color(0xff537d8d),
    Color(0xff482c3d),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                curentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                setState(() {
                  
                });
              },
              child: ColorItem(
                color: colors[index],
                isSelect: curentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
