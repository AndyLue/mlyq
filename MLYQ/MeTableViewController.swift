//
//  MeTableViewController.swift
//  MLYQ
//
//  Created by Andy on 15/10/14.
//  Copyright © 2015年 xiaoweigeWorking. All rights reserved.
//

import UIKit

class MeTableViewController: UITableViewController {

    @IBOutlet weak var touxiangView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let iamge = UIImage(named: "meinv1")
        let imageView = UIImageView(image: iamge)
        
        let iconViewX = CGFloat(15.0)
        let iconViewY = (touxiangView.frame.height - 30) * 0.1
        let iconViewWid = touxiangView.frame.width * 0.16
        let iconViewHei = touxiangView.frame.height - 10
        
        imageView.layer.cornerRadius = 4
        imageView.layer.masksToBounds = true
        imageView.frame = CGRectMake(iconViewX, iconViewY, iconViewWid, iconViewHei);
        
        let nameLable = UILabel()
        nameLable.text = "迷失的烟嘴"
        nameLable.font = UIFont(name: "ArialMT", size: 14)
        let byVar = CGFloat(15)
        let nameLWid = iconViewX+iconViewWid
        nameLable.frame = CGRectMake(nameLWid+byVar, iconViewY-10, iconViewWid, iconViewHei);
        
        touxiangView.addSubview(imageView)
        touxiangView.addSubview(nameLable)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
