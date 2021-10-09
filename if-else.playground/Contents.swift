import UIKit

var greeting = "Hello, playground"
/* Задание 1. Напишите код, который будет выводить на консоль персонализированное приветствие пользователю в зависимости от его имени.
 Пусть в константе name хранится имя пользователя. Используя операторы управления (условия if и ветвления switch) реализуйте различный вывод на консоль в зависимости от значения в константе name
 Покажите варианты решения с использованием switch и if. Определите вывод на консоль для трех произвольных имен, а так же в блоке “во всех остальных случаях” (default и else). */
let name1 = "Дмитро"
let name2 = "Надежда"
let name3 = "Михайло"
var test = "Надя"
if test == name1 {
    print("Привет, \(name1)")
} else if test == name2 {
    print("Привет, \(name2)")
} else if test == name3 {
    print("Привет, \(name3)")
} else {
    print("Привет, новый пользователь")
}
//2 способ
switch test {
case name1:
    print("Привет, \(name1)")
case name2:
    print("Привет, \(name2)")
case name3:
    print("Привет, \(name3)")
default:
    print("Привет, новый пользователь")
}
/* Задание 2. У вас есть логическая переменная open, которая может принять одно из двух доступных значений (true или false) var open = true или var open = false
 
 Вам необходимо создать новую переменную типа String и инициализировать ей строковое значение:
 – если open равно true, то инициализировать "открыто"
 – если open равно false, то инициализировать "закрыто"*/
var open = true
if open {
    print("открыто")
} else {
    print("закрыто")
}

/* Задание 3
  Вам даны три переменные var1, var2 и var3 целочисленного типа Int
 Составьте программу, в конце которой в константе result будет находиться наибольшее из трех целочисленных значений*/
var one1 = 10
var two2 = 20
var three3 = 30
var array = [two2, three3, one1]
array.sort()
let result = array.max()
/* Задание 4
 
 Вы имеете три переменные-кортежа, содержащие координаты точек
 Напишите программу, которая определяет, может ли существовать треугольник с заданными координатами вершин*/
// Координаты
var (a, b, c): ((Double,Double), (Double,Double), (Double, Double)) = ((1, 1), (1, 3), (3, 1))
// Вычислим длины сторон
let aB = sqrt ((pow(b.0-a.0, 2)) + (pow(b.1-a.1, 2)))
let aC = sqrt ((pow(c.0-a.0, 2)) + (pow(c.1-a.1, 2)))
let bC = sqrt ((pow(c.0-b.0, 2)) + (pow(c.1-b.1, 2)))
// Сравниваем грани
var faceBc = (aB + aC) > bC
var faceAc = (aB + bC) > aC
var faceAb = (aC + bC) > aB
// Треугольник существует только тогда, когда сумма длин любых двух его сторон больше длины третьей
if faceBc && faceAc && faceAb {
    print("True triangle")
} else {
    print("False triangle")
}
/* Переменная lang может принимать 2 значения: "ru", "en". Если она имеет значение "ru", то в переменную days запишите массив дней недели на русском языке, а если имеет значение "en" – то на английском
 Покажите решение задачи через конструкцию switch-case*/
var lang = "en"
var days = [String]()
var chars = "down"
switch lang {
case "ru" where chars == "down":
    days = ["понедельник","вторник","среда","четверг"]
case "ru" where chars == "up":
    days = ["ПОНЕДЕЛЬНИК","вторник","среда","четверг"]
case "en" where chars == "up":
    days = ["MONDAY","tuesday","wednesday","thursday"]
case "en" where chars == "down":
    days = ["monday","tuesday","wednesday","thursday"]
default:
    break
}
days
/* задание 7. 1) Определите псевдоним Operation типу кортежа, содержащему три элемента со следующими именами: operandOne, operandTwo, operation.
 Первые два – это числа с плавающей точкой. Они будут содержать операнды для выполнения операции.
 Третий элемент – строковое значение типа Character. Оно будет содержать указатель на проводимую операцию. Всего может быть четыре вида операций: +, -, *, /.
 2) Создайте константу типа Operation и инициализируйте ей произвольное значение, к примеру (3.1, 33, "+")
 3) Используя конструкцию switch-case вычислите значение операции, указанной в элементе для операндов operandOne и operandTwo. Оператор switch должен корректно отрабатывать любую из четырех операций.
 4) Проверьте правильность работы конструкции по для следующих операций:

 (3.1, 33, "+")
 (24.9, 22.32, "*")
 (11.3, 5, "/")
 (5, 2.5, "-")*/
//1
typealias Operation = (operandOne: Double, operandTwo: Double, operation: Character)
//2
let oper: Operation = (operandOne: 12, operandTwo: 4, operation: "-")
//3
var resultOper: Double = 0
switch oper {
case (let a, let b, "+"):
    resultOper = a + b
case (let a, let b, "-"):
    resultOper = a - b
case (let a, let b, "/"):
    resultOper = a / b
case (let a, let b, "*"):
    resultOper = a * b
default:
    break
}





