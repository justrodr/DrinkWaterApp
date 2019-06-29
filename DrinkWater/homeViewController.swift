//
//  ViewController.swift
//  DrinkWater
//
//  Created by David Ho on 6/29/19.
//  Copyright © 2019 David Ho. All rights reserved.
//

import UIKit
import Contacts

class homeViewController: UIViewController {

    @IBOutlet weak var drinkWaterButton: UIButton!
    private var contactList = [CNContact]()
    
    init(){
        super.init(nibName: "homeViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fetchContacts()
        self.view.backgroundColor = UIColor.blue
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func fetchContacts() {
        print("Attempting to fetch contacts!")
        let store = CNContactStore()
        store.requestAccess(for: .contacts) { (granted, error) in
            if error != nil {
                print ("Error fetching contacts")
                return
            }
            
            let keys: [CNKeyDescriptor] = [CNContactGivenNameKey as CNKeyDescriptor]
            let request = CNContactFetchRequest(keysToFetch: keys)
            
            do {
                try store.enumerateContacts(with: request, usingBlock: { (contact, stopPointer) in
                    self.contactList.append(contact)
                })
            } catch let error {
                print ("Failed to enumerate contacts:", error)
            }
        }
    }

    @IBAction func drinkWaterButtonPressed(_ sender: Any) {
        print("Pressed")
    }
    
    @IBAction func settingsButtonPressed(_ sender: Any) {
        print("Settings")
    }
    
}

