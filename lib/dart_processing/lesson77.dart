import 'dart:io';

// Total Cost of each course
void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Usage: dart lesson71.dart <inputFile.csv>');
    exit(1);
  }

  final inputFile = arguments.first;
  final lines = File(inputFile).readAsLinesSync();
  final durationByTag = <String, double>{};
  lines.removeAt(0);
  for (var line in lines) {
    var rowItems = line.split(",");
    var durationStr = rowItems.elementAt(3).replaceAll('"', '');
    var duration = double.parse(durationStr);
    var tag = rowItems.elementAt(5).replaceAll('"', '');
    tag = tag == "" ? "Unallocated" : tag;
    final previosTotal =
        durationByTag[tag] == null ? duration : duration + durationByTag[tag]!;
    durationByTag[tag] = previosTotal;
  }
  for (var course in durationByTag.entries) {
    print("The couse price ${course.key} is ${course.value}");
  }
}
