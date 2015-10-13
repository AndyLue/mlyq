//
//  ZhuSuDetailTableViewController.swift
//  MLYQ
//
//  Created by Andy on 15/10/10.
//  Copyright © 2015年 xiaoweigeWorking. All rights reserved.
//

import UIKit

class ZhuSuDetailTableViewController: UITableViewController,PPImageScrollingTableViewCellDelegate {
    
    var images = [["category":"农家院住宿特色",
                        "images":["name":"meinv3","name":"meinv3","name":"meinv3","name":"meinv3"]],
                  ["category":"农家院美食特色",
                        "images":["name":"meinv2","name":"meinv2","name":"meinv2","name":"meinv2","name":"meinv2"]]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.registerClass(PPImageScrollingTableViewCell.classForCoder(), forCellReuseIdentifier: "cell")
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return images.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellData = images[indexPath.section]
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        if let customCell = cell as? PPImageScrollingTableViewCell {
            customCell.backgroundColor = UIColor.grayColor()
            customCell.delegate = self
            customCell.setImageData(cellData as [NSObject : AnyObject])
            customCell.setCategoryLabelText(cellData["category"] as! String, withColor: UIColor.whiteColor())
            customCell.tag = indexPath.section
//            customCell.setImageTitleTextColor(<#T##textColor: UIColor!##UIColor!#>, withBackgroundColor: <#T##UIColor!#>)
//            [customCell setImageTitleTextColor:[UIColor whiteColor] withBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.7]];
//            //    [customCell setImageTitleLabelWitdh:90 withHeight:45];
//            [customCell setCollectionViewBackgroundColor:[UIColor darkGrayColor]];
            
            return customCell
        }

        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return CGFloat(150)
    }
    
    func scrollingTableViewCell(scrollingTableViewCell: PPImageScrollingTableViewCell!, didSelectImageAtIndexPath indexPathOfImage: NSIndexPath!, atCategoryRowIndex categoryRowIndex: Int) {
        print("fff")
    }

}
