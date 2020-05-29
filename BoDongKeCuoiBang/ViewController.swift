//
//  ViewController.swift
//  BoDongKeCuoiBang
//
//  Created by admin on 2/3/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!
    var arrayName: [String] = ["mot","hai","ba","bon","nam","sau"]
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self
        // dong code de xoa dong ke trong table
        myTableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: myTableView.frame.size.width, height: 1))
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IDCell", for: indexPath)
        cell.textLabel?.text = arrayName[indexPath.row]
        return cell
    }


}

