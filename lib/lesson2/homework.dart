void main() {
  ///
  /// Задание 1
  ///
  /// Есть массив юзеров. ['anna', 'viKtor', 'Mike', 'aleX', 'dan']
  /// Создайте из него новый массив так, чтобы имена начинались с большой буквы,
  /// а остальные символы были в нижнем регистре.
  /// Например, Anna, Viktor и так далее.
  ///
  List<String> users = ['anna', 'viKtor', 'Mike', 'aleX', 'dan'];
  print(formatNames(users));

  ///
  /// Задание 2
  ///
  /// Есть массив супергероев. Напишите функцию findUser, которая принимает два параметра.
  /// Первый — массив с героями, второй — имя героя.
  /// Эта функция ищет по имени героя в списке и возвращает нам объект с героем, например {"name": "Batman", "age": 30}.
  /// Если такого имени в списке нет, функция должна вернуть {name: Anonimus, age: 0}.

  List<Map<String, dynamic>> data = [
    {"name": "Batman", "age": 30},
    {"name": "Spiderman", "age": 18},
    {"name": "Kung fury", "age": 23},
    {"name": "Tor", "age": 550},
    {"name": "Halk", "age": 44},
    {"name": "Iron man", "age": 35},
  ];

  /// Пример:
  final hero = findUser(data, 'Iron man');
  print(hero);

  ///
  /// Задание 3
  ///
  /// Дополните код, чтобы при создании SuperMan вы могли передать скорость в canFly.
  ///
  SuperHero user = SuperHero(900);
  user.say();
}

abstract class Hero {
  void say();
}

mixin Fly {
  int get speed;

  void canFly() {
    print('Я могу летать со скорость $speed км/ч');
  }
}

mixin Jump {
  void canJump() {
    print('Я могу прыгать');
  }
}

class SuperHero extends Hero with Fly, Jump {
  final int speed;

  SuperHero(this.speed);

  @override
  say() {
    canFly();
    canJump();
  }
}

List<String> formatNames(List<String> names) {
  final List<String> result = [];
  names.forEach((user) => {
        result.add(user[0].toUpperCase() + user.substring(1).toLowerCase()),
      });
  return result;
}

Map<String, dynamic>? findUser(List<Map<String, dynamic>> heroes, String name) {
  bool found = false;
  for (var hero in heroes) {
    if (hero.containsValue(name)) {
      found = true;
      return hero;
    }
  }
  if (!found) {
    return {"name": "Anonimus", "age": 0};
  }
}
