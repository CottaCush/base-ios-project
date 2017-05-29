//
//  ApiCalls.swift
//  Total Coop
//
//  Created by Akapo Damilola Francis on 23/05/2017.
//  Copyright © 2017 CottaCush. All rights reserved.
//

import Foundation
import Alamofire

public struct ApiCalls{
    
    public struct Authentication{
        static func login(loginparams params: LoginParam, responseprotocol prot:LoginCallback!){
            Alamofire.request(Endpoints.apiOne(), method: .post).responseString { (response) in
                switch response.result {
                case .success:
                    if let data = response.result.value {
                        prot.onSuccess(loginresponse: LoginResponse(json: data))
                    }else{
                        prot.onFail(errormessage: "Response is nil");
                    }
                case .failure(let error):
                    print(error)
                    prot.onFail(errormessage: error.localizedDescription);
                }
            }
        }
    }
}
