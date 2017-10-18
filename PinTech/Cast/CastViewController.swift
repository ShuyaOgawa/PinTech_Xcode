//
//  SecondViewController.swift
//  PinTech
//
//  Created by 小川秀哉 on 2017/10/09.
//  Copyright © 2017年 Digital Circus Inc. All rights reserved.
//
//アプリケーションキー　49059639ab64aeeb75e4119a17b348109869f910815a383979b6265507ba0d2d
//クライアントキー　487a8bdae7c242af3bc1793a6c3fb68df9b5a52ded91a1cae1296f09966d1858



import UIKit


class SecondViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let cast_images = ["287ad159eefd720da612026042a18bb9--crows-woman-crush.jpg", "577d0a641500002a006c9d4d.jpeg", "images-23.jpeg", "images-24.jpeg", "images-25.jpeg", "images-26.jpeg", "maxresdefault.jpg" , "x01-veg-20161224-chloe.jpg.pagespeed.ic.7BB9vAtrWO.jpg"]
    
    let cast_name = ["田中　真知子", "吹屋　夏菜子", "石井　風子", "金子　絵里", "山田　花子", "望月　満", "大盛　忠", "五郎丸　二郎"]
    
    let cast_profile = ["元気な子です。", "連絡先交換ありです。", "お酒好きです。", "ITついていけます。", "現役女子大生です。", "美味しいモツ煮食べたいです。", "新宿住みです。", "パリピ歓迎です。"]
    
    let cast_price_per_price = ["2500", "4000", "2000", "2500", "3000", "2500", "4000", "3000"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cast_images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell:CastCollectionViewCell =
            collectionView.dequeueReusableCell(withReuseIdentifier: "CastCollectionViewCell",for: indexPath) as! CastCollectionViewCell
        
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 0.2
        cell.layer.cornerRadius = 15
        cell.layer.masksToBounds = true
        
        cell.cast_images.image = UIImage(named: "\(cast_images[indexPath.row])")
        cell.cast_images.layer.borderColor = UIColor.black.cgColor
        cell.cast_images.layer.borderWidth = 0.2
        cell.cast_images.layer.masksToBounds = true
        
        cell.cast_name.text = cast_name[indexPath.row]
        
        cell.cast_profile.text = cast_profile[indexPath.row]
        
        cell.cast_price_per_hour.text = "\(cast_price_per_price[indexPath.row])/30min"
        
        return cell
        
    }
    


}

