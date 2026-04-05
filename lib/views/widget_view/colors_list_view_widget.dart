import 'package:flutter/material.dart';
import 'package:note_app/Cubits/addNoteCubit/add_note_cubit.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/views/widget_view/colors_list_item.dart';
import 'package:provider/provider.dart';

class ColorsListViewWidget extends StatefulWidget {
  const ColorsListViewWidget({super.key});

  @override
  State<ColorsListViewWidget> createState() => _ColorsListViewWidgetState();
}

class _ColorsListViewWidgetState extends State<ColorsListViewWidget> {
  // bool isChoice = true;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColorsList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                  Provider.of<AddNoteCubit>(context, listen: false).colorNote =
                      kColorsList[index];
                });
              },
              child: ColorsListItem(
                color: kColorsList[index],
                isChoice: selectedIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
