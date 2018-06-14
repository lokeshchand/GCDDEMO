//
//  ViewController.swift
//  GCDDEMO
//
//  Created by lokesh chand on 13/06/18.
//  Copyright © 2018 invetech. All rights reserved.
//

import UIKit
class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var tableData :[ModelData] = []
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let start = Date()
        //MARK: - this is the data we get from External(API,FireBase,other)
//       tableData = Data.getData()
        //print("Step 1")
        
        //MARK:- Background thread (Here We Take Total responce)
        DispatchQueue.global(qos: .userInteractive).async
            {
            self.tableData = Data.getData()
              
            //MARK:- Main UI thread
            DispatchQueue.main.async
                {
                self.tableView.reloadData()
                }
                // print("Step 4")
            }
        
       // print("Step 2")
        tableView.dataSource = self
        tableView.delegate = self
        let end = Date()
        print("Elapsed Time:\(end.timeIntervalSince(start))")
       // print("Step 3")
     
       
    }
 
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterCell") as! CharacterCell
        cell.setup(model: tableData[indexPath.row])
        return cell
    }
    


}

