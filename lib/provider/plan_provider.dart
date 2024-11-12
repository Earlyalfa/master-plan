import 'package:flutter/material.dart';
import '../models/plan.dart'; // Pastikan sudah membuat model Plan

class PlanProvider extends InheritedNotifier<ValueNotifier<List<Plan>>> {
  const PlanProvider({
    super.key,
    required Widget child,
    required ValueNotifier<List<Plan>> notifier,
  }) : super(child: child, notifier: notifier);

  // Mendapatkan ValueNotifier yang berisi List<Plan> dari context
  static ValueNotifier<List<Plan>> of(BuildContext context) {
    final PlanProvider? result =
        context.dependOnInheritedWidgetOfExactType<PlanProvider>();
    return result!.notifier!;
  }
}


