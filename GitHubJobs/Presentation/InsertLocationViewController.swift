//
//  InsertLocationViewController.swift
//  GitHubJobs
//
//  Created by Thiago Zagui Giacomini on 25/07/19.
//  Copyright © 2019 Thiago Zagui Giacomini. All rights reserved.
//

import UIKit
import Lottie
import SkyFloatingLabelTextField

class InsertLocationViewController: UIViewController {

    var inputQueryDto = InputQueryDTO()
    @IBOutlet weak var inputLocation: SkyFloatingLabelTextField!
    @IBOutlet weak var animationView: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.loopMode = .loop
    }
    
    override func viewDidAppear(_ animated: Bool) {
        animationView.play()
    }

    @IBAction func fetchJobsResults(_ sender: Any) {
        // TODO: create ViewModel and Request Process
        inputQueryDto.location = inputLocation.text
        print(inputQueryDto.language)
        print(inputQueryDto.location)
    }
}
