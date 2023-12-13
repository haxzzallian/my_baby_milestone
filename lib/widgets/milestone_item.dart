import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/milestone.dart';

class MilestoneItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imageUrl;

  // ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final milestone = Provider.of<Milestone>(context, listen: false);
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      child: ListTile(
        onTap: () {
          ///go to milestone details
        },
        leading: CircleAvatar(
          //backgroundColor: _bgColor,
          radius: 30,
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: FittedBox(
              child: Text('\$milestone.milestoneDate'),
            ),
          ),
        ),
        title: Text(
          milestone.type,
        ),
        //subtitle: Text(milestone.remark),
      ),
      /*trailing: MediaQuery.of(context).size.width > 511
          ? FlatButton.icon(
              onPressed: () =>
                  widget.delTransaction(widget.updateTransactions.id),
              icon: const Icon(Icons.delete),
              label: const Text('Delete'),
              textColor: Theme.of(context).errorColor,
            )
          : IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () =>
                  widget.delTransaction(widget.updateTransactions.id),
              color: Theme.of(context).errorColor,
            ),*/
    );
  }
}
