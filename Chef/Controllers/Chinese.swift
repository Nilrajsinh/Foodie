//
//  Chinese.swift
//  Foodie
//
//  Created by Nilrajsinh Vaghela on 08/05/20.
//  Copyright © 2020 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds


class Chinese: UICollectionViewController,GADBannerViewDelegate, GADInterstitialDelegate {
    
    override func viewWillAppear(_ animated: Bool) {
              tabBarController?.tabBar.isHidden = false
          }
    
    var Chinese = [
     ["Title":"Chow mein ","Image":#imageLiteral(resourceName: "b80faee8b06ec98c2675b09c5f62cb25.jpg"),"URL":"https://www.youtube.com/watch?v=w8dDtaN389M","Des":"Chow mein are Chinese stir-fried noodles with vegetables and sometimes meat or tofu; the name is a romanization of the Taishanese chāu-mèn. The dish is popular throughout the Chinese diaspora and appears on the menus of most Chinese restaurants abroad. It is particularly popular in India, Nepal, the UK, and the US."],
                  
                   ["Title":"Kung Pao chicken","Image": #imageLiteral(resourceName: "Best-Kung-Pao-Chicken-IMAGE-2.jpg"),"URL":"https://www.youtube.com/watch?v=jhXKCKCfB70","Des":"Kung Pao chicken, also transcribed as Gong Bao or Kung Po, is a spicy, stir-fried Chinese dish made with cubes of chicken, peanuts, vegetables, and chili peppers. The classic dish in Sichuan cuisine originated in the Sichuan Province of south-western China and includes Sichuan peppercorns"],
                   
                    ["Title":"Orange chicken","Image": #imageLiteral(resourceName: "1440693433689.jpeg"),"URL":"https://www.youtube.com/watch?v=nrqsW5fPzAE","Des":"Orange chicken is a Chinese dish of Hunan origin"],
                    

                     ["Title":"Sweet and sour chicken","Image":#imageLiteral(resourceName: "Sweet-Sour-Chicken-5.jpg"),"URL":"https://www.youtube.com/watch?v=RUDPussbU04","Des":""],
                     
                     ["Title":"Chinese fried rice","Image":#imageLiteral(resourceName: "Chinese-Fried-Rice-2.jpg") ,"URL":"","Des":"Chinese fried rice is a family of fried rice dishes popular in Greater China and around the world. It is sometimes served as the penultimate dish in Chinese banquets, just before dessert"],
                     
                     ["Title":"Dumpling","Image": #imageLiteral(resourceName: "Chicken-and-Shrimp-Dumplings.jpg"),"URL":"https://www.youtube.com/watch?v=hoZccEa0Pqo","Des":"Dumpling is a broad classification for a dish that consists of pieces of dough wrapped around a filling, or of dough with no filling. The dough can be based on bread, flour or potatoes, and may be filled with meat, fish, cheese, vegetables, fruits or sweets"],
                     
                     ["Title":"Peking duck","Image":#imageLiteral(resourceName: "peking-duck-recipe-11-1-500x500.jpg"),"URL":"https://www.youtube.com/watch?v=hZ9SFaM6XVY","Des":"Peking duck is a dish from Beijing that has been prepared since the imperial era. The meat is characterized by its thin, crisp skin, with authentic versions of the dish serving mostly the skin and little meat, sliced in front of the diners by the cook"],
                    
                     ["Title":"Spring roll ","Image":#imageLiteral(resourceName: "Spring-Rolls-500x500.jpg") ,"URL":"https://www.youtube.com/watch?v=u2dt0yjaLC0","Des":"Spring rolls are a large variety of filled, rolled appetizers or dim sum found in East Asian, South Asian, Middle Eastern and Southeast Asian cuisine. The name is a literal translation of the Chinese chūn juǎn"],
                     
                     ["Title":"Hot and sour soup","Image": #imageLiteral(resourceName: "maxresdefault.jpg"),"URL":"https://www.youtube.com/watch?v=Pw6Vcavm990","Des":"Hot and sour soup is a variety of soups from several Asian culinary traditions. In all cases, the soup contains ingredients to make it both spicy and sour."],
                     
                     ["Title":"Baozi","Image": #imageLiteral(resourceName: "baozi.png"),"URL":"https://www.youtube.com/watch?v=qvOBLYVWPYY","Des":"Baozi, or bao, is a type of yeast-leavened filled bun in various Chinese cuisines. There are many variations in fillings and preparations, though the buns are most often steamed. In its bun-like aspect it is very similar to the traditional Chinese mantou."],
                    
                     ["Title":"Char siu","Image": #imageLiteral(resourceName: "char-siu-11.jpg"),"URL":"https://www.youtube.com/watch?v=nQU-kinfpGI","Des":"Char siu is a popular way to flavor and prepare barbecued pork in Cantonese cuisine. It is classified as a type of siu mei, Cantonese roasted meat"],
                     
                     ["Title":"Crab Rangoon","Image": #imageLiteral(resourceName: "Crab-Rangoon.jpg"),"URL":"https://www.youtube.com/watch?v=cajdSGcRpP4","Des":"Crab Rangoon, sometimes called crab puffs, crab rangoon puffs, or cheese wontons, are filled crisp dumpling appetizers served in American Chinese and, more recently, Thai restaurants"],
                     
                     ["Title":"Wonton","Image": #imageLiteral(resourceName: "Homemade-Wonton-Soup-2-SWP-4-1.jpg"),"URL":"https://www.youtube.com/watch?v=p2aNZrynJ8o","Des":"A wonton is a type of Chinese dumpling commonly found across regional styles of Chinese cuisine."],
                     
                     ["Title":"Miso Soup ","Image": #imageLiteral(resourceName: "k-archive-3a13c7e3f33b87c3862a2aeb90422baa85b496f2.jpeg"),"URL":"https://www.youtube.com/watch?v=lH7pgsnyGrI","Des":"Your favorite pre-sushi soup is actually one of the easiest recipes to make from scratch at home, and only requires a handful of ingredients. One of them is dashi — a very simple broth made from kombu (a dried seaweed) and dried bonito fish flakes."],
                     
                     ["Title":"Tonkatsu","Image": #imageLiteral(resourceName: "k-archive-7ecc3c65e069ee75ceca52f235d455174230576b.jpeg"),"URL":"https://www.youtube.com/watch?v=TFy21yoLdfw","Des":"Crunchy pork cutlets are a staple of late-night eats in Japan. In local convenience stores, they even sell “katsu sandos,” which wrap the beloved dish between two slices of white bread. At home, pair your tonkatsu with a side of rice, a crisp salad, or simply eat it on its own with a healthy dousing of tonkatsu sauce, or BBQ sauce as an alternative."],
                     
                     ["Title":"Japanese-Style Pancakes","Image": #imageLiteral(resourceName: "k-archive-2c1f4135ac7a639248d8b155a879d6959c33deb6.jpeg"),"URL":"https://www.youtube.com/watch?v=9MJhVk4Z1Zc","Des":"These lofty, soufflé-like pancakes are served all over Japan at breakfast spots like Gram Cafe and Flippers. They’re also fairly easy to make at home with the help of one key kitchen tool (a ring mold!)."],
                     
                     ["Title":" Buta No Kakuni","Image": #imageLiteral(resourceName: "k-archive-0cd06b077b7d6a4f2e569123b081554baedce8ca.jpeg"),"URL":"https://www.youtube.com/watch?v=t7-BAJEnO78","Des":"This recipe is slightly more involved than the others on this list, but worth it for the resulting tender, fall-apart pork belly that I’d probably plan an entire travel itinerary around. It involves cutting the pork belly into cubes (kakuni translates to “square simmered”), lightly browning it, then letting it simmer in a broth for two hours."],
                     
                     ["Title":"Omurice","Image": #imageLiteral(resourceName: "k-archive-21e81e1228db8c1c9cc604f3e599e29cc839558d.jpeg"),"URL":"https://www.youtube.com/watch?v=q_nosb-2mX4","Des":"Eggs are a standby ingredient in Japanese cuisine — and they go beyond breakfast. Take omurice, which is fried rice wrapped in a perfectly fluffy blanket of eggs. If you don’t have pork for the rice, feel free to substitute it with another protein, or simply more vegetables."]
    ]
    
    
    var bannerView: GADBannerView!
    func addBannerViewToView(_ bannerView: GADBannerView) {
     bannerView.translatesAutoresizingMaskIntoConstraints = false
     view.addSubview(bannerView)
     view.addConstraints(
       [NSLayoutConstraint(item: bannerView,
                           attribute: .bottom,
                           relatedBy: .equal,
                           toItem: bottomLayoutGuide,
                           attribute: .top,
                           multiplier: 1,
                           constant: 0),
        NSLayoutConstraint(item: bannerView,
                           attribute: .centerX,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .centerX,
                           multiplier: 1,
                           constant: 0)
       ])
    }
    
    var interstitial: GADInterstitial!
       func createAndLoadInterstitial() -> GADInterstitial {
         var interstitial = GADInterstitial(adUnitID: "ca-app-pub-3032756932177746/8414740827")
         interstitial.delegate = self
         interstitial.load(GADRequest())
         return interstitial
       }

       func interstitialDidDismissScreen(_ ad: GADInterstitial) {
         interstitial = createAndLoadInterstitial()
       }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)
        addBannerViewToView(bannerView)
        bannerView.adUnitID = "ca-app-pub-3032756932177746/6806694422"
        bannerView.rootViewController = self
         bannerView.load(GADRequest())
         bannerView.delegate = self
        
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-3032756932177746/8414740827")
               let request = GADRequest()
                  interstitial.load(request)
                interstitial = createAndLoadInterstitial()
               interstitial.delegate = self
        
        
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
        if interstitial.isReady {
          interstitial.present(fromRootViewController: self)
        }
        
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
