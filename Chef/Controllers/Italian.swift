//
//  Italian.swift
//  Foodie
//
//  Created by Nilrajsinh Vaghela on 08/05/20.
//  Copyright © 2020 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit



class Italian: UICollectionViewController {
    
    override func viewWillAppear(_ animated: Bool) {
              tabBarController?.tabBar.isHidden = false
          }
    
    var Italian = [
     ["Title":"Caprese Salad with Pesto Sauce","Image":#imageLiteral(resourceName: "caprese-salad_625x350_51506417724.jpg"),"URL":"","Des":"Nothing like a fresh tomato salad in summers! A great antipasto bite to start your meal with. This combination of juicy tomatoes and mozzarella cheese salad topped with freshly made pesto sauce is a distinct yet simple one. It offers a twist to the classic caprese salad"],
                  
                   ["Title":"Panzenella","Image":#imageLiteral(resourceName: "panzenella_600x300_71506417795.jpg"),"URL":"","Des":"Panzenella is a Tuscan bread salad, ideal for summer. It does not follow a particular recipe, but the two ingredients that do not change are tomatoes and bread. This salad is great with a chilled glass of Prosecco and lots of sunshine!"],
                   
                    ["Title":"Bruschetta","Image":#imageLiteral(resourceName: "bruschetta_625x350_71506417841.jpg"),"URL":"","Des":"An antipasto dish, bruschetta has grilled bread topped with veggies, rubbed garlic and tomato mix. A country bread sliced and topped with different toppings - the evergreen tomato-basil and an inventive mushroom-garlic. The classic Italian starter!"],
                    
                     ["Title":"Margherita Pizza","Image":#imageLiteral(resourceName: "South_Indian_Medu_Vada_Sambar_with_Medu_Vada_Maker-8_400"),"URL":"","Des":"Fancy a pipping hot pizza, fresh out of the oven? Create one at home! Margherita Pizza is to many the true Italian flag. One of the most loved Italian dishes, it just takes a few simple ingredients and you get insanely delicious results! You just can't go wrong with that tomato, basil and fresh mozzarella combo."],
                     
                     
                      ["Title":"Lasagna","Image":#imageLiteral(resourceName: "lasagna_620x350_81508846322.jpg"),"URL":"https://www.youtube.com/watch?v=U0zk2H3mMoA","Des":"In this video, we're cooking Lasagne at home, without using an oven. This vegetable lasagne has an Indian twist, just the way we like it. Plus point of the recipe is, we will be making our very own eggless pasta dough, and then the lasagna sheets. This recipe will be made from scratch."],
                      
                       ["Title":"Ossobuco alla Milanese","Image":#imageLiteral(resourceName: "ossobuco-alla-milanese.jpg"),"URL":"https://www.youtube.com/watch?v=9GUTC2Qwrf0","Des":"L’ossobuco alla milanese con risotto giallo è una ricetta tipica della città di Milano e, più in generale, della Lombardia: Nella cucina di GialloZafferano abbiamo avuto l'onore di ospitare un grande chef, Alessandro Negrini, che ci ha svelato tutti i suoi segreti per preparare questa pietanza, sostanziosa e dal gusto robusto."],
                       
                        ["Title":"Gelato","Image": #imageLiteral(resourceName: "italian-gelato.jpg"),"URL":"https://www.youtube.com/watch?v=LVtRrvmSJ8M","Des":"To get this complete recipe with instructions and measurements, check out my website: http://www.LauraintheKitchen.com"],
                        
                        ["Title":"Panzanella","Image":#imageLiteral(resourceName: "panzanella-salad.jpg"),"URL":"https://www.youtube.com/watch?v=J-Rn9DN3IjU","Des":"Learn how to make a Crispy Panzanella Salad recipe! Go to http://foodwishes.blogspot.com/2014/0... for the ingredient amounts, extra information, and many, many more video recipes! I hope you enjoy this easy Tuscan Bread & Tomato Salad video!"],
                         
                          ["Title":"Focaccia","Image": #imageLiteral(resourceName: "focaccia-liguria.jpg"),"URL":"https://www.youtube.com/watch?v=-DmVedGWAnU","Des":"Italian focaccia bread is a fantastic gateway to the the world of bread making. This recipe simplifies the dough making process, step-by-step, in a way that's easy to understand. The results are truly amazing."],
                          

                           ["Title":"Spaghetti alla Carbonara","Image": #imageLiteral(resourceName: "spaghetti-carbonara.jpg"),"URL":"https://www.youtube.com/watch?v=D_2DBLAt57c","Des":"Jamie shows us how to make a truly authentic, traditional and classic Spaghetti Carbonara. The dish uses two traditional Italian ingredients; a cured meat called Guanciale and Roma’s staple cheese, Pecorino Romano. This is the perfect Italian treat! Enjoy!"],
                          
                           ["Title":"Cicchetti","Image":#imageLiteral(resourceName: "italian-cicchetti.jpg") ,"URL":"https://www.youtube.com/watch?v=2p5OwZK0W2M","Des":" A tipical venetian recipe, suitable for cocktail time or dinner. "],
                           
                           ["Title":"Burrata","Image": #imageLiteral(resourceName: "burrata-cheese.jpg"),"URL":"https://www.youtube.com/watch?v=uNxeeS2DMY8","Des":" Love the creamy taste of fresh burrata cheese but hate the costly price tag that comes with it? Then follow along as Brandon Boudet, executive chef and co-owner of Dominick's Restaurant, demonstrates how to make the Italian cheese yourself. It's simpler than you think! Watch the video, and then get the burrata recipe."],
                           
                           ["Title":"Arancini","Image":#imageLiteral(resourceName: "1426576976-4881966.jpeg") ,"URL":"https://www.youtube.com/watch?v=4lZ7y4FN3eM","Des":"Another beautiful Italian recipe direct from the grand master of Food Tube - Gennaro. These simple Arancini are a great way to use up left over Risotto Bianco and make a fantastic meal in themselves. Try them at your family parties this Thanksgiving weekend."],
                           
                               ["Title":"Saltimbocca","Image": #imageLiteral(resourceName: "1426578956-9821121.jpeg"),"URL":"https://www.youtube.com/watch?v=rm9q_JLXiAY","Des":"Today I would like to share with you my Chicken Saltimbocca Recipe."],
                           
                                ["Title":"Ossobuco","Image":#imageLiteral(resourceName: "ossobuco-b-768x700.jpg") ,"URL":"https://www.youtube.com/watch?v=b3_NQiH_WMc","Des":"Ossobuco is a top dish from Italian cuisine. You do not have to travel to Italy to enjoy a delicious 'ossobuco alla Milanese' again. With these tips and recipe, you simply get the southern flavors to your kitchen. And that with our own Belgian veal."],
                                
                                
                                 ["Title":"Cotoletta alla Milanese","Image": #imageLiteral(resourceName: "cotoletta.jpg"),"URL":"https://www.youtube.com/watch?v=CqqoZDfUoPM","Des":"The Wiener schnitzel"]
        
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
        return Italian.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! Indian_Cell
               cell.Img.image = Italian[indexPath.row]["Image"] as! UIImage
                cell.Lbl.text = Italian[indexPath.row]["Title"] as! String
    
        // Configure the cell
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         var url = Italian[indexPath.row]["URL"]
         
         let Detialscene = self.storyboard?.instantiateViewController(identifier: "DetailScene") as! Detail_ViewController
                self.navigationController?.pushViewController(Detialscene, animated: true)
         
         Detialscene.dimg = Italian[indexPath.row]["Image"] as! UIImage
         Detialscene.Desc = Italian[indexPath.row]["Des"] as! String
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
