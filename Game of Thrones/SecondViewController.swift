//
//  SecondViewController.swift
//  Game of Thrones
//
//  Created by Kush Shah on 10/12/18.
//  Copyright © 2018 Kush Shah. All rights reserved.
//

import UIKit

protocol SideSelectionDelegate{
    func didTapChoice(image: UIImage, name: String, motto: String)
}

class SecondViewController: UIViewController {
    
    var selectionDelegate: SideSelectionDelegate! //force unwrapped because you are passing it to the other screen
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
     // MARK: - Buttons Pressed
    
    @IBAction func starkButtonTapped(_ sender: Any) {
        selectionDelegate.didTapChoice(image: UIImage(named: "housestark")!, name: "House Stark", motto: "Winter is Coming")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func targaryenButtonTapped(_ sender: Any) {
        selectionDelegate.didTapChoice(image: UIImage(named: "housetargaryen")!, name: "House Targaryen", motto: "Fire and Blood")
         dismiss(animated: true, completion: nil)
    }
    
    @IBAction func lannisterButtonTapped(_ sender: Any) {
        selectionDelegate.didTapChoice(image: UIImage(named: "houselannister")!, name: "House Lannister", motto: "A Lannister always repays his debt")
         dismiss(animated: true, completion: nil)
    }
    
    @IBAction func tullyButtonTapped(_ sender: Any) {
        selectionDelegate.didTapChoice(image: UIImage(named: "housetully")!, name: "House Tully", motto: "Family, Duty, Honor")
         dismiss(animated: true, completion: nil)
    }
    
    // MARK: - END

}
