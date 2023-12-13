import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/milestones.dart';
import './milestone_item.dart';

class MilestoneList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final milestoneData = Provider.of<Milestones>(context);
    final milestones = milestoneData.items;
    return ListView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: milestones.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        // builder: (c) => products[i],
        value: milestones[i],
        child: MilestoneItem(
            // products[i].id,
            // products[i].title,
            // products[i].imageUrl,
            ),
      ),
    );
  }
}
