//
//  Maxican.swift
//  Foodie
//
//  Created by Nilrajsinh Vaghela on 08/05/20.
//  Copyright © 2020 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit


class Maxican: UICollectionViewController {
    
    override func viewWillAppear(_ animated: Bool) {
              tabBarController?.tabBar.isHidden = false
          }
    
    var maxican = [
         ["Title":"Mexican Hot Chocolate","Image":  #imageLiteral(resourceName: "20190905-delish-mexican-hot-chocolate-ehg-1305-jpg-1569007275.jpg"),"URL":"https://www.youtube.com/watch?v=fpgEWNPHF6M","Des":"If you love a bit of heat, this is the only hot cocoa recipe you'll ever . need."],
        
    ["Title":"Keto Taco Cups ","Image":#imageLiteral(resourceName: "M-1"),"URL":"https://www.youtube.com/watch?v=4593t8rJhJA","Des":"Cheese shells are all the rage."],
                 
                  ["Title":"Cheesy Mexican Cauliflower Rice","Image":#imageLiteral(resourceName: "m-2"),"URL":"https://www.youtube.com/watch?v=x1rvbXpAQeQ","Des":"This is a perfect low-carb option that doesn't sacrifice any of the flavor."],
                  
                   ["Title":"Turkey Taco Lettuce Wraps","Image":#imageLiteral(resourceName: "m-3"),"URL":"https://www.youtube.com/watch?v=BXS8JM05MWk","Des":"Who needs tortillas?"],
                   ["Title":"Best-Ever Migas","Image":#imageLiteral(resourceName: "m-4"),"URL":"https://www.youtube.com/watch?v=u8cv5WDxfos","Des":"Breakfast doesn't get much better than this."],
                   ["Title":"Churro Chips","Image":#imageLiteral(resourceName: "m-5"),"URL":"https://www.youtube.com/watch?v=LNgkwxuxtu8","Des":"HIGHLY recommend dunking in cheesecake dip."],
                   ["Title":"Keto Taco Casserole","Image":#imageLiteral(resourceName: "m-6"),"URL":"https://www.youtube.com/watch?v=5APAZrA-R3w","Des":"This baby is a total crowd-pleaser."],
                   ["Title":"Spicy Chicken Taquitos","Image":#imageLiteral(resourceName: "m-7"),"URL":"https://www.youtube.com/watch?v=INNX2tpH1No","Des":"The avocado cream is a non-negotiable."],
                   
                   ["Title":"Tacos Al Pastor","Image":#imageLiteral(resourceName: "m-8"),"URL":"https://www.youtube.com/watch?v=JOvLXKU6mB4","Des":"Pineapple and pork is always a winning combo."],
                   ["Title":"Shrimp Enchiladas","Image":#imageLiteral(resourceName: "m-9.png"),"URL":"https://www.youtube.com/watch?v=zpTvp-kIzqs","Des":"Give chicken a break."],
                   ["Title":"Beef Enchiladas","Image":#imageLiteral(resourceName: "beef-enchiladas-vertical-1535657909"),"URL":"https://www.youtube.com/watch?v=CjoVxMSdfKg","Des":"Pairs perfectly with Jarritos Margaritas."],
                   ["Title":"Tex-Mex-Inspired Pizza","Image":#imageLiteral(resourceName: "mexican-pizza-228-1547837679.jpg"),"URL":"https://www.youtube.com/watch?v=fa0YvpVeZGU","Des":"Ummm, this is basically our two favorite foods (tacos and pizza) combined!"],
                  
                   ["Title":"Chili Cheese Crunchwrap","Image": #imageLiteral(resourceName: "delish-chili-cheese-crunchwrap-pin-1548972033.jpg"),"URL":"https://www.youtube.com/watch?v=A9rjXhuFdkA","Des":"Better than the Taco Bell original..."],
                  
                   ["Title":"Pulled Pork Tacos with Pineapple Slaw","Image": #imageLiteral(resourceName: "pulled-pork-1529441523.jpg"),"URL":"https://www.youtube.com/watch?v=m8-FghwjLt0","Des":"You'll want to use the pineapple slaw on everything."],
                   ["Title":"Posole","Image":#imageLiteral(resourceName: "gallery-1506455950-delish-posole-2.jpg"),"URL":"https://www.youtube.com/watch?v=FGwCQh2h-O8","Des":"Enjoy the comfort of this Mexican favorite without any of the work."],
                   ["Title":"Perfect Fish Tacos","Image":#imageLiteral(resourceName: "190307-fish-tacos-107-1553283299.jpg"),"URL":"https://www.youtube.com/watch?v=qDFqRxeEn9o","Des":"Fresh avo and corn slaw make these sooo tasty."],
                   ["Title":"Chicken Enchilada Casserole","Image":#imageLiteral(resourceName: "enchilada-casserole-vertical-1533917088.jpg"),"URL":"https://www.youtube.com/watch?v=g9k_RCIG4iY","Des":"Fresh avo and corn slaw make these sooo tasty."],
                   ["Title":"Burrito Egg Rolls","Image":#imageLiteral(resourceName: "delish-burrito-egg-rolls-pin-1549490514.jpg"),"URL":"https://www.youtube.com/watch?v=_3zVcyfIheo","Des":"This is the ultimate hybrid!!! American indulgence, meet Mexican fillings."]
                   
                   
                   
                   ]
  


    override func viewDidLoad() {
        super.viewDidLoad()
        
        var CustomImageFlow = FlowLayoutColllectionView()
                     collectionView.collectionViewLayout = CustomImageFlow
        
        
        //MARK:- Swipe Gesture Start
               
               let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
               swipeRight.direction = UISwipeGestureRecognizer.Direction.right
               self.view.addGestureRecognizer(swipeRight)
               

               let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
               swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
               self.view.addGestureRecognizer(swipeLeft)
               

    
    }

     @objc func swiped(_ gesture: UISwipeGestureRecognizer) {
        if gesture.direction == .left {
            if (self.tabBarController?.selectedIndex)! < 5 { // set your total tabs here
                self.tabBarController?.selectedIndex += 1
            }
        } else if gesture.direction == .right {
            if (self.tabBarController?.selectedIndex)! > 0 {
                self.tabBarController?.selectedIndex -= 1
            }
        }
    }
      
      //MARK:- Swipe Gesture End
   

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return maxican.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! Indian_Cell
        cell.Img.image = maxican[indexPath.row]["Image"] as! UIImage
         cell.Lbl.text = maxican[indexPath.row]["Title"] as! String
    
        // Configure the cell
    
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         var url = maxican[indexPath.row]["URL"]
         
         let Detialscene = self.storyboard?.instantiateViewController(identifier: "DetailScene") as! Detail_ViewController
                self.navigationController?.pushViewController(Detialscene, animated: true)
         
         Detialscene.dimg = maxican[indexPath.row]["Image"] as! UIImage
         Detialscene.Desc = maxican[indexPath.row]["Des"] as! String
         Detialscene.YouUrl = url as! String
        

         
     }
    
    
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
