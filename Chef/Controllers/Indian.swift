//
//  Indian.swift
//  Chef
//
//  Created by Nilrajsinh Vaghela on 07/05/20.
//  Copyright © 2020 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds


class Indian: UICollectionViewController, GADBannerViewDelegate, GADInterstitialDelegate {
    
    override func viewWillAppear(_ animated: Bool) {
           tabBarController?.tabBar.isHidden = false
       }
    
    
    var indian = [
        ["Title":"Pizza","Image":#imageLiteral(resourceName: "Pizza"),"URL":"https://www.youtube.com/watch?v=Lyj8wH2iTYg","Des":"Ingredients FOR THE DOUGH Rapid rise yeast 2 Teaspoon  Sugar 1 Tablespoon Warm water 1 1⁄4 Cup (20 tbs) Oil 4 Tablespoon (3 - 4 tablespoons) Salt To Taste Garlic powder 1⁄2 Teaspoon (Optional) Dry italian herbs 1 Tablespoon (Optional) Plain flour 3 Cup (48 tbs) (2 1/2 - 3 cups)  Tomatoes 5 (4 -5 tomatoes) Red bell pepper 1⁄2  FOR THE SAUCE  Carrot 1 , sliced  Onion 1⁄2 , sliced Garlic 3 Clove (15 gm) (2 - 3 cloves) Chopped basil leaves 1⁄4 Cup (4 tbs) Salt To Taste Paprika/Chilli powder To Taste Sugar To Taste (Optional)  Directions GETTING READY "],
        
        ["Title":"Daal Makhni","Image":#imageLiteral(resourceName: "Dal makhni"),"URL":"https://www.youtube.com/watch?v=FTIjbV6yczo","Des":"Method - In a pressure cooker add black gram, red kidney beans, salt and water & keep it for 2-3 whistles. - In a pan add ghee and onions and cook it until the onions turn brown. - Add ginger garlic paste, tomato puree, salt, red chilli powder and coriander leaves.  - Check if the dal is cooked and add it to the tadka and cook it for 7-8 minutes. - In other pan add butter, red chilli powder and pour it over dal and add coriander and fresh cream. Dal Makhani is ready to be served!"],


        ["Title":"Dhosa","Image":#imageLiteral(resourceName: "Indian-Masala-Dosa"),"URL":"https://www.youtube.com/watch?v=llr-GVo_NnI","Des":"Ingredients Rice (chawal)      : 3 cup  split black gram lentil ( dhuli Urad dal)  : 1 cup  flattened rice (poha or chidva)   : 1/2 cup fenugreek seeds (methi dana)   : 1 tbsp Potato     : 4 (medium size) Curry leaves     : 12-15 Green coriander    : 2 tbsp Tomatoes      : 2 (medium size)  Onion     : 2 (medium size)  Frozen Peas     : 2 tbsp  Green chili     : 1-2  Ginger      : 1 tsp (crushed)  Oil       : 2 tbsp  Mustard seeds     : 1 tsp  Salt       : 1 tsp  Turmeric powder   : 1/2 tsp  Red chili powder    : 1/2 tsp Split bengal gram    : 1 tsp Split black gram lentil   : 1 tsp  Sambar masala     : 1 tbsp"],
        
        ["Title":"Idli","Image":#imageLiteral(resourceName: "idli"),"URL":"https://www.youtube.com/watch?v=xU5T4oZOcNw","Des":"Anyone can try this coz it is made up of simple ingredients which are readily available..."],
        
        ["Title":"Chole Kulcha","Image":#imageLiteral(resourceName: "Chole"),"URL":"https://www.youtube.com/watch?v=88YdG2PqMyM","Des":" Kulcha is a popular street food & is finger licking. Both the spiced matar & the fermented kulcha can be easily made at home. It is an excellent meal for a gathering a home. #MatarKulcha "],
        
        ["Title":"Cheese Toast","Image":#imageLiteral(resourceName: "Cheese Toast"),"URL":"https://www.youtube.com/watch?v=u86z8lEedr8","Des":"In this video, we will be making Chilli Cheese Toast, which is a very quick and easy snack recipe, which tastes fantastic. A perfect recipe to impress!"],
        
         ["Title":"Samosa","Image":#imageLiteral(resourceName: "samosa-recipe"),"URL":"https://www.youtube.com/watch?v=AAm95jaoAJc","Des":"Here I am revealing all the secrets of making best halwai style  samosa ....Easy and quick recipe for all the viewers  ...Please Try and share the feed back with me ..........."],
        
         ["Title":"Butter Naan","Image":#imageLiteral(resourceName: "Butter-naan"),"URL":"https://www.youtube.com/watch?v=kA_3gY9rX4Y","Des":"Welcome to Sonia Barton Channel, In this Channel I share various kind of dishes/recipes in my style which is very simple to make with ingredients available at home and can be easily understood so that anyone and everyone can make it. I make Indian, Chinese, Delhi style, Mughlai, Sweets, bakery items and various other cuisines. "],
         
         ["Title":"Sandwhich","Image":#imageLiteral(resourceName: "Sandwich"),"URL":"https://www.youtube.com/watch?v=JrDdDRWPDdg","Des":"10 Min Sandwich - Crunchy Onion Tomato Toast Recipe is what we're doing today.. Do try and share your feedback :)"],
         
         ["Title":"PaniPuri","Image":#imageLiteral(resourceName: "PaniPuri"),"URL":"https://www.youtube.com/watch?v=OtQftx4TUh0","Des":"Ye kolkata style Pani Puri ko Golgappa, Pani Patasha, Puchka, Gupchup bhi bola jata h."],
         
         ["Title":"MisalPav","Image":#imageLiteral(resourceName: "MisalPav"),"URL":"https://www.youtube.com/watch?v=U24aNCL0YdQ","Des":"Misal pav is popular Maharashtrian breakfast. There are many variations in missal pav. You can have this as breakfast, lunch or brunch. This is spicy curry with sprouts or moth beans (Mataki). It is served with ladi pav. Enjoy missal pav."],
         
         ["Title":"Roasted Chiken","Image":#imageLiteral(resourceName: "baked chicken"),"URL":"https://www.youtube.com/watch?v=T_GNDlsr5Jw","Des":"Chef Seema shows you the easy way to make the most yummiest and tempting chicken starter at home, with just few cooker whistles enjoy the delicious roasted chicken. So watch and learn how to make Roast Chicken at home only on Swaad Anusaar."],
         
         ["Title":"Butter Chiken","Image":#imageLiteral(resourceName: "Butter Chiker"),"URL":"https://www.youtube.com/watch?v=bX7AyuNMrVY","Des":"The easy Butter Chicken recipe is here, no tandoor no oven required. For a good butter chicken the curry and chicken tikka are cooked separately and then finished together in the end."],
         
         ["Title":"Khaman","Image":#imageLiteral(resourceName: "Khaman"),"URL":"https://www.youtube.com/watch?v=AUl2Sx52x0Y","Des":"Nylon khaman recipe | Nylon khaman recipe with tips to make it perfect | #khaman_recipe | ખમણ | khaman recipe | dhokla recipe | Khaman dhokla recipe | khamandhokla | khaman | instant dhokla |ખમણ બનાવવા ની રીત | instant khaman | khaman banavani rit In this video, I have shared nylon Khaman recipe / khaman recipe  (Gujarati : ખમણ) (some people identify this dish as a Dhokla as well). I have shared detailed steps with tips to make it perfect."],
                 
         ["Title":"Omelate","Image":#imageLiteral(resourceName: "basic-french-omelet-930x550"),"URL":"https://www.youtube.com/watch?v=FPkWMaqiCgc","Des":""],
         
         
         ["Title":"Meggi","Image":#imageLiteral(resourceName: "Meggi"),"URL":"https://www.youtube.com/watch?v=YvxoONjaeM8","Des":"Chopped Onion and Capsicum is put in the boiling water in a Pan then Two Packets of MAGGI is added in the pan then Maggi Masala,Schezwan Chutney, Salt, Red Chilli Flakes, Chilli Sauce, Soya Sauce, Saffron Eating color is mixed and pan is closed for a while. "],
         
         ["Title":"Pav Bhaji","Image":#imageLiteral(resourceName: "Pav-Bhaji"),"URL":"https://www.youtube.com/watch?v=n24G3JHOiNk","Des":"pav bhaji recipe | easy mumbai style pav bhaji recipe with detailed photo and video recipe. a world-famous fast food dish or perhaps the king of the street food from the western state of maharashtra. the recipe is an amalgamation of vegetables spiced with a unique blend of spices known as pav bhaji masala and served with soft bread roll aka pav."],
         
         ["Title":"Pasta","Image":#imageLiteral(resourceName: "pasta-article"),"URL":"https://www.youtube.com/watch?v=TgSkS53CrjQ","Des":"White souce Pasta"],
         ["Title":"Shahi kaju Curry","Image":#imageLiteral(resourceName: "shahi-kaju-curry"),"URL":"https://www.youtube.com/watch?v=T9hQV22Uezw","Des":"The most irresistible Paneer dish is Shahi Paneer. Though many versions of the same exist, mine is "],
         ["Title":"Chocolate Shake","Image":#imageLiteral(resourceName: "Shake"),"URL":"https://www.youtube.com/watch?v=EA4yMzlHo9U","Des":" TODAY'S RECIPE IS 3 EASY MILKSHAKE RECIPE | 3 CHOCOLATY MILKSHAKE | CHOCOLATE MILKSHAKE | OREO MILKSHAKE | KITKAT MILKSHAKE "],
         ["Title":"Egg Curry","Image":#imageLiteral(resourceName: "Egg Cury"),"URL":"https://www.youtube.com/watch?v=XqnGikGe3A8","Des":"Dhaba style Anda Masala recipe is a tasty egg curry made using boiled eggs fried and then cooked in a gravy rich in spices"],
         ["Title":"Thepla","Image":#imageLiteral(resourceName: "thepla"),"URL":"https://www.youtube.com/watch?v=58_t_zaygFg","Des":"Methi Thepla, a must try lightly spiced paratha like traditional Gujarati flatbread Recipe is prepared from wheat flour, fenugreek leaves and other spices. Theplas are an inherent part of Gujarati meals and are cooked for regular meals and for travelling. It tastes best when eaten with Garlic Chutney, Curd and chunda."],
         ["Title":"Burger","Image":#imageLiteral(resourceName: "burger"),"URL":"https://www.youtube.com/watch?v=WOE5C-8JjK0","Des":"Veg Burger | How to make Veg Burger at Home | 3S Kitchen"],
        ["Title":"Alu Parotha","Image":#imageLiteral(resourceName: "Alu Parotha"),"URL":"https://www.youtube.com/watch?v=r2N8ObqAgy0","Des":"Indian Aloo Paratha – whole wheat flatbread stuffed with a spicy potato filling. This paratha is best "],
        ["Title":"Daal bati","Image":#imageLiteral(resourceName: "maxresdefault"),"URL":"https://www.youtube.com/watch?v=RHtTyu7rpr8","Des":"How to make Dal Bati, Rajasthani Indian Famous Food"],
        ["Title":"Daal Fry Jeera Rise","Image":#imageLiteral(resourceName: "dal-fry-and-jeera-rice"),"URL":"https://www.youtube.com/watch?v=Z130iUTIIAY","Des":"अगर आपने कभी खाना नहीं बनाया है या कुकिंग में नए है तो ये वीडियो आपके लिए एकदम परफेक्ट है, मैंने होटल जैसा दाल फ्राई और जीरा राइस बनाया है जिसे बनाना बहुत आसान है ..अगर रेसिपी पसंद आए तो लाइक सुर शेयर जरूर करे मुझे ख़ुशी होगी :)v"],
        ["Title":"Dahi Wada","Image":#imageLiteral(resourceName: "dahi-bhalla_650x400_61519796037"),"URL":"https://www.youtube.com/watch?v=0WnHrQWr4xk","Des":"Dosto, aaj ke video me hum log banate h dahi bhalle ki recipe, lekin sabse soft aur tasty wala. ye recipe me hum log ek secret masala bhi banaenge. "],
        ["Title":"Kachori","Image":#imageLiteral(resourceName: "kachori_650x400_51510318031"),"URL":"https://www.youtube.com/watch?v=eJP2jShZWGA","Des":"moong daal khasta kachori recipe is the speciality of rajasthan  .....Here I have shared the authentic recipe but it is really very easy with this method you can make these kachories eaily at home so please do try this recipe and share the feed back  :))"],
        ["Title":"Patra ","Image":#imageLiteral(resourceName: "maxresdefault-2"),"URL":"https://www.youtube.com/watch?v=y6On70lP7Dg","Des":"If you are looking for a new Gujarati recipe, then Patra can be the right choice for you. This scrumptious recipe is made with the goodness of gram flour, ginger-chili paste and a melange of spices. With colocasia as its main ingredient, this lip-smacking recipe gives a whole new experience to your taste buds. One can serve this mouth-watering recipe on occasions like pot, kitty party and anniversaries. "],
        ["Title":"Vadapav","Image":#imageLiteral(resourceName: "vada-pav-recipe"),"URL":"https://www.youtube.com/watch?v=UDLg5FYo9F4","Des":"Today we'll learn how to make Mumbai style Vada Pav with chutney. It is famous roadside Mumbai snacks. It is  made by stuffing deep fried potato fritters in lightly toasted buns and served with spicy garlic chutneys."],
        
         ["Title":"Pulav ","Image":#imageLiteral(resourceName: "vegetable-pulav-recipe"),"URL":"https://www.youtube.com/watch?v=PYzz-JEyuJw","Des":""],
         
          ["Title":"Biryani ","Image":#imageLiteral(resourceName: "54308405.cms"),"URL":"https://www.youtube.com/watch?v=8Fw_zWPbGog","Des":"Hyderabadi Chicken Dum Biryani is a World famous Dish, it is made using chicken which is marinated then cooked and then is added to cooked rice and again cooked under dum"],
          
           ["Title":"Carrot halwa ","Image":#imageLiteral(resourceName: "carrot-halwa-recipe-1-500x500"),"URL":"https://www.youtube.com/watch?v=0DDJ4mpSSfs","Des":"Halwa"],
           
            ["Title":"Green Chatni ","Image":#imageLiteral(resourceName: "Green-Chutney--500x500"),"URL":"https://www.youtube.com/watch?v=3MS8NMiiHqA","Des":"Whether you're looking to make green chutney to dip on dishes like samosas, to eat along with roti & rice, or to spread on dishes like vada pav, dosas.. I've got you covered! Here's 3 ways to prepare green chutney out of the dozen of versions we all make..  Coriander Yogurt Dip to dip on spicy snacks, daily green chutney to eat along with our daily indian food."],
            
             ["Title":"Gulab Jamun ","Image":#imageLiteral(resourceName: "Gulab-Jamun-Indian-Sweet"),"URL":"https://www.youtube.com/watch?v=Do9mk9mya_A","Des":""],
             
              ["Title":"Khir ","Image":#imageLiteral(resourceName: "sago-kheer-sabudana-khir-sweet-260nw-1090520213"),"URL":"https://www.youtube.com/watch?v=HbSeki3SEdg","Des":""],
              
               ["Title":"Jalebi ","Image":#imageLiteral(resourceName: "Jalebi-Recipe-Rasoi-Menu"),"URL":"https://www.youtube.com/watch?v=0w471_wMPP0","Des":""],
               
                ["Title":"Medu wada ","Image":#imageLiteral(resourceName: "South_Indian_Medu_Vada_Sambar_with_Medu_Vada_Maker-8_400"),"URL":"https://www.youtube.com/watch?v=tvd5nuee-Ak","Des":""],
                
                 ["Title":"Raas malai ","Image":#imageLiteral(resourceName: "Kesar-Rasmalai"),"URL":"https://www.youtube.com/watch?v=LECpZPkP9Wk","Des":""],
                 
                  ["Title":"Uthapam ","Image":#imageLiteral(resourceName: "big_onion_tomato_uttapam,_tomato_onion_uttapa-11571"),"URL":"https://www.youtube.com/watch?v=7r2c_m2LePk","Des":""]
        
                
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
        bannerView.adUnitID = "ca-app-pub-3032756932177746/9460777926"
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
        return indian.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! Indian_Cell
        cell.Img.image = indian[indexPath.row]["Image"] as! UIImage
        cell.Lbl.text = indian[indexPath.row]["Title"] as! String
    
        // Configure the cell
    
        return cell
    }


    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if interstitial.isReady {
          interstitial.present(fromRootViewController: self)
        }
        
        var url = indian[indexPath.row]["URL"]
        
        let Detialscene = self.storyboard?.instantiateViewController(identifier: "DetailScene") as! Detail_ViewController
               self.navigationController?.pushViewController(Detialscene, animated: true)
        
        Detialscene.dimg = indian[indexPath.row]["Image"] as! UIImage
        Detialscene.Desc = indian[indexPath.row]["Des"] as! String
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
