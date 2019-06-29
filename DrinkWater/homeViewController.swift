//
//  ViewController.swift
//  DrinkWater
//
//  Created by David Ho on 6/29/19.
//  Copyright © 2019 David Ho. All rights reserved.
//

import UIKit

class homeViewController: UIViewController {

    @IBOutlet weak var drinkWaterButton: UIButton!
    @IBOutlet weak var contactsTableView: UITableView!
    @IBOutlet weak var titlePromptLabel: UILabel!
    
    init(){
        super.init(nibName: "homeViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        titlePromptLabel.textColor = UIColor.init(red: 9/255, green: 90/255, blue: 204/255, alpha: 1)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func drinkWaterButtonPressed(_ sender: Any) {
        print("Pressed")
    }
    
    @IBAction func settingsButtonPressed(_ sender: Any) {
        print("Settings")
    }
    
    class ContactCell: UITableViewCell {
        
    }
}

