import UIKit

//Создаем возрастающий массив из 100 элементов

var array100: [Int] = []

for i in 1...100 {
    array100.append(i)
}
print("Наш массив:",array100)

// Удаляем четные числа и числа, которые не делятся на 3

//Тут удаляем четные числа
for i in array100 {
    if (i % 2) == 0{
        array100.remove(at: array100.firstIndex(of: i)!)
    }
}
print("Наш массив без четных чисел:",array100)
//Тут удаляем числа, которые не делятся на 3
for i in array100 {
    if (i % 3) != 0{
        array100.remove(at: array100.firstIndex(of: i)!)
    }
}
print("Наш массив без лишних чисел:",array100)
