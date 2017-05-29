//
//  Response.swift
//  Total Coop
//
//  Created by Akapo Damilola Francis on 23/05/2017.
//  Copyright © 2017 CottaCush. All rights reserved.
//

import Foundation
import EVReflection

@objc(BaseResponse)
public class BaseResponse:EVObject {
    public var status: String! = "";
    public var error: String! = "";
}


/*
 Responses should extend the BaseResponse class
 */

@objc(LoginResponse)
public class LoginResponse: BaseResponse {
    public var data: [LoginData] = [];
}
