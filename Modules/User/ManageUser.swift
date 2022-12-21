//
//  ManageUser.swift
//  testInternal
//
//  Created by Total Solution on 11/10/22.
//


import Foundation
import UIKit
//import SwiftyJSON
import SwiftUI
import WebKit
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif
public class ManageUser : Codable{
    public init() {}
    
    struct ResponseData: Decodable {
        //  var Manageusers: [Manageusers]
        var fullName: String
        var email : String
        var dob : String
        var mobile : String
        var education : String
        var occupation : String
        var pincode : String
        var gender : String
    }
    //    struct Manageusers : Decodable {
    //        var name: String
    //
    //    }
     
     
    public func RegisterUser(Parameters: Any)->(Any){
        let result = ""
        print("Parameters:", Parameters)
        do{
            
           
            let JSONString1 = "\(Parameters)"
            
            let jsonData1 = JSONString1.data(using: .utf8)!
            let decoder1 = JSONDecoder()
            print("Checking.. 0")
            print("data",jsonData1)
            let json = try decoder1.decode(ResponseData.self, from: jsonData1)
            print("Checking.. 1")
            //let json = try! JSONDecoder().decode(JSON.self, from: jsonData)
            //print("List Count ",json.count)
            let FullName = json.fullName
            let Email = json.email
            let DOB = json.dob
            let Mobile = json.mobile
            let Education = json.education
            let Occupation = json.occupation
            let PinCode = json.pincode
            let Gender = json.gender
            print("Checking.. 2")
            
            /*
             let FullName = json["FullName"].stringValue
             let  Email = json["Email"].stringValue
             let DOB = json["DOB"].stringValue
             let Mobile = json["Mobile"].stringValue
             let Education = json["Education"].stringValue
             let Occupation = json["Occupation"].stringValue
             let PinCode = json["PinCode"].stringValue
             let Gender = json["Gender"].stringValue
             */
            //get device info
            print("Checking..3")
            let device = DeviceInfo()
            print("welcome")
            
            let firebasemessagingservice = firebaseMessagingService()
            let JsonData = """
{
"appName": "\(device.getAppName())",
"imei": "\(device.getImei())",
"profile": {
"appVersion": "\(device.getAppVersion())",
"deviceDetails": {
  "Locale": "\(device.getCountry())",
  "Language": "\(device.getLanguage())",
  "Version": "\(device.getDeviceVersion())",
  "Screen": "\(device.getScreenSize())",
  "Manufacturer": "\(device.getDeviceName())",
  "HWModel": "\(device.getDeviceModelName())"
},
"deviceId": "\(device.getDeviceId())",
"identifier": "\(device.getidentifier())",
"imei": "\(device.getImei())",
"platform": "\(device.getPlatform())",
"properties": {},
"token": "\(firebasemessagingservice.getFcmToken())",
"userDetails": {
  "FullName": "\(FullName)",
  "Email": "\(Email)",
  "DOB": "\(DOB)",
  "Mobile": "\(Mobile)",
  "Education": "\(Education)",
  "Occupation": "\(Occupation)",
  "PinCode": "\(PinCode)",
  "Gender": "\(Gender)"
},
"state": "",
"circle": ""
}
}
"""
            print("User Data==>\(JsonData)")
            let postData:String = JsonData
            
            
            
            
            
            //Call API for User Registration
            let apicall = api()
            // let result = ""
            let result = apicall.Call(requestBody:postData, method:"POST", EventUrl:"register-user")
            if(result as! String == "" || result == nil){
                let um = UserModal()
                um.setFullName(value: FullName)
                um.setDob(value: DOB)
                um.setEmail(value: Email)
                um.setMobile(value: Mobile)
                um.setGender(value: Gender)
                um.setEducation(value: Education)
                um.setOccupation(value: Occupation)
                um.setPinCode(value: PinCode)
                
            }
        }
        
        catch{
            print("Error \(error)")
        }
        return result
    }
}
