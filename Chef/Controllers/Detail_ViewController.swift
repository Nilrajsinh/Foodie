//
//  Detail_ViewController.swift
//  Chef
//
//  Created by Nilrajsinh Vaghela on 07/05/20.
//  Copyright © 2020 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds

class Detail_ViewController: UIViewController,GADBannerViewDelegate, GADInterstitialDelegate {
    
    @IBOutlet weak var BImg: UIImageView!
    @IBOutlet weak var Description: UILabel!
    

    var YouUrl = ""
    var dimg = UIImage()
    var Desc = ""
    
    
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
        bannerView.adUnitID = "ca-app-pub-3032756932177746/4750827981"
        bannerView.rootViewController = self
         bannerView.load(GADRequest())
         bannerView.delegate = self
        
        
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-3032756932177746/8414740827")
               let request = GADRequest()
                  interstitial.load(request)
                interstitial = createAndLoadInterstitial()
               interstitial.delegate = self
        
        BImg.image = dimg
        Description.text = Desc

        // Do any additional setup after loading the view.
    }
    

    @IBAction func PlayBtn(_ sender: Any) {
        if interstitial.isReady {
          interstitial.present(fromRootViewController: self)
        }
        
                let instagramHooks = YouUrl as! String
                var instagramUrl = NSURL(string: instagramHooks)
                  if UIApplication.shared.canOpenURL(instagramUrl! as URL)
              {
            UIApplication.shared.openURL(instagramUrl! as URL)
        } else {
            UIApplication.shared.openURL(NSURL(string: "https://youtube.com")! as URL)
                }
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isTranslucent = true
        tabBarController?.tabBar.isHidden = true
        
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
