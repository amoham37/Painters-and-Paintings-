//
//  MasterViewController.swift
//  PaintersAndPaintings
//
//  Created by Ahmet Mohammed on 3/9/19.
//  Copyright © 2019 Ahmet. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {




    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return painters.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let art = painters[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: art.type.rawValue, for: indexPath)
        
        // Configure the cell...
        
        cell.textLabel?.text = art.name
        cell.detailTextLabel?.text = art.shortDescription
        
        return cell
    }

    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let art = painters[indexPath.row]
        let title = art.name
        let message = String(Substring(art.type.rawValue))
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        let okayAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
        alertController.addAction(okayAction)
        present(alertController, animated: true, completion: nil)
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let detailViewController = segue.destination as? DetailViewController {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                detailViewController.art = painters[indexPath.row]
            }
        }
    }


}
