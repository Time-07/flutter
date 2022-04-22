import 'package:flutter/material.dart';
import 'package:trans_app/app/modules/search/presentation/search_controller.dart';

class CustomListView extends StatefulWidget {
  CustomListView({
    Key? key,
    required this.list,
    required this.controller,
  }) : super(key: key);

  final List<String> list;
  SearchController controller;

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
                  color: widget.controller.especialidade == item
                      ? Theme.of(context).colorScheme.secondaryVariant
                      : Theme.of(context).colorScheme.primary,
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary),
                  borderRadius: BorderRadius.circular(8)),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.controller.especialidade = item;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 5,
                  ),
                  child: Row(
                    children: [
                      widget.controller.especialidade == item
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
