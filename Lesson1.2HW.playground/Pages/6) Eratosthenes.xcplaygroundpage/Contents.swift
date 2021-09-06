import UIKit

//Ищем числа Эратосфена

var array100 = [Int]();
var p = 0;
var z = 0;
var n = 101;

for i in 2...n {
    if i % 1 == 0 {
        array100.append(i)}
}
print("Массив простых чисел:",array100)

while Double(z) < sqrt(Double(array100[array100.count - 1])) {
    if p < array100[z] {
        p = array100[z]
        for i in stride(from: p*p, through: n, by: p) {
            if let j = array100.firstIndex(of: i) {
                    array100.remove(at: j)
            }};print("Массив чисел Эратосфена:",array100);
        z += 1;
    }
}
print("Массив чисел Эратосфена:",array100);
