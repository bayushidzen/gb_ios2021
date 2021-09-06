import UIKit

//Создаем массив из чисел Фибоначчи

func Fibos(paramOne: Int, paramTwo: Int) -> [Int] {
    let x = Int(paramOne);
    let y = Int(paramTwo);
    arrayF.append(x + y);
    return arrayF
}

var arrayF: [Int] = [0,1]

for i in 2...50 {
    Fibos(paramOne: arrayF[i - 1], paramTwo: arrayF[i - 2])
}
print(arrayF)
