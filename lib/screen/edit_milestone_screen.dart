import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/milestone.dart';
import '../models/milestones.dart';

class EditMilestoneScreen extends StatefulWidget {
  static const routeName = '/edit-milestone';

  @override
  State<EditMilestoneScreen> createState() => _EditMilestoneScreenState();
}

class _EditMilestoneScreenState extends State<EditMilestoneScreen> {
  final _priceFocusNode = FocusNode();
  final _descriptionFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
