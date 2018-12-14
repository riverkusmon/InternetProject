//
//  InternetMasterViewController.swift
//  InternetProject
//
//  Created by Gardner, Andrew on 12/14/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class InternetMasterViewController: UITableViewController
{
    private weak var internetDetail : InternetDetailViewController? = nil
    private lazy var internetTopics : [String] = [String]()
    private lazy var addresses : [String] = [String]()
    
    private func setupDetailContents() -> Void
    {
        internetTopics = [
            "internet definitions",
            "standard search engine",
            "AP CSP",
            "Canyons District",
            "Ctec",
            "social media"
        ]
        
        addresses = [
            "https://www.google.com",
            "https://www.twitter.com",
            "https://www.youtube.com",
            "https://www.canyons.instructure.com",
            "https://www.ctec.canyonsdistrict.org"
        
        ]
        if let splitView = splitViewController
        {
            let currentControllers = splitView.viewControllers
            internetDetail = currentControllers[0] as? InternetDetailViewController
        }
    }
    
    
    
    public override func viewDidLoad() -> Void {
        super.viewDidLoad()
        
        setupDetailContents()
        self.clearsSelectionOnViewWillAppear = false
        
        if let split = splitViewController
        {
            let controllers = split.viewControllers
            internetDetail = (controllers[controllers.count-1] as! UINavigationController).topViewController as? InternetDetailViewController
        }
    }

    // MARK: - Table view data source

    public override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

}
