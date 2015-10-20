//
//  ViewController.swift
//  MLYQ
//
//  Created by Andy on 15/9/4.
//  Copyright (c) 2015年 xiaoweigeWorking. All rights reserved.
//

import UIKit

struct Contants {
    static let CellIdentify:String = "DesignViewCell"
    static let ShowDetail:String = "showJDDetail"
}

class MLYQMainViewController: UICollectionViewController,UICollectionViewDelegateFlowLayout {

//    
//    override func viewDidLoad() {
//        collectionView?.dataSource = self
//        collectionView?.delegate = self
//        collectionView?.showsHorizontalScrollIndicator = false
//        collectionView?.backgroundColor = UIColor.whiteColor()
//    }
    
    //首页图片
    let pictures = [["name":"长城","pic":"changcheng.jpg"],
        ["name":"百里山水画廊","pic":"bailishangshuihualang.jpg"],
        ["name":"古崖居","pic":"guyaju.jpg"],
        ["name":"龙庆峡","pic":"longqingxia1.jpg"],
        ["name":"玉渡山","pic":"yudushan.jpg"],
        ["name":"松山","pic":"songshan.jpg"],
        ["name":"四季花海","pic":"sijihuahai.jpg"]
    ]

    //介绍内容
    let jieshaos = [["name":"长城","jieshao":"长城（ The Great Wall），又称万里长城，是中国古代军事防御工程。长城修筑的历史可上溯到西周时期，著名的典故‘烽火戏诸侯’就源于此。春秋战国时期列国争霸，互相防守，长城修筑进入第一个高潮，但此时修筑的长度都比较短。秦灭六国统一天下后，秦始皇连接和修缮战国长城，始有万里长城之称。"],
        ["name":"百里山水画廊","jieshao":"北京延庆百里山水画廊景区位于延庆县东北部千家店镇，属延庆生态涵养区的核心区，总面积371平方公里，距县城40公里，距市区110公里。景区包括一环三区十二个空间节点，涉及滨河环线112华里，“百里山水画廊”因此得名。"],
        ["name":"古崖居","jieshao":"古崖居坐落在北京市延庆县张山营镇西北部山区一条幽静的峡谷中，地处东门营村北，距延庆县城约20公里，原为不见史志记载的古代先民在陡峭的岩壁上开凿的岩居洞穴，计有117个。2013年5月，被国务院列为第七批全国重点文物保护单位。"],
        ["name":"龙庆峡","jieshao":"龙庆峡位于北京市延庆县城东北10公里的古城村西北的古城河口，距北京城区85公里。龙庆峡古称“古城九曲”，被人们誉为北京的“小漓江”，是北京十六景之一。其水源于海坨山东麓，经玉渡山汇入古城水库。"],
        ["name":"玉渡山","jieshao":"玉渡山风景区位于延庆县城北10公里，龙庆峡景区上游，海坨山脚下。该区地处深山，人迹罕至，景色秀丽，环境清幽。它是北京地区一块鲜为人知的处女地，是大自然保存最原始的绿色记忆，是现代人回归大自然最好的选择，是延庆县自然保护区，是京郊最美的地方。"],
        ["name":"松山","jieshao":"松山森林公园是松山森林旅游区为松山自然保护区的一部分，位于北京市延庆县西北部，燕山山脉深处的军都山，距市区90公里。由于特殊的地理位置，幽雅的自然环境及丰富的动、植物资源，1986年被国务院评为国家级自然保护区。2000年评定为市级风景名胜区。"],
        ["name":"四季花海","jieshao":"“四季花海”整合了延庆东部山区四海镇、珍珠泉乡、刘斌堡乡的沟域资源，西起刘斌堡乡刘斌堡村，东至珍珠泉乡南天门村，途经三个乡镇，最后向北与千家店镇“百里山水画廊”闭合。“四季花海”沟域总长度47公里，规划面积164.17平方公里，涉及29个行政村。"]
    ]
//
   
