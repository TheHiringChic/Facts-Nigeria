//
//  ViewController.swift
//  FactsNigeria
//
//  Created by Oghosa Igbinakenzua on 2016-05-02.
//  Copyright © 2016 Oghosa Igbinakenzua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factModel = FactModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factModel.getRandomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        let randomColor = ColorModel().getRandomColor()
        view.backgroundColor = randomColor
        funFactLabel.text = factModel.getRandomFact()
        funFactButton.tintColor = randomColor
    }

}

