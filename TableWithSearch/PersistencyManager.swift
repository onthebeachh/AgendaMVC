//
//  PersistencyManager.swift
//  TableWithSearch
//
//  Created by RWBook Retina on 23-04-15.
//  Copyright (c) 2015 RWSurf. All rights reserved.
//

import UIKit

class PersistencyManager: NSObject {
    
    private var persons = [Person]()
    
    override init (){
    
        persons = [
            Person(name: "Sergio" ,socialGroup: "Rich"),
            Person(name: "Esteban" ,socialGroup: "Poor"),
            Person(name: "Daniel", socialGroup: "Poor"),
            Person(name: "Juan", socialGroup: "Poor"),
            Person(name: "Katie", socialGroup: "Rich"),
            Person(name: "Diego", socialGroup: "Homeless"),
            Person(name: "Mane", socialGroup: "Diego's"),
            Person(name: "Nikita", socialGroup: "Poor"),
            Person(name: "Pablo", socialGroup: "Fucked up")
        ]
    }
    
    func GetAllPersons() -> [Person] {
        return persons
    }
   
}
