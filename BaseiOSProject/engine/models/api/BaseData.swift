//
//  BaseData.swift
//  Total Coop
//
//  Created by Akapo Damilola Francis on 23/05/2017.
//  Copyright © 2017 CottaCush. All rights reserved.
//

import Foundation
import EVReflection

@objc(BaseData)
public class BaseData: EVObject {
    public var id: String! = "";
}

/*
 Data should extend the BaseData class
 */

@objc(LoginData)
public class LoginData: EVObject {
    
}
