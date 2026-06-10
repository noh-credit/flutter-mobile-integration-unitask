import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unitask/models/assignment.dart';
import 'package:unitask/services/assignment_api_service.dart';

final assignmentApiServiceProvider = Provider(
  (ref) => AssignmentApiService(),
);

// 전체 과제 목록, 나머지 분기
final assignmentProvider = AsyncNotifierProvider(
  AssignmentNotifier.new,
);

final inProgressAssignmentProvider = Provider(
  (ref) => ref
    .watch(assignmentProvider)
    .whenData(
      (l) => l.where((a) => !a.status.isCompleted).toList(),
    ),
);

class AssignmentNotifier extends AsyncNotifier<List<Assignment>> {
  @override
  FutureOr<List<Assignment>> build() {
    // TODO: implement build
    throw UnimplementedError();
  }

}