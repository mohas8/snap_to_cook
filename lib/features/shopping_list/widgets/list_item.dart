import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String item;
  final VoidCallback onRemove;

  const ListItem({Key? key, required this.item, required this.onRemove})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: onRemove,
      ),
    );
  }
}
