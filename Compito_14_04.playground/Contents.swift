import UIKit

class Rooms {
    var ID: Int
    private var prenotate:Bool
    
    init(_ id: Int,_ prenotate:Bool) {
        self.ID = id
        self.prenotate = prenotate
    }
    
    var res_prenotate: Bool{
        get {
            return self.prenotate
        }
        set(prenotate) {
            self.prenotate = prenotate
        }
    }
    
    func toStr() -> String{
        return "ID:\(self.ID),prenotate:\(self.res_prenotate)"
    }
}

class SingleRooms: Rooms {
    var guests = 1
    var kitchenette: Bool
    
    init(_ ID: Int,_ kitchenette:Bool,_ prenotate:Bool) {
        self.guests = 1
        self.kitchenette = kitchenette
        super.init(ID, prenotate)
    }
    
    override func toStr() -> String{
        return "ID:\(self.ID), kitchenette:\(self.kitchenette)"
    }
}

class DoubleRooms: Rooms {
    var guests = 2
    var third_bed: Bool
    
    init(_ ID: Int,_ third_bed:Bool,_ prenotate:Bool) {
        self.guests = 1
        self.third_bed = third_bed
        super.init(ID, prenotate)
    }
}

class Hotel {
    var name: String
    var rooms:[Rooms] = []
    var SingleRoomsFree: [SingleRooms] = []
    var DoubleRoomsFree: [DoubleRooms] = []
    
    init(_ name: String,_ rooms:[Rooms]) {
        self.name = name
        self.rooms = rooms
    }
    
    func freeRooms() -> String {
        for item in rooms {
            if item is SingleRooms {
                if item.res_prenotate == false {
                    SingleRoomsFree.append(item as! SingleRooms)
                }
            }
            if item is DoubleRooms {
                if item.res_prenotate == false {
                    DoubleRoomsFree.append(item as! DoubleRooms)
                }
            }
        }
        return "There are a free \(SingleRoomsFree) single rooms and \(DoubleRoomsFree) double rooms."
    }
    
    func orderRooms(_ type:String) -> String {
        switch type {
        case "Singola":
            for item in SingleRoomsFree {
                item.res_prenotate = true
                return "\(item.toStr()) ready for your prenotation!"
            }
            return "No rooms free"
        case "Doppia":
            for item in DoubleRoomsFree {
                item.res_prenotate = true
                return "\(item.toStr()) ready for your prenotation!"
            }
            return "No rooms free"
        default:
            return "Error"
        }
    }
}

func main() {
    let room_102 = SingleRooms(102,true,true)
    let room_103 = SingleRooms(103,false,true)
    let room_104 = SingleRooms(104,true,true)
    
    let room_401 = DoubleRooms(401,false,false)
    let room_402 = DoubleRooms(402,true,false)
    let room_403 = DoubleRooms(403,true,true)
    
    let hotelMario = Hotel("Mario",[room_102,room_103,room_104,room_401,room_402,room_403])
    
    print(hotelMario.freeRooms())
    print(hotelMario.orderRooms("Singola"))
    print(hotelMario.orderRooms("Doppia"))
    print(hotelMario.orderRooms("mario"))
}

main()
