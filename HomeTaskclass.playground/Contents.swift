import UIKit
import Foundation

// MARK: - Task - Cамостоятельно
// 1. Создайте структуру студент.
// Добавьте свойства: имя, фамилия, год рождения, средний бал.
// Создайте несколько экземпляров этой структуры и заполните их данными.
// Положите их всех в массив (журнал).

struct Student {
    let name: String
    let surname: String
    let year: Int
    let averageMark: Double
}
let student1: Student = Student(name: "Алексей", surname: "Петров", year: 1995, averageMark: 8.7)
let student2: Student = Student(name: "Иван", surname: "Кузнецов", year: 1993, averageMark: 8.3)
let student3: Student = Student(name: "Олег", surname: "Петров", year: 1990, averageMark: 7.3)
let student4: Student = Student(name: "Илья", surname: "Сидоров", year: 1991, averageMark: 6.0)
let student5: Student = Student(name: "Геннадий", surname: "Павлов", year: 1992, averageMark: 9.1)

var journal: [Student] = []
journal.append(student1)
journal.append(student2)
journal.append(student3)
journal.append(student4)
journal.append(student5)


// 2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого.
// Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.

func getJournal(for journal: [Student]) {
    for (i, v) in journal.enumerated() {
        print("\(i + 1) - \(v)")
    }
}
getJournal(for: journal)
print("-------------")

// 3. Отсортируйте массив по среднему баллу по убыванию и распечатайте “журнал”.
func getSortByMark(for journal: [Student]) {
    let newJournal = journal.sorted{$0.averageMark > $1.averageMark}
    for (i, v) in newJournal.enumerated() {
        print("\(i + 1) - \(v)")
    }
}
getSortByMark(for: journal)
print("-------------")

// 4. Отсортируйте теперь массив по фамилии (по возрастанию).
// Eсли фамилии одинаковые, то сравнивайте по имени. Распечатайте “журнал”.

func getSortByName(for journal: [Student]) {
    let newJournal = journal.sorted{
        $0.surname == $1.surname ? $0.name < $1.name : $0.surname < $1.surname}
    for (i, v) in newJournal.enumerated() {
        print("\(i + 1) - \(v)")
    }
}
getSortByName(for: journal)

print("-------------")


// 5. Создайте переменную и присвойте ей ваш существующий массив.
// Измените в нем данные всех студентов.
// Изменится ли первый массив? Распечатайте оба массива.

// TODO: - Напишите свое решение самостоятельно!!!
var newJournal: [Student] = journal
newJournal[0] = Student(name: "Mike", surname: "Vasovski", year: 1990, averageMark: 7.0)
newJournal[1] = Student(name: "Nik", surname: "Elski", year: 1991, averageMark: 7.2)
newJournal[2] = Student(name: "Viktor", surname: "Peski", year: 1991, averageMark: 7.2)
newJournal[3] = Student(name: "Erzan", surname: "Travis", year: 1991, averageMark: 7.2)
newJournal[4] = Student(name: "Goga", surname: "Robinov", year: 1991, averageMark: 7.2)

for (i, v) in newJournal.enumerated() {
    print("\(i + 1) - \(v)")
}
print("-------------")

for (i, v) in journal.enumerated() {
    print("\(i + 1) - \(v)")
}



// MARK: - Task

// 1. Создайте класс студент
// Добавьте свойства: имя, фамилия, год рождения, средний бал.
// Создайте несколько экземпляров этого класса и заполните их данными.
// Положите их всех в массив (журнал).

class NewStudent {
    var name: String
    var surname: String
    var year: Int
    var averageMark: Double
    
    init(name: String, surname: String, year: Int, averageMark: Double) {
        self.name = name
        self.surname = surname
        self.year = year
        self.averageMark = averageMark
    }
}


