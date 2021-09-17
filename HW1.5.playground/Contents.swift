import UIKit

protocol CustomStringConvertible {
    var description: String {get set}
}

protocol Car{
    var brand: Brand_Name {get}
    var year_of_issue: Int {get}
    var cargo_space: Int {get set}
    var model_name: String {get}
    var engine_state: EngineState {get set}
    var windows_status: WindowsState {get set}
    var cargo_weight: Int {get set}
}
enum EngineState{
    case start, stop
}
enum WindowsState{
    case open, close
}
enum EnginePosision {
    case front,middle,back
}
extension Car {
    func engineStartStop(engine: EngineState) {
        switch engine {
        case .start:
            print("Двигатель запущен")
        case .stop:
            print("Двигатель остановлен")
        }
    }
}
extension Car {
    func windowsOpenClose(windows: WindowsState) {
        switch windows {
        case .open:
            print("Окна открыты")
            case .close:
                print("Окна закрыты")
        }
    }
}
enum Brand_Name {
    case AstonMartin
    case Audi
    case Bugatti
    case Corvette
    case Dodge
    case Koenigsegg
    case Lamborghini
    case Mercedes
    case Pagani
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
class sportСar: Car, CustomStringConvertible {
    var brand: Brand_Name
    var year_of_issue: Int
    var cargo_space: Int
    var model_name: String
    var engine_posision: EnginePosision
    var engine_state: EngineState
    var windows_status: WindowsState
    var cargo_weight: Int
    var description: String
    init(brand: Brand_Name, model_name: String,year_of_issue: Int,cargo_space: Int,engine_posision: EnginePosision, engine_state: EngineState,windows_status: WindowsState,cargo_weight: Int,description: String) {
        self.brand = brand
        self.model_name = model_name
        self.year_of_issue = year_of_issue
        self.cargo_space = cargo_space
        self.engine_posision = engine_posision
        self.engine_state = engine_state
        self.windows_status = windows_status
        self.cargo_weight = cargo_weight
        self.description = description
    }
    
    func carInfo() {
            print("""
                  Марка авто: \(brand)
                  Модель авто: \(model_name)
                  Год выпуска: \(year_of_issue)
                  Расположение двигателя: \(engine_posision)
                  Объем багажника: \(cargo_space)
                  Использование CustomStringConvertible: \(description)
                  """)
        }
    
    func race_begin(engine_state: EngineState, windows_status: WindowsState, cargo_weight: Int ) {
        self.engine_state = .start;
        self.windows_status = .close;
        self.cargo_weight = 0;}
   }

class trunkСar: Car, CustomStringConvertible {
    var brand: Brand_Name
    var year_of_issue: Int
    var cargo_space: Int
    var model_name: String
    var engine_state: EngineState
    var windows_status: WindowsState
    var cargo_weight: Int
    var sleepspot: Int
    var description: String
    init(brand: Brand_Name, model_name: String,year_of_issue: Int,cargo_space: Int,engine_state: EngineState,windows_status: WindowsState,cargo_weight: Int,sleepspot: Int,description: String) {
        self.brand = brand
        self.model_name = model_name
        self.year_of_issue = year_of_issue
        self.cargo_space = cargo_space
        self.engine_state = engine_state
        self.windows_status = windows_status
        self.cargo_weight = cargo_weight
        self.sleepspot = sleepspot
        self.description = description
    }
    
    func carInfo() {
            print("""
                  Марка авто: \(brand)
                  Модель авто: \(model_name)
                  Год выпуска: \(year_of_issue)
                  Объем кузова: \(cargo_space)
                  Использование CustomStringConvertible: \(description)
                  """)
        }
}
var BugattiVeyron = sportСar(brand: .Bugatti, model_name: "Veyron", year_of_issue: 2015, cargo_space: 312, engine_posision: .back, engine_state: .stop, windows_status: .close, cargo_weight: 100, description: "new Buggati Veyron")
var Kamaz = trunkСar(brand: .KAMAZ, model_name: "5490NEO2", year_of_issue: 2021, cargo_space: 44000, engine_state: .stop, windows_status: .close, cargo_weight: 7000, sleepspot: 1, description: "Современный тягач с одним спальным местом")
BugattiVeyron.carInfo()
Kamaz.carInfo()
BugattiVeyron.race_begin(engine_state: .start, windows_status: .open, cargo_weight: 30)
BugattiVeyron.carInfo()
