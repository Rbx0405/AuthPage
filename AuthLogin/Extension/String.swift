//
//  String.swift
//  AuthLogin
//
//  Created by Rishit Butola on 23/08/24.
//

import Foundation
extension String{
    func isValidEmail()->Bool{
        
        //abc@gmail.com->true
        //abc.com->false
        let regex = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive)
        
        return regex.firstMatch(in: self,range: NSRange(location: 0, length: count)) != nil

        
    }
}
