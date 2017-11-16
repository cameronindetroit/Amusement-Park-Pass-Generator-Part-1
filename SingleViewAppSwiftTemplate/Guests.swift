

import Foundation


//MARK: - Guest Classes


// Classic Guest
class ClassicGuest: Accessable  {
    
    
    var AreaAccess: AreaAccess
    var RideAccess: RideAccess
    
    init(AreaAccess: AreaAccess, RideAccess: RideAccess) {
        self .AreaAccess = AreaAccess
        self .RideAccess = RideAccess
    }
    
    
    
    //ClassicGuest Array
    var classicGuestArray: [ClassicGuest] = []
    
}





//VIP Guest
class VIPGuest: ClassicGuest, Discountable, Skiplinable  {
    
        var foodDiscountable = true
        var merchDiscountable = true
        var foodDiscount = 0.10
        var merchDiscount = 0.20
        var skipLines: LineAccess
    
    init(AreaAccess: AreaAccess, RideAccess: RideAccess, skipLines: LineAccess) {
        
        self .skipLines = skipLines
        super.init(AreaAccess: AreaAccess, RideAccess: RideAccess)
    }
    
    //VIP Guest Array
    var VIPGuestArray: [VIPGuest] = []

    }






//Free Child Guest
class FreeChildGuest: ClassicGuest, AgeEligible {
    
    let dateOfBirth: String?

     init(AreaAccess: AreaAccess, RideAccess: RideAccess, dateOfBirth: String?) {
        self .dateOfBirth = dateOfBirth
        super.init(AreaAccess: AreaAccess, RideAccess: RideAccess)
        
    }
    
    //Child Guest Array
    var FreeChildGuestArray: [FreeChildGuest] = []
    
}


extension FreeChildGuest {
    //MARK: Free Child Guest Error
    
    
    // Child Guest Error Enum
    enum ChildGuestError: Error {
        case invalidBirthdate(description: String)
        
    }
    
    
    //Child Guest Error
    func freeChildGuest(_ guest:FreeChildGuest) throws -> FreeChildGuest {
        
        guard let dateOfBirth = guest.dateOfBirth else {
            throw ChildGuestError.invalidBirthdate(description: "Invalid date of birth")
        }
        
        return FreeChildGuest(AreaAccess: AreaAccess, RideAccess: RideAccess, dateOfBirth: dateOfBirth)
    }
    
}



//MARK: - Guest Generator Functions:




//ClassicGuest Generator 
func ClassicGuestGenerator(guest: ClassicGuest) -> ClassicGuest {
    
    let classicGuest = guest
    
    var array = classicGuest.classicGuestArray
    
    array.append(classicGuest)
    print(array[0])
    
    
    return classicGuest
    
}



//VIPGuest Generator
func VIPGuestGenerator(guest: VIPGuest) -> VIPGuest {
   
    let VIP = guest
    
    var array = VIP.VIPGuestArray
    
    array.append(VIP)
    print(array[0])
    
    return VIP
    
}



//MARK: - Child Guest Generator
func FreeChildGuestGenerator(guest: FreeChildGuest) -> FreeChildGuest {
    
    let childGuest = guest

    do {
        _ = try childGuest.freeChildGuest(childGuest)
        var array = childGuest.FreeChildGuestArray
        
        array.append(childGuest)
        print(array[0])
        
        func ChildGuestAgeTest(guest: FreeChildGuest) -> Bool {
            
            let newTest = guest
            
            let ageLimit = 06082008
            
            let guestDOB = newTest.dateOfBirth
            
            let DOBToInt = Int(guestDOB!)
            
            let access: Bool
            
            
            // test age limit verification
            if DOBToInt! < ageLimit {
                
                access = true
                print("You are old enough for this Ride!")
                
            } else {
                
                access = false
                print("You are too young for this ride")
            }
            
            
            let currentDate = Date()
            
            let timeInterval = currentDate.timeIntervalSince1970
            
            let dateInt = Int(timeInterval)
            
            
            //Test Birthday 
            
            if dateInt == DOBToInt {
                print("Happy Birthday!")
                
            } else {
                
                print("It's almost yor birthday!")
            }

            
            
            return access
        }
        
        ChildGuestAgeTest(guest: childGuest)
        
    } catch FreeChildGuest.ChildGuestError.invalidBirthdate(description: let description) {
        print(description)
    } catch {
        
    }
    

    return childGuest
    
}
