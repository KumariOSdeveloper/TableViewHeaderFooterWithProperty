//
//  ViewController.swift
//  TableViewHeaderFooterWithProperty
//
//  Created by Mahesh kumar on 23/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    // table view oulet
    @IBOutlet weak var tableViewOutlet: UITableView!
    
   override func viewDidLoad() {
        super.viewDidLoad()
    // set table view delegate and datasource if not set from storyboard
    tableViewOutlet.dataSource = self
    tableViewOutlet.delegate = self
        
    }
}

// Create extension for table view delegate and Datasource method
extension ViewController : UITableViewDataSource, UITableViewDelegate {
    
    
    /// Method to return the number row in section of table view cell
    /// - Parameters:
    ///   - tableView: Built in class, Designed to display the scrolling list of item (Data source Method)
    ///   - section: section of table view
    /// - Returns: number of row in section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 25
    }
    
    
    /// Method to display the detail on the cell of row for table view cell
    /// - Parameters:
    ///   - tableView: Built in class, Designed to display the scrolling list of item (Data source Method)
    ///   - indexPath: return index of cell
    /// - Returns: detail on the cell for row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row+1)"
        return cell
    }
    
    /// Method to create header view for table view
    /// - Parameters:
    ///   - tableView: Built in class, Designed to display the scrolling list of item (Delegate Method)
    ///
    ///   - section: header of the section
    /// - Returns: header view for table view
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: self.tableViewOutlet.frame.width, height: 50))
        headerView.backgroundColor = .orange
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: self.tableViewOutlet.frame.width, height: 50))
        label.text = "Header of the Table view "
        label.textAlignment = .center
        headerView.addSubview(label)
        return headerView
    }
    
    /// Method to display height for the table view header
    /// - Parameters:
    ///   - tableView: Built in class, Designed to display the scrolling list of item (Delegate Method)
    ///   - section: height for the header
    /// - Returns: height for the table view header
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    /// Method to create footer view for table view
    /// - Parameters:
    ///   - tableView: Built in class, Designed to display the scrolling list of item (Delegate Method)
    ///   - section: footer of the section
    /// - Returns: footer view for table view
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: self.tableViewOutlet.frame.width, height: 50))
        footerView.backgroundColor = .green
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: self.tableViewOutlet.frame.width, height: 50))
        label.text = " Footer of the Table view"
        label.textAlignment = .center
        footerView.addSubview(label)
        return footerView
    }
    
    /// Method to display height for the table view footer
    /// - Parameters:
    ///   - tableView: Built in class, Designed to display the scrolling list of item (Delegate Method)
    ///   - section: height for the footer
    /// - Returns: height for the table view footer
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 50
    }
    
    
}
