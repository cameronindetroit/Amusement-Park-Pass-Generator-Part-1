//
//  Test Methods.swift
//  SingleViewAppSwiftTemplate
//
//  Created by mac on 11/15/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation



// Test Area Access Function for Employee
func FoodServiceAreaAccessTest(employee: FoodserviceEmployee)  {
    
    let newTest = employee
    
    _ = AmusementAreaAccess(guest: newTest)
    
    _ = RideAreaAccess(guest: newTest)
    
    _ = KitchenAreaAccess(employee: newTest)
    
    
    
}


func MaintenanceEmployeeAreaAccessTest(employee: MaintenanceEmployee) {
    
    
    let newTest = employee
    
    _ = AmusementAreaAccess(guest: newTest)
    
    _ = RideAreaAccess(guest: newTest)
    
    _ = MaintenanceAreaAccess(employee: newTest)
    
    _ = KitchenAreaAccess(employee: newTest)
    
    _ = RideControllAccess(employee: newTest)
    
}


func RideServiceEmployeeAccessTest(employee: RideServiceEmployee) {
    
    
    let newTest = employee
    
    _ = AmusementAreaAccess(guest: newTest)
    
    _ = RideAreaAccess(guest: newTest)
    
    _ = MaintenanceAreaAccess(employee: newTest)
    
    _ = KitchenAreaAccess(employee: newTest)
    
    _ = RideControllAccess(employee: newTest)
    
    
}



func ManagerAccessTest(employee: Manager) {
    
    let newTest = employee
    
    _ = AmusementAreaAccess(guest: newTest)
    
    _ = RideAreaAccess(guest: newTest)
    
    _ = MaintenanceAreaAccess(employee: newTest)
    
    _ = KitchenAreaAccess(employee: newTest)
    
    _ = RideControllAccess(employee: newTest)
    
    _ = OfficeAreaAccess(employee: newTest)
    
    
}



//Employee Discount test Methods
func DiscountTest(employee: Discountable) {
    
    
    let newTest = employee
    
    _ = FoodDiscountAccess(employee: newTest)
    
    _ = MerchDiscountAccess(employee: newTest)
    
    
}



// Test Area Access Function for Guest
func GuestAreaAccessTest(guest: Accessable)  {
    
    let newTest = guest
    
    _ = AmusementAreaAccess(guest: newTest)
    
    _ = RideAreaAccess(guest: newTest)
    
}




//Test Line Access (skip line)
func GuestAreaLineAccessTEst(guest: Skiplinable) {
    
    let newTest = guest
    
    _ = SkipLinesAccess(guest: newTest)
}





