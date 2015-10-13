//
//  MLYQCollctionViewLayout.swift
//  MLYQ
//
//  Created by Andy on 15/9/23.
//  Copyright © 2015年 xiaoweigeWorking. All rights reserved.
//

import UIKit

class MLYQCollctionViewLayout: UICollectionViewFlowLayout {
    
    var _collr = Array<CGRect>()
    
    override func prepareLayout() {
        let dataNum = self.collectionView?.numberOfItemsInSection(0)
        
        if dataNum == nil {
            return;
        }
//        var num1 = 0
//    
//        
//        for num in 0...dataNum!{
//            var newElement = CGRect(x: self.sectionInset.left+1, y: 0, width: self.itemSize.width, height: self.itemSize.height)
//            
//            _collr.append(newElement)
//        }
    }
    override func layoutAttributesForElementsInRect(rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        var attrs = super.layoutAttributesForElementsInRect(rect)
        print("ddd")
        for attr in attrs! {
            if attr.indexPath.row == 1{
                let secColX = self.sectionInset.left+self.itemSize.width+5

                attr.frame = CGRect(x: secColX-6 , y: 0, width: self.itemSize.width, height: self.itemSize.height)
            }
        }
        return attrs
    }
    
    override func layoutAttributesForItemAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes? {
        let attributes = UICollectionViewLayoutAttributes.init(forCellWithIndexPath: indexPath)
        
//        let cell = self.collectionView!.dequeueReusableCellWithReuseIdentifier(
//            Contants.CellIdentify, forIndexPath: indexPath) as UICollectionViewCell
        let coomentWidth = self.collectionView!.frame.size.width/2-12
        let secColX = self.sectionInset.left+coomentWidth+5
        
        if indexPath.row == 1{
//            print(cell)
            attributes.frame = CGRect(x: secColX-6 , y: 10, width: self.itemSize.width-10, height: self.itemSize.height-10)
        }
        
        return attributes
    }

}