let newStudent1: NewStudent = NewStudent(name: "Алексей", surname: "Петров", year: 1991, averageMark: 9.0)
let newStudent2: NewStudent = NewStudent(name: "Иван", surname: "Кузнецов", year: 1993, averageMark: 8.3)
let newStudent3: NewStudent = NewStudent(name: "Олег", surname: "Петров", year: 1990, averageMark: 7.3)
let newStudent4: NewStudent = NewStudent(name: "Илья", surname: "Сидоров", year: 1991, averageMark: 6.0)
let newStudent5: NewStudent = NewStudent(name: "Геннадий", surname: "Павлов", year: 1992, averageMark: 9.1)

var classJournal: [NewStudent] = []
classJournal.append(newStudent1)
classJournal.append(newStudent2)
classJournal.append(newStudent3)
classJournal.append(newStudent4)
classJournal.append(newStudent5)
print("-------------")

// 2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого.
// Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.

func getClassJournal(for journal: [NewStudent]) {
    for (i, v) in classJournal.enumerated() {
        print("№\(i + 1) - имя: \(v.name), фамилия: \(v.surname), г.р.: \(v.year), средний балл: \(v.averageMark)")
    }
}
getClassJournal(for: classJournal)
print("-------------")

// 3. Отсортируйте массив по среднему баллу по убыванию и распечатайте “журнал”.

func getSortClassByMark(for journal: [NewStudent]) {
    let newJournal = journal.sorted{$0.averageMark > $1.averageMark}
    for (i, v) in newJournal.enumerated() {
        print("№\(i + 1) - имя: \(v.name), фамилия: \(v.surname), г.р.: \(v.year), средний балл: \(v.averageMark)")
    }
}
getSortClassByMark(for: classJournal)
print("-------------")

// 4. Отсортируйте теперь массив по фамилии (по возрастанию).
// Eсли фамилии одинаковые, то сравнивайте по имени. Распечатайте “журнал”.

func getSortClassByName(for journal: [NewStudent]) {
    let newJournal = journal.sorted{
        $0.surname == $1.surname ? $0.name < $1.name : $0.surname < $1.surname}
    for (i, v) in newJournal.enumerated() {
        print("№\(i + 1) - имя: \(v.name), фамилия: \(v.surname), г.р.: \(v.year), средний балл: \(v.averageMark)")
    }
}
getSortClassByName(for: classJournal)

print("-------------")

// 5. Создайте переменную и присвойте ей ваш существующий массив.
// Измените в нем данные всех студентов.
// Изменится ли первый массив?

var newClassJournal: [NewStudent] = classJournal
// Если изсенять значения таким способом, по одному через свойства, то первый журнал тоже изменится, а если через новую инициализацию значения то ничего не изменится
newClassJournal[0].name = "Alex"
newClassJournal[1].name = "Bred"
newClassJournal[2].name = "Hope"
newClassJournal[3].name = "Trevis"
newClassJournal[4].name = "Helga"

newClassJournal[0] = NewStudent(name: "Mike", surname: "Vasovski", year: 1990, averageMark: 7.0)
newClassJournal[1] = NewStudent(name: "Nik", surname: "Gogy", year: 1990, averageMark: 7.3)
newClassJournal[2] = NewStudent(name: "Sam", surname: "Tomas", year: 1990, averageMark: 5)
newClassJournal[3] = NewStudent(name: "Nikole", surname: "Herold", year: 1990, averageMark: 9.3)
newClassJournal[4] = NewStudent(name: "Smith", surname: "Pice", year: 1990, averageMark: 5.6)

for (i, v) in newClassJournal.enumerated() {
    print("№\(i + 1) - имя: \(v.name), фамилия: \(v.surname), г.р.: \(v.year), средний балл: \(v.averageMark)")
}

print("-------------")


for (i, v) in classJournal.enumerated() {
    print("№\(i + 1) - имя: \(v.name), фамилия: \(v.surname), г.р.: \(v.year), средний балл: \(v.averageMark)")
}


// 6. Сравните результаты после использования класса и структуры.

// TODO: - Напишите свое решение самостоятельно!!!

