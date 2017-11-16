//
//  Protocols.swift
//  SingleViewAppSwiftTemplate
//
//  Created by mac on 11/9/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation


//MARK: - Access Protocol
protocol Accessable {
    
    var AreaAccess: AreaAccess { get }
    var RideAccess: RideAccess { get }
    
    
}

protocol Maintanable {
    
    var kitchenAccess: Bool { get }
    var rideControlAccess: Bool { get }
    var maintenanceAccess: Bool { get }
    var officeAccess: Bool { get }
    
}


//MARK: - Discount Protocol
protocol Discountable {
    
    
    var foodDiscountable: Bool { get }
    var merchDiscountable: Bool { get }
    var foodDiscount: Double { get }
    var merchDiscount: Double { get }
    
}


//MARK: - LineSkip Protocol
protocol Skiplinable {
    
    var skipLines: LineAccess { get }
}

//MARK: - Age Protocol
protocol AgeEligible {
    
    var dateOfBirth: String? { get }
    
}


//MARK: - Fullname Protocol
protocol Fullnameable {
    
    var firstName: String? { get }
    var lastName: String? { get }
    var fullName: String? { get }
    
}


//MARK: - Address Protocol 
protocol Addressable {
    
    var streetAddress: String? { get }
    var city: String? { get }
    var state: String? { get }
    var zipCode: String? { get }
    
}
