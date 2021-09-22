import UIKit

struct someQueue<zaqwsx: Equatable> {
      var items = [zaqwsx]()
      mutating func enqueue(_ element: zaqwsx) {
          items.append(element)
      }
      mutating func dequeue() -> zaqwsx? {
          return items.removeFirst()
      }

      mutating func filter (_ ifilter: (zaqwsx) -> Bool) -> [zaqwsx] {
          var result = [zaqwsx]()
          for i in items {
              if ifilter(i) {
                  result.append(i)
              }
          }
          return result
      }

      subscript (index: Int) -> zaqwsx? {
          if index < items.count {
              return items[index]
          }
          return nil
          }
      }


  var z = someQueue<Int>()
  for i in 1...25 {
      z.enqueue(i)
  }


   let testfilter = z.filter() {$0 % 3 == 0}
  print(z)
  print(testfilter)
  print(z[2])
 
