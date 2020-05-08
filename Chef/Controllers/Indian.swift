//
//  Indian.swift
//  Chef
//
//  Created by Nilrajsinh Vaghela on 07/05/20.
//  Copyright © 2020 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit



class Indian: UICollectionViewController {
    
    override func viewWillAppear(_ animated: Bool) {
           tabBarController?.tabBar.isHidden = false
       }
    
    
    var indian = [
        ["Title":"Pizza","Image":#imageLiteral(resourceName: "Pizza"),"URL":"https://www.youtube.com/watch?v=Lyj8wH2iTYg","Des":"Ingredients FOR THE DOUGH Rapid rise yeast 2 Teaspoon  Sugar 1 Tablespoon Warm water 1 1⁄4 Cup (20 tbs) Oil 4 Tablespoon (3 - 4 tablespoons) Salt To Taste Garlic powder 1⁄2 Teaspoon (Optional) Dry italian herbs 1 Tablespoon (Optional) Plain flour 3 Cup (48 tbs) (2 1/2 - 3 cups)  Tomatoes 5 (4 -5 tomatoes) Red bell pepper 1⁄2  FOR THE SAUCE  Carrot 1 , sliced  Onion 1⁄2 , sliced Garlic 3 Clove (15 gm) (2 - 3 cloves) Chopped basil leaves 1⁄4 Cup (4 tbs) Salt To Taste Paprika/Chilli powder To Taste Sugar To Taste (Optional)  Directions GETTING READY "],
        
        ["Title":"Daal Makhni","Image":#imageLiteral(resourceName: "Dal makhni"),"URL":"https://www.youtube.com/watch?v=FTIjbV6yczo","Des":"Method - In a pressure cooker add black gram, red kidney beans, salt and water & keep it for 2-3 whistles. - In a pan add ghee and onions and cook it until the onions turn brown. - Add ginger garlic paste, tomato puree, salt, red chilli powder and coriander leaves.  - Check if the dal is cooked and add it to the tadka and cook it for 7-8 minutes. - In other pan add butter, red chilli powder and pour it over dal and add coriander and fresh cream. Dal Makhani is ready to be served!"],


        ["Title":"Dhosa","Image":#imageLiteral(resourceName: "Indian-Masala-Dosa"),"URL":"https://www.youtube.com/watch?v=llr-GVo_NnI","Des":"Ingredients Rice (chawal)      : 3 cup  split black gram lentil ( dhuli Urad dal)  : 1 cup  flattened rice (poha or chidva)   : 1/2 cup fenugreek seeds (methi dana)   : 1 tbsp Potato     : 4 (medium size) Curry leaves     : 12-15 Green coriander    : 2 tbsp Tomatoes      : 2 (medium size)  Onion     : 2 (medium size)  Frozen Peas     : 2 tbsp  Green chili     : 1-2  Ginger      : 1 tsp (crushed)  Oil       : 2 tbsp  Mustard seeds     : 1 tsp  Salt       : 1 tsp  Turmeric powder   : 1/2 tsp  Red chili powder    : 1/2 tsp Split bengal gram    : 1 tsp Split black gram lentil   : 1 tsp  Sambar masala     : 1 tbsp"],
        
        ["Title":"Idli","Image":#imageLiteral(resourceName: "idli"),"URL":"https://www.youtube.com/watch?v=xU5T4oZOcNw","Des":"Anyone can try this coz it is made up of simple ingredients which are readily available..."],
        
        ["Title":"Chole Kulcha","Image":#imageLiteral(resourceName: "Chole"),"URL":"https://www.youtube.com/watch?v=88YdG2PqMyM","Des":" Kulcha is a popular street food & is finger licking. Both the spiced matar & the fermented kulcha can be easily made at home. It is an excellent meal for a gathering a home. #MatarKulcha "],
        
        ["Title":"Cheese Toast","Image":#imageLiteral(resourceName: "Cheese Toast"),"URL":"","Des":""],
        
         ["Title":"Samosa","Image":#imageLiteral(resourceName: "samosa-recipe"),"URL":"","Des":""],
        
         ["Title":"Butter Naan","Image":#imageLiteral(resourceName: "Butter-naan"),"URL":"","Des":""],
         
         ["Title":"Sandwhich","Image":#imageLiteral(resourceName: "Sandwich"),"URL":"","Des":""],
         
         ["Title":"PaniPuri","Image":#imageLiteral(resourceName: "PaniPuri"),"URL":"","Des":""],
         
         ["Title":"MisalPav","Image":#imageLiteral(resourceName: "MisalPav"),"URL":"","Des":""],
         
         ["Title":"Roasted Chiken","Image":#imageLiteral(resourceName: "baked chicken"),"URL":"","Des":""],
         
         ["Title":"Butter Chiken","Image":#imageLiteral(resourceName: "Butter Chiker"),"URL":"","Des":""],
         
         ["Title":"Khaman","Image":#imageLiteral(resourceName: "Khaman"),"URL":"","Des":""],
                 
         ["Title":"Omelate","Image":#imageLiteral(resourceName: "basic-french-omelet-930x550"),"URL":"","Des":""],
         
         
         ["Title":"Meggi","Image":#imageLiteral(resourceName: "Meggi"),"URL":"","Des":""],
         
         ["Title":"Pav Bhaji","Image":#imageLiteral(resourceName: "Pav-Bhaji"),"URL":"","Des":""],
         
         ["Title":"Pasta","Image":#imageLiteral(resourceName: "pasta-article"),"URL":"","Des":""],
         ["Title":"Shahi kaju Curry","Image":#imageLiteral(resourceName: "shahi-kaju-curry"),"URL":"","Des":""],
         ["Title":"Chocolate Shake","Image":#imageLiteral(resourceName: "Shake"),"URL":"","Des":""],
         ["Title":"Egg Curry","Image":#imageLiteral(resourceName: "Egg Cury"),"URL":"","Des":""],
         ["Title":"Thepla","Image":#imageLiteral(resourceName: "thepla"),"URL":"","Des":""],
         ["Title":"Burger","Image":#imageLiteral(resourceName: "burger"),"URL":"","Des":""],
        ["Title":"Alu Parotha","Image":#imageLiteral(resourceName: "Alu Parotha"),"URL":"","Des":""],
        ["Title":"Daal bati","Image":#imageLiteral(resourceName: "maxresdefault"),"URL":"","Des":""],
        ["Title":"Daal Fry Jeera Rise","Image":#imageLiteral(resourceName: "dal-fry-and-jeera-rice"),"URL":"","Des":""],
        ["Title":"Dahi Wada","Image":#imageLiteral(resourceName: "dahi-bhalla_650x400_61519796037"),"URL":"","Des":""],
        ["Title":"Kachori","Image":#imageLiteral(resourceName: "kachori_650x400_51510318031"),"URL":"","Des":""],
        ["Title":"Patra ","Image":#imageLiteral(resourceName: "maxresdefault-2"),"URL":"","Des":""],
        ["Title":"Vadapav","Image":#imageLiteral(resourceName: "vada-pav-recipe"),"URL":"","Des":""],
        
         ["Title":"Pulav ","Image":#imageLiteral(resourceName: "vegetable-pulav-recipe"),"URL":"","Des":""],
         
          ["Title":"Biryani ","Image":#imageLiteral(resourceName: "54308405.cms"),"URL":"","Des":""],
          
           ["Title":"Carrot halwa ","Image":#imageLiteral(resourceName: "carrot-halwa-recipe-1-500x500"),"URL":"","Des":""],
           
            ["Title":"Green Chatni ","Image":#imageLiteral(resourceName: "Green-Chutney--500x500"),"URL":"","Des":""],
            
             ["Title":"Gulab Jamun ","Image":#imageLiteral(resourceName: "Gulab-Jamun-Indian-Sweet"),"URL":"","Des":""],
             
              ["Title":"Khir ","Image":#imageLiteral(resourceName: "sago-kheer-sabudana-khir-sweet-260nw-1090520213"),"URL":"","Des":""],
              
               ["Title":"Jalebi ","Image":#imageLiteral(resourceName: "Jalebi-Recipe-Rasoi-Menu"),"URL":"","Des":""],
               
                ["Title":"Medu wada ","Image":#imageLiteral(resourceName: "South_Indian_Medu_Vada_Sambar_with_Medu_Vada_Maker-8_400"),"URL":"","Des":""],
                
                 ["Title":"Raas malai ","Image":#imageLiteral(resourceName: "Kesar-Rasmalai"),"URL":"","Des":""],
                 
                  ["Title":"Uthapam ","Image":#imageLiteral(resourceName: "big_onion_tomato_uttapam,_tomato_onion_uttapa-11571"),"URL":"","Des":""]
        
                
                    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var CustomImageFlow = FlowLayoutColllectionView()
              collectionView.collectionViewLayout = CustomImageFlow
        

    
    }

  

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
