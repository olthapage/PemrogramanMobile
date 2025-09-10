void main() {
  print("===== Prakikum 1 =====");
  String test = "test2";

  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") print("Test2 again");

  test = "true"; 

  if (test == "true") {
    print("Kebenaran");
  }
  print("");
  print("===== Prakikum 2 =====");
  int counter = 0;
  while (counter < 33) {
    print(counter);
    counter++;
  }

  do {
    print(counter);
    counter++;
  } while (counter < 77);

  print("");
  print("===== Prakikum 3 =====");
  for (int index = 10; index < 27; index++) {
    if (index == 21) break; 
    else if (index > 1 && index < 7) continue; 
    print(index);
  }

  print("");
  print("===== Tugas Praktikum =====");

  String nama = "Oltha Rosyeda Al'haq";
  String nim = "2341720145";

  print("Bilangan 1 sampai 201:\n");

  for (int i = 1; i <= 201; i++) {
    if (isPrima(i)) {
      print("$i. $nama, $nim");
    } else {
      print("$i.");
    }
  }
}

bool isPrima(int angka) {
  if (angka < 2) return false;
  for (int i = 2; i <= angka ~/ 2; i++) {
    if (angka % i == 0) return false;
  }
  return true;
}