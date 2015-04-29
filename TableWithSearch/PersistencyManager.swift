//
//  PersistencyManager.swift
//  TableWithSearch
//
//  Created by RWBook Retina on 23-04-15.
//  Copyright (c) 2015 RWSurf. All rights reserved.
//

import UIKit
import Parse

class PersistencyManager: NSObject {
    
    private var persons = [Person]()
    
    override init (){
        super.init()
        
        var query = PFQuery(className:"Person")
        
        query.findObjectsInBackgroundWithBlock { (objects: [AnyObject]?, error: NSError?) -> Void in
            if error == nil {
                if let objects = objects as? [PFObject] {
                    for p in objects {
                        var person : Person = Person(name: p["name"] as String , socialGroup: p["socialGroup"] as String)
                        self.persons.append(person)
                    }
                    NSNotificationCenter.defaultCenter().postNotificationName("EndTableContentLoading", object: self, userInfo: ["allPersons": self.persons])
                }
            } else {
            }}

        /*var allPersons = query.findObjects()
        if let allPersons = allPersons as? [PFObject]{
            for p in allPersons {
                var person : Person = Person(name: p["name"] as String , socialGroup: p["socialGroup"] as String)
                self.persons.append(person)
            }
        
        }*/
        
    }

    func GetAllPersons() -> [Person] {

        return (persons)
    }

}
