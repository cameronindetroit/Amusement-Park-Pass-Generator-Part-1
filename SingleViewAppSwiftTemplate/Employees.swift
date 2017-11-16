
import Foundation


//MARK: - Employee Classes 


//Base Employee
class Employee: Accessable, Addressable, Fullnameable {
    
    let AreaAccess: AreaAccess
    let RideAccess: RideAccess
    let firstName: String?
    let lastName: String?
    let streetAddress: String?
    let city: String?
    let state: String?
    let zipCode: String?
    
    
    init(AreaAccess: AreaAccess, RideAccess: RideAccess, firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: String?) {
        
        self.AreaAccess = AreaAccess
        self .RideAccess = RideAccess
        self .firstName = firstName
        self .lastName = lastName
        self .streetAddress = streetAddress
        self .city = city
        self .state = state
        self .zipCode = zipCode
        
    }
    
    //Employee Dictionary
    var employeeArray: [Employee] = []
    
    
}



//Full Name Employee Extention
extension Employee {
    
    var fullName: String? {
        return "\(firstName) \(lastName)"
    }
}


//MARK: -Employee Class error handling
extension Employee {
    
    //Employee Error enum
    enum employeeError: Error {
        case invalidData(description: String)
    }
    
    
    //Employee Error Function
    
    func employee(from employee: Employee) throws -> Employee {

        guard let firstName = employee.firstName else{
            
            throw employeeError.invalidData(description: "Invalid firstname Value")
        }
            

        guard let lastName = employee.lastName  else {
            
            throw employeeError.invalidData(description: "Invalid lastname value")
        }
        
        guard let streetAddress = employee.streetAddress else {
            
            throw employeeError.invalidData(description: "Invalid Address Value")
        }
        
        guard let state = employee.state else {
            
            throw employeeError.invalidData(description: "Invalid state Value")
        }
        
        guard let city = employee.city else {
            
            throw employeeError.invalidData(description: "Invalid City Value")
        }
        
        guard let zipCode = employee.zipCode else {
            
            throw employeeError.invalidData(description: "Invalid Zipcode Value")
            
        }
        
        return Employee(AreaAccess: AreaAccess, RideAccess: RideAccess, firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode)
    }
    
}




//Hourly Employee
class HourlyEmployee: Employee {
    
}



//Food Service Employee
class FoodserviceEmployee: HourlyEmployee, Discountable, Maintanable {
    
    let kitchenAccess = true
    let rideControlAccess = false
    let maintenanceAccess = false
    let officeAccess = false
    var foodDiscountable = true
    var merchDiscountable = true
    var foodDiscount = 0.15
    var merchDiscount = 0.25
    
}



//Ride Service Employee
class RideServiceEmployee: HourlyEmployee, Discountable, Maintanable {
    
    let rideControlAccess = true
    let kitchenAccess = false
    let maintenanceAccess = false
    let officeAccess = false
    var foodDiscountable = true
    var merchDiscountable = true
    var foodDiscount = 0.15
    var merchDiscount = 0.25
   
}


//Maintenance Employee
class MaintenanceEmployee: HourlyEmployee, Discountable, Maintanable {
    
    let kitchenAccess = false
    let rideControlAccess = true
    let maintenanceAccess = false
    let officeAccess = false
    var foodDiscountable = true
    var merchDiscountable = true
    var foodDiscount = 0.15
    var merchDiscount = 0.25
    
    
}
    
    
    
    
//Mananger
class Manager: Employee, Discountable,Maintanable {
        
    let kitchenAccess = true
    let rideControlAccess = true
    let maintenanceAccess = true
    let officeAccess = false
    var foodDiscountable = true
    var merchDiscountable = true
    var foodDiscount = 0.25
    var merchDiscount = 0.25

        
}





//FoodService Employee  Generator
func FoodServiceEmployeetGenerator(employee: Employee) -> Employee {
    
    let foodEmployee = employee
    
    do {
        _ = try employee.employee(from: foodEmployee)
        var array = foodEmployee.employeeArray
        array.append(foodEmployee)
        print(array[0].fullName!)
    } catch Employee.employeeError.invalidData(let description) {
        print(description)
        
    } catch {
        
    }
    
    return foodEmployee
}


//RideService Employee Generator
func RideSerivceEmployeeGenerator(employee: Employee) -> Employee {
    
   
    let rideEmployee = employee
    
    do {
        _ = try employee.employee(from: rideEmployee)
        var array = rideEmployee.employeeArray
        array.append(rideEmployee)
        print(array[0].fullName!)
    } catch Employee.employeeError.invalidData(let description) {
        print(description)
        
    } catch {
        
    }
    
    return rideEmployee
    
}



//Maintenance Employee Generator
func MaintenanceEmployeeGenerator(employee: Employee) -> Employee {
    
    
    let maintenanceEmployee = employee
    
    do {
        _ = try employee.employee(from: maintenanceEmployee)
        var array = maintenanceEmployee.employeeArray
        array.append(maintenanceEmployee)
        print(array[0].fullName!)
    } catch Employee.employeeError.invalidData(let description) {
        print(description)
        
    } catch {
        
    }
    
    return maintenanceEmployee

    
}


//Manager Employee Generator 
func ManagerGenerator(employee: Employee) -> Employee {
    
    let manager = employee
    
    do {
        _ = try employee.employee(from: manager)
        var array = manager.employeeArray
        array.append(manager)
        print(array[0].fullName!)
    } catch Employee.employeeError.invalidData(let description) {
        print(description)
        
    } catch {
        
    }
    
    return manager
    
    
}












