//
//  Access Methods.swift
//  SingleViewAppSwiftTemplate
//
//  Created by mac on 11/14/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation


//Amusement Area Access Method
func AmusementAreaAccess(guest: Accessable) -> Bool {
    
    var access: Bool
    
    if guest.AreaAccess == .amusementArea   {
        
        access = true
        print("Amusement Park Access Granted")
        
    } else {
        
        access = false
        print("No Access To Amusement Park")
    }
    
    return access
}


//Ride Area Access Method
func RideAreaAccess(guest: Accessable) -> Bool {
    
    var access: Bool
    
    if guest.RideAccess == .accessAllRides {
        
        access = true
        print("Ride Access Granted")
        
    } else {
        
        access = false
        print("Access to some rides")
    }
    
    return access

}


//Skip All Lines Access Method
func SkipLinesAccess(guest: Skiplinable) -> Bool {
    
    var access: Bool
    
    if guest.skipLines == .skipAllRideLine {
        
        access = true
        print("Can Skip Lines")
        
        
    } else {
        
        access = false
        print("No access to skip all lines")
    }
    
    return access
    
}



//Kitchen Area Access Method
func KitchenAreaAccess(employee: Maintanable) -> Bool {
    
    var access: Bool
    
    if employee.kitchenAccess == true {
        
        access = true
        print("Kitchen Access Granted")
        
    } else {
        
        access = false
        print("No access to kitchen Area")
    }
    
    return access
    }
    

//Ride Controll Access Methodd
func RideControllAccess(employee: Maintanable) -> Bool {
    
    var access: Bool
    
    if employee.rideControlAccess == true {
        
        access = true
        print("Ride Controll Access Granted")
        
    } else {
        
        access = false
        print("No access to ride control area")
        
    }
    return access 
}


//Maintenance Area Access Method
func MaintenanceAreaAccess(employee: Maintanable) -> Bool {
    
    var access: Bool
    
    if employee.maintenanceAccess == true {
        
        access = true
        print("Maintenance Access Granted")
        
    } else {
        
        access = false
        print("No access to maintenance Area")
    }
    
    return access
    
    
}


//Office Area Access Method
func OfficeAreaAccess(employee: Maintanable) -> Bool {
    
    var access: Bool
    
    if employee.officeAccess == true {
        
        access = true
        print("Office Access Granted")
        
    } else {
        
        access = false
        print("No access to Office area")
    }
    
    return access
}


//Food Discount Method
func FoodDiscountAccess(employee: Discountable) -> Bool {
    
    var discount: Bool
    
    if employee.foodDiscountable == true {
        
        discount = true
        print(employee.foodDiscount)
    } else {
        
        discount = false
        print ("This employee does not have a discount")
    }
    
    return discount
    
}


//Merchandise Discount Method
func MerchDiscountAccess(employee: Discountable) -> Bool {
    
    var discount: Bool
    
    if employee.merchDiscountable == true {
        
        discount = true
        print(employee.merchDiscount)
    } else {
        
        discount = false
        print("This employee does not have a merch discount")
    }
    
    return discount
}













