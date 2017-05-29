//
//  Endpoints.swift
//  Total Coop
//
//  Created by Akapo Damilola Francis on 23/05/2017.
//  Copyright © 2017 CottaCush. All rights reserved.
//

import Foundation

public struct Endpoints {
    static let current_config: ServerEnums = ServerEnums.sample;
    public static func apiOne() -> String! {
        return "\(ConfigLoader.loadCurrentConfig(serverenum: current_config).url)/path";
    }
}
