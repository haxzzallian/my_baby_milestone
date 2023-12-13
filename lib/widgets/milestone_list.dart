import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/milestones.dart';
import './milestone_item.dart';

class MilestoneList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final milestoneData = Provider.of<Milestones>(context);
    final milestones = milestoneData.items;
    return GridView.builder(
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
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
