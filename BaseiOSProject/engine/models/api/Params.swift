//
//  Params.swift
//  Total Coop
//
//  Created by Akapo Damilola Francis on 23/05/2017.
//  Copyright © 2017 CottaCush. All rights reserved.
//

import Foundation
import EVReflection

@objc(BaseParam)
public class BaseParam: EVObject {
    
}


/*
 Params should extend the BaseParam class
 */

@objc(LoginParam)
public class LoginParam: BaseParam {
    public var username: String! = ""
    public var password: String! = ""
}
