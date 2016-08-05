//
//  TableVC.swift
//  test
//
//  Created by i_yupingchen on 2016/8/5.
//  Copyright © 2016年 YupingChen. All rights reserved.
//

import UIKit

class TableVC: UITableViewController {
    
    override func viewDidLoad() {
        self.navigationItem.rightBarButtonItem = editButtonItem()
        let hignt = UIScreen.mainScreen().bounds.size.height
        print("\n== hignt =", hignt)
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath )
        cell.textLabel?.text = "111"
        return cell
    }
    
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    override func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {

        /*if (sourceIndexPath.row == destinationIndexPath.row && sourceIndexPath.section == destinationIndexPath.section) {
            return;
        }

//        self.performSelector(#selector(TableVC.delayedReloadData), withObject: tableView, afterDelay: 0)
    tableView.reloadData()*/
    }


    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        //let hignt = (UIScreen.mainScreen().bounds.size.height - 64 ) / 4
        //print("\n== hignt =", hignt)
        return 150.75//hignt
    }

}
