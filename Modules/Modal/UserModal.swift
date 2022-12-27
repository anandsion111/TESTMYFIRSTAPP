//
//  UserModal.swift
//  testInternal
//
//  Created by Total Solution on 14/10/22.
//


import Foundation
public class UserModal{
    public init(){}
    static var FullName = "FullName"
    static var Email = "Email"
    static var DOB = "DOB"
    static var Mobile = "Mobile"
    static var Education = "Education"
    static var Occupation = "Occupation"
    static var PinCode = "PinCode"
    static var Gender = "Gender"
    let util = Utils()
    public func getFullName()->Any{
        return util.getData(key: UserModal.FullName)
    }
    public func setFullName(value:String){
        util.setData(key: UserModal.FullName, value: value )
    }
    public func getEmail()->Any{
        return util.getData(key: UserModal.Email)
    }
    public func setEmail(value:String){
        util.setData(key: UserModal.Email, value: value )
    }
    public func getDob()->Any{
        return util.getData(key: UserModal.DOB)
    }
    public func setDob(value:String){
        util.setData(key: UserModal.DOB, value: value )
    }
    public func getMobile()->Any{
        return util.getData(key: UserModal.Mobile)
    }
    public func setMobile(value:String){
        util.setData(key: UserModal.Mobile, value: value )
    }
    public func getEducation()->Any{
        return util.getData(key: UserModal.Education)
    }
    public func setEducation(value:String){
        util.setData(key: UserModal.Education, value: value )
    }
    public func getOccupation()->Any{
        return util.getData(key: UserModal.Occupation)
    }
    public func setOccupation(value:String){
        util.setData(key: UserModal.Occupation, value: value )
    }
    public func getPinCode()->Any{
        return util.getData(key: UserModal.PinCode)
    }
    public func setPinCode(value:String){
        util.setData(key: UserModal.PinCode, value: value )
    }
    public func getGender()->Any{
        return util.getData(key: UserModal.Gender)
    }
    public func setGender(value:String){
        util.setData(key: UserModal.Gender, value: value )
    }
}
