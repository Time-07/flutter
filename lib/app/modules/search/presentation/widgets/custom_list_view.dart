import 'package:flutter/material.dart';

class CustomListView extends StatefulWidget {
  const CustomListView({
    Key? key,
    required this.list,
    required this.option,
  }) : super(key: key);

  final List<String> list;
  final ValueNotifier<String> option;

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 16,
        direction: Axis.horizontal,
        children: [
          ...widget.list.map(
            (item) => Container(
              decoration: BoxDecoration(
                  color: widget.option.value == item
                      ? Theme.of(context).colorScheme.secondaryVariant
                      : Theme.of(context).colorScheme.primary,
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary),
                  borderRadius: BorderRadius.circular(8)),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.option.value = item;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 5,
                  ),
                  child: Row(
                    children: [
                      widget.option.value == item
                          ? const Icon(
                              Icons.check,
                              size: 15,
                            )
                          : Container(),
                      Text(
                        item,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
