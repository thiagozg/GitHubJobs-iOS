//
//  ViewController.swift
//  GitHubJobs
//
//  Created by Thiago Zagui Giacomini on 24/07/19.
//  Copyright © 2019 Thiago Zagui Giacomini. All rights reserved.
//

import UIKit
import Lottie
import SkyFloatingLabelTextField

class InsertLanguageViewController : UIViewController {
    
    @IBOutlet weak var animationView: AnimationView!
    @IBOutlet weak var inputLanguage: SkyFloatingLabelTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.animation = Animation.named("language")
        animationView.loopMode = .loop
    }
    
    override func viewDidAppear(_ animated: Bool) {
        animationView.play()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? InsertLocationViewController {
            viewController.inputQueryDto.language = inputLanguage.text
        }
    }
    
    @IBAction func openInsertLocation(_ sender: Any) {
        performSegue(withIdentifier: "inputLanguage", sender: self)
    }
    
}
