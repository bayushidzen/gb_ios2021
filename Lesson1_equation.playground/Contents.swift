import UIKit

var x1: Float16 = 0
var x2: Float16 = 0
var disc: Float16 = 0

let a: Float16 = 3.85
let b: Float16 = -9
let c: Float16 = 4

disc = b * b - 4 * a * c

if disc > 0 {
    x1 = (-b + sqrt(disc)) / (2 * a)
    x2 = (-b - sqrt(disc)) / (2 * a)
    print("X1 = \(x1); X2 = \(x2)")
} else if disc == 0 {
    x1 = (-b + sqrt(disc)) / (2 * a)
    print("X1 = X2 = \(x1)")
} else {
    print("Нет решений")
}
