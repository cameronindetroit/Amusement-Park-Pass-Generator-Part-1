//
//  ViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Treehouse on 12/8/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        //MARK: - Classic Guest Test Cases
        
        
        //Classic guest generator test and Dictionary Generator Test
        let newClassicGuest = ClassicGuest(AreaAccess: .noAccess, RideAccess: .accessSomeRides)
        
        
        //Generate classic Guest with hard coded values
        let newGuest = ClassicGuestGenerator(guest: newClassicGuest)
        
        //Test Area Access
        GuestAreaAccessTest(guest: newGuest)
        
        
        
        
        //MARK: - VIP Guest Test Cases
        
        //VIP Guest Generator test and Dictionary Generator Test
        let newVIPGuests = VIPGuest(AreaAccess: .noAccess, RideAccess: .accessAllRides, skipLines: .skipAllRideLine)
        
        //Generate VIP Guest with hard coded values
        let newVIPGuest = VIPGuestGenerator(guest: newVIPGuests)
        
        
        //Test Area Access
        GuestAreaAccessTest(guest: newVIPGuest)
        
        //Test Line Access
        GuestAreaLineAccessTEst(guest: newVIPGuest)
        
        
        
        
        //MARK: -Child Guest Test Cases
        
        //Child Guest Generator test and Dictionary Test
        let childGuest = FreeChildGuest(AreaAccess: .amusementArea, RideAccess: .accessSomeRides, dateOfBirth: nil)
        
        //Generate Child Guest with hard coded values
        let newChildGuest = FreeChildGuestGenerator(guest: childGuest)
        
        
        //Test for Amusement Park Access
        GuestAreaAccessTest(guest: newChildGuest)
        
        
        
        
        
        
        
        //MARK: - Food Service Employee Test Cases
        
        
        //Food service employee
        let max = FoodserviceEmployee(AreaAccess: .amusementArea, RideAccess: .accessAllRides, firstName: "Max", lastName: "Williams", streetAddress: "13205 W. Canton", city: "Chicago", state: "IL", zipCode: "48293")
        
        //Generate food employee with hard coded values
        let newFoodEmplyee = FoodServiceEmployeetGenerator(employee: max)
        
        
        //Test Area Access
        FoodServiceAreaAccessTest(employee: max)
        DiscountTest(employee: max)
        
        
        
        
        //MARK: - Ride Controll Employee Test Cases
        
        
        //Ride service Employee
        let velma = RideServiceEmployee(AreaAccess: .amusementArea, RideAccess: .accessAllRides, firstName: "Velma", lastName: "Roberts", streetAddress: "2468 Roberts Drive", city: "Daniels", state: "NY", zipCode: "45329")
        
        
        //Generate Ride Service Guest
        let rideEmployee = RideSerivceEmployeeGenerator(employee: velma)
        
        //Test area Access
        RideServiceEmployeeAccessTest(employee: velma)
        DiscountTest(employee: velma)
        
        
        
        
        //MARK: - Maintenance Employee Test Cases
        
        //Maintnenance Employee
        let will = MaintenanceEmployee(AreaAccess: .amusementArea, RideAccess: .accessAllRides, firstName: "Will", lastName: "Webber", streetAddress: "2246 Cherry Lane", city: "Washington", state: "NorthCarolina", zipCode: "454532")
        
        //Generate MaintenanceService Guest
        let maintenanceEmployee = MaintenanceEmployeeGenerator(employee: will)
        
        //Test area Access
        MaintenanceEmployeeAreaAccessTest(employee: will)
        DiscountTest(employee: will)
        
        
        
        
        //MARK: -Manager Test Cases
        
        //Manager
        let natasha = Manager(AreaAccess: .amusementArea, RideAccess: .accessAllRides, firstName: "Natasha", lastName: "Rynolds", streetAddress: "rtetw 124", city: "Detroit", state: "MI", zipCode: "43522")
        
        
        //Generate Manager
        let manager = ManagerGenerator(employee: natasha)
        
        //Test area Access
        ManagerAccessTest(employee: natasha)
        DiscountTest(employee: natasha)

            
}
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    


}

