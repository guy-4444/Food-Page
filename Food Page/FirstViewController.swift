//
//  FirstViewController.swift
//  Food Page
//
//  Created by Guy Macin on 30/04/2020.
//  Copyright © 2020 Guy Macin. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var first_EDT_model: UITextField!
    
    
    
    
    
    
    
    // MARK: - Parameters
    
    var foods: [Food] = []
    var chosenFoodItem: Food?
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foods.append(Food("Apple", 200))
        foods.append(Food("Pizza", 800))
        foods.append(Food("Cake", 2040))
        foods.append(Food("Kebab", 1300))
    }
    
    @IBAction func openClicked(_ sender: Any) {
        let chosenFood: String = (first_EDT_model.text?.lowercased()) ?? ""
        print("chosenFood: \(chosenFood)")

        for f in foods {
            print("Food \(f.name)")
            if (f.name?.lowercased() == chosenFood) {
                chosenFoodItem = f
            }
        }
        
        self.performSegue(withIdentifier: "goToFoodPage", sender: self)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToFoodPage") {
            let secondView = segue.destination as! SecondViewController
            secondView.food = chosenFoodItem
        }
    }
    

}
