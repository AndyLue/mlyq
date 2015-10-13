//
//  ZhuSuTableViewController.swift
//  MLYQ
//
//  Created by Andy on 15/10/10.
//  Copyright © 2015年 xiaoweigeWorking. All rights reserved.
//

import UIKit

struct ZhuSuTableViewConstant {
    static var CellInd = "ZhuSuTableCell"
}


class ZhuSuTableViewController: UITableViewController
    ,UIViewControllerTransitioningDelegate,UISearchBarDelegate
{
    
    
    let tableData = ["最新推出 烤全羊 1080/只、羊蝎子火锅、另外还有多种套餐，我们将以热情的服务欢迎您。","农庄本着诚信务实的原则，用我们的道德与良心，为您与亲朋好友，奉上新鲜美味的食材，让您放心、安心、舒心、的享受，田园的乐趣与自然美景","可同时容纳120人居住。房间内干净整洁，床单一客一换，为您的住宿休息提供良好的环境","我们将以农村人最朴实的语言，以农村人最热情的招待，以乡下休闲的方式让您也来感受城里少有的轻松与欢乐，真诚的欢迎各地朋友到康西草原来","位于延庆县大庄科乡暖水面岔口，距北京昌平西关环岛25公里，集垂钓、休闲、采摘、餐饮、娱乐为一体，是一个京郊旅游体验农家生活的好地方","农家有卡拉OK、象棋、麻将、扑克等供娱乐，给您的旅游生活增加无限乐趣。晚上农家可帮助举行篝火晚会，您可以吃着烤羊肉，围着篝火跳舞，或者放烟花","龙庆峡谷冰灯霓虹，和睦温馨君来入住，海纳千里八方朋来，迎来送往财通四方。我们这里服务周到，以饭庄饭菜为主","提供70-80人散客住宿，团体100-150人住宿。客房25间，双人间，三人间，四人间，火坑都有。房间设施：电热水器，电视，空调，独立卫生间。另外，还用有骑马、采摘、饭庄碾子、燃放爆竹等","粗粮细做、野味烧烤、虹鳟鱼、烤全羊、特色美食豆腐宴更是让您流连忘返，吃饭庄饭住饭庄，可接待团体、个人、订餐住宿、景区游玩也可享受打折优惠","住宿环境卫生，景区10人以上团队更优惠，周边青山环绕，院内假山奇观，夜晚霓虹四射"]
    
    let dataURL = ["nongjiayuan1","nongjiayuan2","nongjiayuan3","nongjiayuan4","nongjiayuan5","nongjiayuan6","nongjiayuan7","nongjiayuan8","nongjiayuan9","nongjiayuan5","nongjiayuan4","nongjiayuan2"]
    let dataTile = ["刘老根农家院","客是天农家院","客是神农家院","客是上帝农家院","陪好客农家院","一品农家院","二品农家院","三品农家院","再品农家院","还再品农家院"]
    
    override func viewWillAppear(animated: Bool) {
        searchBarView.barTintColor = UIColor.whiteColor()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.searchBarView.delegate = self
        //        tableView.translatesAutoresizingMaskIntoConstraints = true
        //        refresh()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    func refresh() {
        refreshControl?.beginRefreshing()
        refreshControl?.endRefreshing()
        //        refresh(refreshControl)
    }
    
    @IBOutlet weak var searchBarView: UISearchBar!
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        searchBarView.resignFirstResponder()
    }
    
    override func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        searchBarView.resignFirstResponder()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tableData.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(ZhuSuTableViewConstant.CellInd, forIndexPath: indexPath)
        if let yqCell = cell as? ZhuSuTableViewCell{
            yqCell.title = dataTile[indexPath.row]
            yqCell.detailTitle = tableData[indexPath.row]
            yqCell.imageName = dataURL[indexPath.row]
            yqCell.price = "人均36元"
        }else{
            cell.textLabel?.text = dataTile[indexPath.row]
            cell.detailTextLabel?.text = tableData[indexPath.row]
        }
        
        return cell
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        if cell is ZhuSuTableViewCell{
            let detail = ZhuSuDetail()
            detail.imageStr = dataURL[indexPath.row]
            detail.jieShaoStr = tableData[indexPath.row]
            performSegueWithIdentifier("ss", sender: detail)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let vc = segue.destinationViewController as? ZhuSuDetailViewControler{
            vc.transitioningDelegate = self
            if let dic = sender as? ZhuSuDetail{
                vc.imageStr = dic.imageStr
                vc.jeiShaoStr = dic.jieShaoStr
            }
            let trans = KYPopInteractiveTransition()
            trans.addPopGesture(vc)
        }
    }
    
    
    
    
}
