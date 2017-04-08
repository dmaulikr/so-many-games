//
//  Platform.swift
//  SoManyGames
//
//  Created by Luke Charman on 19/03/2017.
//  Copyright © 2017 Luke Charman. All rights reserved.
//

import RealmSwift

class Platform: Object {

    dynamic var id: Int64 = 0
    dynamic var name: String = ""
    dynamic var abbreviation: String = ""

    convenience init?(withJSON json: JSONDictionary) {
        self.init()
        
        guard let id = json["id"] as? Int64,
            let name = json["name"] as? String,
            let abbreviation = json["abbreviation"] as? String else { return nil }

        self.id = id
        self.name = name
        self.abbreviation = abbreviation
    }

}
