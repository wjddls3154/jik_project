//
//  FoodStore.swift
//  UiTableViewController Test 02
//
//  Created by amadeus on 2018. 6. 11..
//  Copyright © 2018년 lse. All rights reserved.
//

import Foundation
class FoodStore {
    var name: String
    var image: String
    var address: String
    var tel: String
    var menu: String
    var type: String
    
    init(name: String, image: String, address: String, tel: String, menu: String, type: String) {
        self.name = name
        self.image = image
        self.address = address
        self.tel = tel
        self.menu = menu
        self.type = type
    }
    
//    convenience init() {
//        self.init(name: "", image: "", address: "", tel: "", menu: "")
//    }
}
