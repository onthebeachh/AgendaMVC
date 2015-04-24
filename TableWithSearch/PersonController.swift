//
//  PersonController.swift
//  TableWithSearch
//
//  Created by RWBook Retina on 23-04-15.
//  Copyright (c) 2015 RWSurf. All rights reserved.
//

import UIKit

class PersonController: UITableViewController{
    
    private var persons = [Person]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.persons = LibraryAPI.sharedInstance.getAllPersons()
        self.tableView.reloadData()
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.persons.count
        
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell

        let person = self.persons[indexPath.row]

        cell.textLabel!.text = person.name
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
    }

   

}