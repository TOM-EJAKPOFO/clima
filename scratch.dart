void main() {
  performTask();
}

void performTask() async {
  task1();
  String DATA = await task2();
  task3(DATA);
}

String task1() {
  String result = 'task 1 data';
  print('Task 1 data completed.');
  return result;
}

Future task2() async {
  Duration threeSeconds = Duration(seconds: 3);

  String result;
  await Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('Task 2 data completed.');
  });
  return result;
}

void task3(task2data) {
  print('Task 3 data completed with $task2data');
}
