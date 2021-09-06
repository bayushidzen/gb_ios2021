import UIKit

struct SportCar {
    let sportcar_brand_name: SportCat_Brand_Name
    let year_of_issue: Int
    var cargo_space: Int
    var engine_state: EngineState
    var windows_status: WindowsState
    var cargo_weight: Int
    mutating func cargoloading(cargo_weight: Int){
        self.cargo_weight = cargo_weight + 50;
    }
    mutating func cargouploading(cargo_space: Int){
        self.cargo_weight = cargo_weight - 50;
    }
    mutating func race_begin(engine_state: EngineState, windows_status: WindowsState, cargo_weight: Int ) {
        self.engine_state = .start;
        self.windows_status = .close;
        self.cargo_weight = 0
    }
}
struct TrunkCar {
    let trunk_brand_name: Trunk_Brand_Name
    let year_of_issue: Int
    var cargo_space: Int
    var engine_state: EngineState
    var windows_status: WindowsState
    var cargo_weight: Int
    mutating func cargoloading(cargo_weight: Int){
        self.cargo_weight = cargo_weight + 500;
    }
    mutating func cargouploading(cargo_space: Int){
        self.cargo_weight = cargo_weight - 500;
    }
}
enum EngineState{
    case start, stop
}
enum WindowsState{
    case open, close
}
enum CargoLoad {
    case load(cargo: Int), upload(cargo: Int)
}
enum SportCat_Brand_Name {
    case AstonMartin
    case Audi
    case Bugatti
    case Corvette
    case Dodge
    case Koenigsegg
    case Lamborghini
    case Mercedes
    case Pagani
}
enum Trunk_Brand_Name{
    case KAMAZ
    case MAZ
    case MAN
    case Foton
    case Scania
    case Volvo
    case FAW
    case Hyundai
    case HINO
    case Tonar
}

var BugattiVeyron = SportCar(sportcar_brand_name: .Bugatti, year_of_issue: 2015, cargo_space: 312, engine_state: .stop, windows_status: .open, cargo_weight: 100)
var KAMAZ5490NEO2 = TrunkCar(trunk_brand_name: .KAMAZ, year_of_issue: 2021, cargo_space: 44000, engine_state: .start, windows_status: .close, cargo_weight: 7000)
print(BugattiVeyron)
print(KAMAZ5490NEO2)
var i = 0 //Немного страдаю ерундой, провожу 10 погрузок, попутно открывая и закрывая окна)
while i<10 {
    KAMAZ5490NEO2.cargoloading(cargo_weight: KAMAZ5490NEO2.cargo_weight)
    if KAMAZ5490NEO2.windows_status == .close {
        KAMAZ5490NEO2.windows_status = .open
    } else {KAMAZ5490NEO2.windows_status = .close}
    i += 1
    print(i, KAMAZ5490NEO2.windows_status)
}
print(KAMAZ5490NEO2)
//Начинаем гонку на Bugatti Veyron и пока гонка будет вечной)
BugattiVeyron.race_begin(engine_state: BugattiVeyron.engine_state, windows_status: BugattiVeyron.windows_status, cargo_weight: BugattiVeyron.cargo_weight)
print(BugattiVeyron)
