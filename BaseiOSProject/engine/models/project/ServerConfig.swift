//
//  ServerConfig.swift
//  Total Coop
//
//  Created by Akapo Damilola Francis on 23/05/2017.
//  Copyright © 2017 CottaCush. All rights reserved.
//

import Foundation
import EVReflection


@objc(Config)
public class Config: EVObject{
    
    public var url: String! = "";
    public var name: String! = "";
    public var env_version: String! = "";
    public var env_type: String! = "";
    public var oauth_info: OauthInfo! = OauthInfo();
    

    public static func loadConfigFromPlist(plistname name:String!) -> Config!{
        let config = Config();
        let dict = loadDictionary(plistname: name);
        
        let oauth = dict["OAUTH_INFO"] as! [String: String]
        let oauth_info = OauthInfo();
        oauth_info.oauth_key = oauth["OAUTH_KEY"]
        oauth_info.oauth_secret = oauth["OAUTH_SECRET"]
        
        config.env_version = dict["ENV_VERSION"] as! String;
        config.name = dict["NAME"] as! String;
        config.env_type = dict["ENV_TYPE"] as! String;
        config.url = dict["URL"] as! String;
        config.oauth_info = oauth_info;
        return config;
    }
    
    private static func loadDictionary(plistname name:String!) -> [String: AnyObject] {
        if let path = Bundle.main.path(forResource: name, ofType: "plist"), let dict = NSDictionary(contentsOfFile: path) as? [String: AnyObject] {
            // use swift dictionary as normal
            return dict;
        }
        return [:];
    }
}

public class OauthInfo: EVObject {
    public var oauth_key: String! = "";
    public var oauth_secret: String! = "";
}
