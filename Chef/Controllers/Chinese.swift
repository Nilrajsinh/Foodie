//
//  Chinese.swift
//  Foodie
//
//  Created by Nilrajsinh Vaghela on 08/05/20.
//  Copyright © 2020 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit



class Chinese: UICollectionViewController {
    
    override func viewWillAppear(_ animated: Bool) {
              tabBarController?.tabBar.isHidden = false
          }
    
    var Chinese = [
     ["Title":"Jalebi ","Image":#imageLiteral(resourceName: "Jalebi-Recipe-Rasoi-Menu"),"URL":"","Des":""],
                  
                   ["Title":"Medu wada ","Image":#imageLiteral(resourceName: "South_Indian_Medu_Vada_Sambar_with_Medu_Vada_Maker-8_400"),"URL":"","Des":""],
                   
                    ["Title":"Raas malai ","Image":#imageLiteral(resourceName: "Kesar-Rasmalai"),"URL":"","Des":""],
                    
                     ["Title":"Uthapam ","Image":#imageLiteral(resourceName: "big_onion_tomato_uttapam,_tomato_onion_uttapa-11571"),"URL":"","Des":""] ]
    
    

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
        return Chinese.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! Indian_Cell
               cell.Img.image = Chinese[indexPath.row]["Image"] as! UIImage
                cell.Lbl.text = Chinese[indexPath.row]["Title"] as! String
    
        // Configure the cell
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         var url = Chinese[indexPath.row]["URL"]
         
         let Detialscene = self.storyboard?.instantiateViewController(identifier: "DetailScene") as! Detail_ViewController
                self.navigationController?.pushViewController(Detialscene, animated: true)
         
         Detialscene.dimg = Chinese[indexPath.row]["Image"] as! UIImage
         Detialscene.Desc = Chinese[indexPath.row]["Des"] as! String
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
