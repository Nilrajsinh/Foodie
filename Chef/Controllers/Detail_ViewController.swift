//
//  Detail_ViewController.swift
//  Chef
//
//  Created by Nilrajsinh Vaghela on 07/05/20.
//  Copyright © 2020 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit

class Detail_ViewController: UIViewController {
    
    @IBOutlet weak var BImg: UIImageView!
    @IBOutlet weak var Description: UILabel!
    

    var YouUrl = ""
    var dimg = UIImage()
    var Desc = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BImg.image = dimg
        Description.text = Desc

        // Do any additional setup after loading the view.
    }
    

    @IBAction func PlayBtn(_ sender: Any) {
        
                let instagramHooks = YouUrl as! String
                var instagramUrl = NSURL(string: instagramHooks)
                  if UIApplication.shared.canOpenURL(instagramUrl! as URL)
              {
            UIApplication.shared.openURL(instagramUrl! as URL)
        } else {
            UIApplication.shared.openURL(NSURL(string: "https://youtube.com")! as URL)
                }
        
        
    }
    
    @IBAction func Share(_ sender: Any) {
        
        let activityVC = UIActivityViewController(activityItems: [YouUrl], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        present(activityVC ,animated : true ,completion : nil)
    }
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
