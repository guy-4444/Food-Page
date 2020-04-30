//
//  FirstViewController.swift
//  Food Page
//
//  Created by Guy Macin on 30/04/2020.
//  Copyright © 2020 Guy Macin. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var foods: [Food] = []
    
    @IBOutlet weak var first_EDT_model: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        foods.append(Food("Hamburger", 1200))
        foods.append(Food("Pizza", 800))
        foods.append(Food("Cake", 200))
        
        

    }
    
    @IBAction func openClicked(_ sender: Any) {
        let chosenFood: String = first_EDT_model.text ?? ""
        
        for f in foods {
            print("Food \(f.name)")
            if (f.name == chosenFood) {
                break
            }

        }
        
        //print("Clicked: \(first_EDT_model.text)")
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
