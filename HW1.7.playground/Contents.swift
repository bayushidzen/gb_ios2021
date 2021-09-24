import UIKit

enum fuelTankStatus {
    case full, empty
}

class TrunkCar {
    var modelName: String?
    var fuelTank: fuelTankStatus
    init(modelName: String?, fuelTank: fuelTankStatus) {
        self.modelName = modelName
        self.fuelTank = fuelTank
    }
    
    
    func raceReady() {
        if modelName != nil {
            print("Для рейса вы выбрали модель \(modelName!)")
        } else {
            print("Необходимо определиться с трансортом")
        }
    }
    func fullFuelTank() {
        guard fuelTank == .full else {
            return print ("Необходимо заправиться")
        }
            print("Транспорт заправлен, можно выходить в рейс")
    }
}

var KAMAZ = TrunkCar(modelName: "5490NEO2", fuelTank: .empty)
KAMAZ.modelName
KAMAZ.fuelTank
KAMAZ.raceReady()
KAMAZ.fullFuelTank()

//  2. Придумать класс, методы которого могут выбрасывать ошибки. Реализуйте несколько throws-функций. Вызовите их и обработайте результат вызова при помощи конструкции try/catch.
enum fatalErrors: Error {
    case youAreNotFirst
    case YouTooOld
}

enum gameRoles {
    case first, second, third, outsider
}


class racer {
    var racerName: String
    var racerClub: String
    var racerPosition: gameRoles?
    var racerAge: Int
    
    init(racerName: String, racerClub: String, racerPosition: gameRoles, racerAge: Int) {
        self.racerName = racerName
        self.racerClub = racerClub
        self.racerPosition = racerPosition
        self.racerAge = racerAge
    }
    func racerTest() throws  {
        guard racerPosition == .outsider else {
            throw fatalErrors.youAreNotFirst
        }
    }
        func racerCheck() throws {
            guard racerAge < 50 else {
                throw fatalErrors.YouTooOld
            }
        }
}
do {
    let Shum = try racer(racerName: "KD", racerClub: "BROOKLYN", racerPosition: .second, racerAge: 22)
    try Shum.racerTest()
} catch fatalErrors.YouTooOld {
    print("Сорян, ты слишком старый")
} catch fatalErrors.youAreNotFirst {
    print("Сорян, ты не первый") }

do {
    let Steph = try racer(racerName: "Steph", racerClub: "GsW", racerPosition: .first, racerAge: 30)
    try Steph.racerCheck()
} catch fatalErrors.YouTooOld {
    print("Сорян, ты слишком старый")
} catch fatalErrors.youAreNotFirst {
    print("Сорян, ты не первый") }


var racers = [
    racer.init(racerName: "Shum", racerClub: "Brooklyn", racerPosition: .outsider, racerAge: 18),
    racer.init(racerName: "Steph", racerClub: "Maserati", racerPosition: .outsider, racerAge: 55),
    racer.init(racerName: "Bam", racerClub: "De Tomaso", racerPosition: .outsider, racerAge: 21),
    racer.init(racerName: "DBook", racerClub: "Porsche", racerPosition: .outsider, racerAge: 24),
    racer.init(racerName: "Giannis", racerClub: "Lola Cars", racerPosition: .outsider, racerAge: 60)
    
]

for racer in racers {
    do {
        try racer.racerCheck()
        try racer.racerTest()
    } catch fatalErrors.YouTooOld {
        print("\(racer.racerName), ты слишком старый")
    } catch fatalErrors.youAreNotFirst {
        print("\(racer.racerName), ты не первый") }
}
