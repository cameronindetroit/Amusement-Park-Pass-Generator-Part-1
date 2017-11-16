//
//  Discount Methods.swift
//  SingleViewAppSwiftTemplate
//
//  Created by mac on 11/14/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation


// Food Discount Access
func FoodDiscountAccess(member: Discountable) -> Bool {
    
    var access: Bool
    
    if member.foodDiscountable == true {
        
        access = true
        print("Discount Avaiaable")
    } else {
        access = false
        print("No discount avaialable")
    }
    return access
}



//Merch Discount Access
func MerchDiscountAccess(member: Discountable) -> Bool {
    
    var access: Bool
    
    if member.merchDiscountable == true {
        
        access = true
        print("Discount Available")
    } else {
        
        access = false
        print("No discount available")
    }
    
    return access
    
}

