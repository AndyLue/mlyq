//
//  JingDianDetailViewControler.swift
//  MLYQ
//
//  Created by Andy on 15/9/28.
//  Copyright © 2015年 xiaoweigeWorking. All rights reserved.
//

import UIKit

struct CellConstant {
    static let LuXianCell:String = "luxianCell"
}

class JingDianDetailViewControler: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        jieShao?.text = jeiShaoStr
        imageView?.image = UIImage(named: imageStr)
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return luXianStr.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(CellConstant.LuXianCell, forIndexPath: indexPath)
        if let ss = luXianStr[indexPath.row]{
            let valueNS = NSString(string: ss)
            let values = valueNS.rangeOfString(":")
            cell.textLabel?.text = valueNS.substringToIndex(values.location)
            cell.detailTextLabel?.text = valueNS.substringFromIndex(values.location+values.length)
        }
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let storyboard = UIStoryboard(name: StoryBoardConstants.Main, bundle: nil)
        let luXianViewControl = storyboard.instantiateViewControllerWithIdentifier(StoryBoardConstants.LuXianDetail)
        if let luXianControl = luXianViewControl as? LuXianDetailViewControler{
            luXianControl.imageStr = "luxian1"
            luXianControl.jeiShaoStr = jeiShaoStr
            luXianControl.luXianDetailStr = luXianStr[indexPath.row]!
            luXianControl.timeStr = "骑行耗费时间:4小时30分"
//            luXianControl.transitioningDelegate = self
            //                trans.addPopGesture(luXianControl)
            
            self.presentViewController(luXianControl, animated: true,completion: nil)
            let notif = NSNotificationCenter.defaultCenter()
            notif.addObserver(self, selector: "close", name: StoryBoardConstants.CloseNotfi, object: nil)
            
        }
    }
    
    func close(){
        self.dismissViewControllerAnimated(true){
            self.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
        }
        let notif = NSNotificationCenter.defaultCenter()
        notif.removeObserver(self, name: StoryBoardConstants.CloseNotfi, object: nil)
    }
    
    var jeiShaoStr:String = "moren"
    var luXianStr = Dictionary<Int,String>()
    var imageStr:String = "moren"

    @IBOutlet weak var jieShao: UILabel!
    @IBOutlet weak var imageView: UIImageView!
}
