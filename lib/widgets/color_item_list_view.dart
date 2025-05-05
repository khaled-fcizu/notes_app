import 'package:flutter/cupertino.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorItemListView extends StatefulWidget {
  const ColorItemListView({super.key});

  @override
  State<ColorItemListView> createState() => _ColorItemListViewState();
}

class _ColorItemListViewState extends State<ColorItemListView> {
  List<Color> colorsList = [
    Color(0xffFB3640),
    Color(0xff605F5E),
    Color(0xff1D3461),
    Color(0xff1F487E),
    Color(0xff247BA0),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colorsList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: colorsList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
