//
//  ConfigLoader.swift
//  Total Coop
//
//  Created by Akapo Damilola Francis on 23/05/2017.
//  Copyright © 2017 CottaCush. All rights reserved.
//

import Foundation

public struct ConfigLoader{
    public static func loadCurrentConfig(serverenum senum: ServerEnums) -> Config!{
        switch senum {
        case ServerEnums.sample:
            return Config.loadConfigFromPlist(plistname: PlistNames.SAMPLE)
        }
    }
}
