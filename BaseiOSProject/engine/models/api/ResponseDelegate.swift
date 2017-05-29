//
//  ResponseDelegate.swift
//  Total Coop
//
//  Created by Akapo Damilola Francis on 23/05/2017.
//  Copyright © 2017 CottaCush. All rights reserved.
//

import Foundation

public protocol LoginCallback {
    func onSuccess(loginresponse response:LoginResponse?);
    func onFail(errormessage message:String);
}
