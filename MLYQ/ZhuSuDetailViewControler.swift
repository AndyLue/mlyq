//
//  ZhuSuDetailViewControler.swift
//  MLYQ
//
//  Created by Andy on 15/10/10.
//  Copyright © 2015年 xiaoweigeWorking. All rights reserved.
//


import UIKit


class ZhuSuDetailViewControler: UIViewController,UITableViewDataSource,UITableViewDelegate,PPImageScrollingTableViewCellDelegate{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        imageView.image = UIImage(named: imageStr)
        jieShao.text = jeiShaoStr
    }
    
    var jeiShaoStr:String = ""
    var imageStr:String = ""
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var jieShao: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var zsimages = ["images":[["name":"nongjiayuan_food1","title":"B-0"],
                               ["name":"nongjiayuan_food2","title":"B-0"],["name":"nongjiayuan_food3","title":"B-0"],["name":"nongjiayuan_food4","title":"B-0"],["name":"nongjiayuan_food5","title":"B-0"],["name":"nongjiayuan_food6","title":"B-0"],["name":"nongjiayuan_food7","title":"B-0"],["name":"nongjiayuan_food8","title":"B-0"],["name":"nongjiayuan_food9","title":"B-0"]
        ]]
    var msimages = ["images":[["name":"nongjiayuan_zhus1","title":"B-0"],
        ["name":"nongjiayuan_zhus2","title":"B-0"],
        ["name":"nongjiayuan_zhus3","title":"B-0"],
        ["name":"nongjiayuan_zhus4","title":"B-0"],
        ["name":"nongjiayuan_zhus5","title":"B-0"],
        ["name":"nongjiayuan_zhus6","title":"B-0"],
        ["name":"nongjiayuan_zhus7","title":"B-0"],
        ["name":"nongjiayuan_zhus8","title":"B-0"]
        ]]
    var categorys = ["美食特色","住宿特色"]
    
    
    // MARK: - Table view data source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return categorys.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cellData = categorys[indexPath.section]
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        if let customCell = cell as? PPImageScrollingTableViewCell {
            customCell.backgroundColor = UIColor.whiteColor()
            customCell.delegate = self
            if indexPath.section == 0 {
                customCell.setImageData(zsimages)
            }else if indexPath.section == 1{
                customCell.setImageData(msimages)
            }
            customCell.setCategoryLabelText(categorys[indexPath.section], withColor: UIColor.blackColor())
            customCell.tag = indexPath.section
            customCell.setImageTitleTextColor(UIColor.whiteColor(), withBackgroundColor: UIColor(red: 0, green: 0, blue: 0, alpha: 0.7))
//            customCell.setImageTitleLabelWitdh(90, withHeight: 45)
            customCell.setCollectionViewBackgroundColor(UIColor.whiteColor())
      
            return customCell
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return CGFloat(150)
    }
    
    func scrollingTableViewCell(scrollingTableViewCell: PPImageScrollingTableViewCell!, didSelectImageAtIndexPath indexPathOfImage: NSIndexPath!, atCategoryRowIndex categoryRowIndex: Int) {
        print("fff")
    }
    
    
}