    @IBAction func unwindToMainView(segue: UIStoryboardSegue) {
        
    }
    
    
    //mark -- UICollectionViewDataSource
    // CollectionView行数
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    // 获取单元格
    override func collectionView(collectionView: UICollectionView,
        cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
            // storyboard里设计的单元格
            
            // 获取设计的单元格，不需要再动态添加界面元素
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier(
                Contants.CellIdentify, forIndexPath: indexPath) as UICollectionViewCell
            
            // 从界面查找到控件元素并设置属性
            if cell.contentView.subviews.count == 0 {
                if(indexPath.row == 6){
                    let but = UIButton()
                    but.frame = cell.bounds
                    but.contentMode = UIViewContentMode.ScaleToFill
                    but.setTitle("更多", forState: UIControlState.Normal)
                    but.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
                    but.titleLabel?.font = UIFont(name:"AmericanTypewriter-Bold", size: 20)
                    cell.contentView.addSubview(but);
                }else{
                    let uiImage = UIImage(named: pictures[indexPath.item]["pic"]!)
                    let uiImageView = UIImageView(image: uiImage)
//                    uiImageView.frame = cell.bounds
                    uiImageView.layer.cornerRadius = 4
                    uiImageView.layer.masksToBounds = true
                    uiImageView.contentMode = UIViewContentMode.ScaleToFill
                    uiImageView.autoresizesSubviews = true
                    cell.contentView.addSubview(uiImageView);
//                    uiImageView.translatesAutoresizingMaskIntoConstraints = false
                    //logoImageView左侧与父视图左侧对齐
                    let leftConstraint = NSLayoutConstraint.init(item: uiImageView, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: cell.contentView, attribute: NSLayoutAttribute.Leading, multiplier: 1.0, constant: 0.0)
                    leftConstraint.active = true
                    //logoImageView右侧与父视图右侧对齐
                    let rightConstraint = NSLayoutConstraint.init(item: uiImageView, attribute: NSLayoutAttribute.Trailing, relatedBy: NSLayoutRelation.Equal, toItem: cell.contentView, attribute: NSLayoutAttribute.Trailing, multiplier: 1.0, constant: 0.0)
                    rightConstraint.active = true
                    //logoImageView顶部与父视图顶部对齐
                    let topConstraint = NSLayoutConstraint.init(item: uiImageView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: cell.contentView, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0)
                    
                    //logoImageView高度为父视图高度一半
                    let bottomConstraint = NSLayoutConstraint.init(item: uiImageView, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: cell.contentView, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0)
                    bottomConstraint.active = true
                    //iOS 6.0或者7.0调用addConstraints
                    //    [self.view addConstraints:@[leftConstraint, rightConstraint, topConstraint, heightConstraint]];

                    uiImageView.translatesAutoresizingMaskIntoConstraints = false
                    
                    NSLayoutConstraint.activateConstraints([leftConstraint,rightConstraint,topConstraint,bottomConstraint])
                    
                    
                }
            }
           return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let coomentWidth = collectionView.frame.size.width/2-12
        if indexPath.row == 0 {
            return CGSize(width: coomentWidth, height: collectionView.frame.size.height*0.4)
        }else if indexPath.row == 1 {
            return CGSize(width:coomentWidth, height: collectionView.frame.size.height*0.3)
        }else if indexPath.row == 2 {
            return CGSize(width: coomentWidth, height: collectionView.frame.size.height*0.3)
        }
        else if indexPath.row == 3 {
            return CGSize(width: coomentWidth, height: collectionView.frame.size.height*0.3)
        }else if indexPath.row == 4 {
            return CGSize(width: coomentWidth, height: collectionView.frame.size.height*0.16)
        }else if indexPath.row == 5 {
            return CGSize(width: coomentWidth, height: collectionView.frame.size.height*0.16)
        }
        else if indexPath.row == 6 {
            return CGSize(width: coomentWidth, height: collectionView.frame.size.height*0.1)
        }

        return CGSize(width: coomentWidth, height: 66)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 5
    }
   
    
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(Contants.CellIdentify, forIndexPath: indexPath) as UICollectionViewCell
        if #available(iOS 9.0, *) {
            if let ccc = cell.contentView.viewForFirstBaselineLayout as? UIImageView{
                print(ccc.bounds.size)
                print("cell:\(cell.bounds.size)")
                print("collectionView\(collectionView.bounds.size)")
            }
        } else {
            // Fallback on earlier versions
        }
        if cell.contentView.subviews.count > 0 {
            if let imageView = cell.contentView.subviews[0] as? UIImageView{
                print(imageView.bounds.size)
                print("cell:\(cell.bounds.size)")
                print("collectionView\(collectionView.bounds.size)")
            }
        }
        let detail = JingDianDetail()
        for num in 0...10{
            detail.luXianDic[num] = "经典路线\(num+1):a-b-c 两天 200块钱"
        }
        detail.imageName = pictures[indexPath.item]["pic"]!
        detail.jieShao = jieshaos[indexPath.item]["jieshao"]!
        performSegueWithIdentifier(Contants.ShowDetail, sender: detail)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if Contants.ShowDetail == segue.identifier{
            if let view = segue.destinationViewController as? JingDianDetailViewControler{
                if let detail = sender as? JingDianDetail{
                    view.luXianStr = detail.luXianDic
                    view.jeiShaoStr = detail.jieShao
                    view.imageStr = detail.imageName
                }
            }
        }
    }
}

