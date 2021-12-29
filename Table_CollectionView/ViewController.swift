//
//  ViewController.swift
//  Table_CollectionView
//
//  Created by JOEYCO-0072PK on 28/12/2021.
//

import UIKit

class ViewController: UIViewController{

    
    
    @IBOutlet weak var MyTable: UITableView!
    @IBOutlet weak var MyCollection: UICollectionView!
    var records = [Attendance]()
    
    
    
    var parser = Parser()
    var user = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        parser.parse()
        //print()
        let day1 = Attendance(TimeIn: "12:00 PM",TimeOut: "9:00 PM");
        records.append(day1)
        let day2 = Attendance(TimeIn: "12:20 PM",TimeOut: "9:20 PM");
        records.append(day2)
        let day3 = Attendance(TimeIn: "12:10 PM",TimeOut: "9:10 PM");
        records.append(day3)
        let day4 = Attendance(TimeIn: "12:05 PM",TimeOut: "9:05 PM");
        records.append(day4)
        let day5 = Attendance(TimeIn: "12:15 PM",TimeOut: "9:15 PM");
        records.append(day5)
        let day6 = Attendance(TimeIn: "12:25 PM",TimeOut: "9:25 PM");
        records.append(day6)
        
        MyTable.dataSource = self
        
    }
        // Do any additional setup after loading the view.
    }



extension  ViewController:   UITableViewDataSource, UITableViewDelegate{
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return user.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = MyTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
    
            cell.TimeIn.text = user[indexPath.row].name
            cell.TimeOut.text = user[indexPath.row].city
    
            return cell
    
        }
    
    }

