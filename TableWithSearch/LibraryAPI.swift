//
//  LibraryAPI.swift
//  TableWithSearch
//
//  Created by RWBook Retina on 23-04-15.
//  Copyright (c) 2015 RWSurf. All rights reserved.
//

import UIKit

class LibraryAPI: NSObject {
   private let persistencyManager: PersistencyManager
    
    class var sharedInstance: LibraryAPI {
        struct Singleton {
            static let instance = LibraryAPI()
        }
        return Singleton.instance
    }
    
    override init(){
        
        persistencyManager = PersistencyManager()
        super.init()
        
    }
    
    
    func getAllPersons() -> [Person] {
    
        return persistencyManager.GetAllPersons()
    }

    
    
}
