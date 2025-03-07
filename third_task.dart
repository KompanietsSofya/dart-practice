void main() {
  //Задание 1:
  // Создать текстовую переменную a = ‘hello world’; Написать функцию, которая меняет порядок слов на обратный. Например было ‘hello world’, стало ‘world hello’

  String reverse(String str) {
    return str.split(' ').reversed.join(
        ' '); //разбиваем строку по пробелам, меняем порядок слов, соединяем с пробелами
  }

  String a = 'hello world';
  print(reverse(a)); // Вызов функции

  // Задание 2:
  // Создать и проинициализировать массив чисел с произвольным размером.
  // Написать функцию, которая вычисляет среднее арифметическое число массива и возвращает результат.
  // Вывести результат в консоли.
  List<int> array = [1, 9, 3, 5, 10, 34, 66, 2];
  double arithmeticMean(List<int> arr) {
    double sum = 0;
    for (int i = 0; i < arr.length; i++) {
      sum += arr[i];
    }
    return sum / arr.length;
  }

  print("Среднее арифметическое равно : ${arithmeticMean(array)}");

  // Задание 3:
  // Написать функцию, которая вернет bool возможности получить подарок у покупателя
  // Параметрами функции являются bool “крупный город“, bool “новый покупатель” и int “стоимость заказа”.
  // Правила:
  // Минимальный порог заказа для получения подарков у новых покупателей (без заказов) – 800 р., у покупателей с заказами – 1990 р.
  // Подарочный каталог доступен только в крупных городах
  bool possibility(bool city, bool newBuyer, int cost)
  // => city && ((newBuyer && cost >= 800) || (!newBuyer && cost >= 1990));//сокращенная запись if-else
  {
    if (city == true &&
        ((newBuyer == true && cost >= 800) ||
            (newBuyer == false && cost >= 1990))) {
      return true;
    }
    return false;
  }

  print("Подарок положен покупателю? ${possibility(true, true, 7000)}");
}
