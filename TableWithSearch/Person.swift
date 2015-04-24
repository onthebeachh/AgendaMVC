//
//  Person.swift
//  TableWithSearch
//
//  Created by RWBook Retina on 23-04-15.
//  Copyright (c) 2015 RWSurf. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    let socialGroup : String = String()
    let name : String = String()
 
    init(name :String, socialGroup: String){
        self.socialGroup = socialGroup
        self.name = name
        
    }
}
