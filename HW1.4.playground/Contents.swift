import UIKit

enum EngineState{
    case start, stop
}
enum WindowsState{
    case open, close
}
enum CargoLoad {
    case load(cargo: Int), upload(cargo: Int)
}
enum SportCar_Brand_Name {
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
enum EnginePosision {
    case front,middle,back
}
//1
class SuperCar {
    var year_of_issue: Int
    var cargo_space: Int
    var engine_state: EngineState
    var windows_status: WindowsState
    var cargo_weight: Int
    func emptyMethod () {}
    init(year_of_issue: Int,cargo_space: Int,engine_state: EngineState,windows_status: WindowsState,cargo_weight: Int) {
        self.year_of_issue = year_of_issue
        self.cargo_space = cargo_space
        self.engine_state = engine_state
        self.windows_status = windows_status
        self.cargo_weight = cargo_weight
    }
}
//2&3
class trunkCar: SuperCar {
    var trunk_brand_name: Trunk_Brand_Name
    var sleepspot: Int
    func cargoloading(cargo_weight: Int){
        self.cargo_weight = cargo_weight + 500;
    }
    func cargouploading(cargo_space: Int){
        self.cargo_weight = cargo_weight - 500;
    }
    func going_sleep (engine_state: EngineState, windows_status: WindowsState){
        self.engine_state = .stop
        self.windows_status = .close
    }
    func back_to_road(engine_state: EngineState, windows_status: WindowsState){
        self.engine_state = .start
        self.windows_status = .open
    }
    init(year_of_issue: Int,cargo_space: Int,engine_state: EngineState,windows_status: WindowsState,cargo_weight: Int,
         trunk_brand_name: Trunk_Brand_Name, sleepspot:Int) {
        self.trunk_brand_name = trunk_brand_name
        self.sleepspot = sleepspot
        super.init(year_of_issue: year_of_issue, cargo_space: cargo_space, engine_state: engine_state, windows_status: windows_status, cargo_weight: cargo_weight)
    }
}
class sportСar: SuperCar {
    var sportCar_brand_name: SportCar_Brand_Name
    var engine_posision: EnginePosision
    func engine_start(){
        self.engine_state = .start
    }
    func cargoloading(cargo_weight: Int){
        self.cargo_weight = cargo_weight + 50;
    }
    func cargouploading(cargo_space: Int){
        self.cargo_weight = cargo_weight - 50;
    }
    func race_begin(engine_state: EngineState, windows_status: WindowsState, cargo_weight: Int ) {
        self.engine_state = .start;
        self.windows_status = .close;
        self.cargo_weight = 0;}
    init(year_of_issue: Int,cargo_space: Int,engine_state: EngineState,windows_status: WindowsState,cargo_weight: Int,
         sportCar_brand_name: SportCar_Brand_Name, engine_posision: EnginePosision) {
        self.sportCar_brand_name = sportCar_brand_name
        self.engine_posision = engine_posision
        super.init(year_of_issue: year_of_issue, cargo_space: cargo_space, engine_state: engine_state, windows_status: windows_status, cargo_weight: cargo_weight)
    }
}
class Demon:sportСar {
    override func engine_start(){
        print("Это демонстрационный вариант. Двигатель запрещено запускать, но вы можете взять буклетик. Хорошего ня ^_^")
    }
}
var BugattiVeyron = sportСar(year_of_issue: 2015, cargo_space: 312, engine_state: .stop, windows_status: .open, cargo_weight: 100,sportCar_brand_name: .Bugatti, engine_posision: .back)
var KAMAZ5490NEO2 = trunkCar(year_of_issue: 2021, cargo_space: 44000, engine_state: .start, windows_status: .close, cargo_weight: 7000,trunk_brand_name: .KAMAZ, sleepspot: 1)
print(BugattiVeyron, BugattiVeyron.engine_posision)
print(KAMAZ5490NEO2, KAMAZ5490NEO2.engine_state, KAMAZ5490NEO2.windows_status)
BugattiVeyron.race_begin(engine_state: BugattiVeyron.engine_state, windows_status: BugattiVeyron.windows_status, cargo_weight: BugattiVeyron.cargo_weight)
print(BugattiVeyron)
var i = 0
while i<10 {
    KAMAZ5490NEO2.cargoloading(cargo_weight: KAMAZ5490NEO2.cargo_weight)
    i += 1
    //print(i, KAMAZ5490NEO2.cargo_weight)
}
print("Загружено",i,"палетов","Итоговый вес груза: ",KAMAZ5490NEO2.cargo_weight)
var BugattiVeyronDemon = Demon(year_of_issue: 2022, cargo_space: 312, engine_state: .stop, windows_status: .open, cargo_weight: 5,sportCar_brand_name: .Bugatti, engine_posision: .back)
print(BugattiVeyronDemon)
BugattiVeyronDemon.engine_start()
