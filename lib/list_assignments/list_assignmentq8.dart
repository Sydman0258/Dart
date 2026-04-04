import 'dart:io';

void main() {
  Map<int, String> task = {};
  int select = 0;

  while (select != 4) {
    print(
      "Select 1 to add new task, 2 to view all task and 3 to delete task (4 to exit) :",
    );
    select = int.parse(stdin.readLineSync()!);

    if (select == 1) {
      addTask(task);
    } else if (select == 2) {
      viewTask(task);
    } else if (select == 3) {
      deleteTask(task);
    } else if (select == 4) {
      print("Exit Successful");
    } else {
      print("ERROR ERROR ERROR");
    }
  }
}

void addTask(Map<int, String> task) {
  print("Write the task to be added : ");
  String input = stdin.readLineSync()!;
  task[task.length + 1] = input;
  print("Task added successfully");
}

void viewTask(Map<int, String> task) {
  print(task);
}

void deleteTask(Map<int, String> task) {
  print("Type the number of task to be deleted : ");
  int delete = int.parse(stdin.readLineSync()!);
  task.remove(delete);
}

//Siddhartha Bhattarai
