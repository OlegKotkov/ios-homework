//
//  InfoViewController.swift
//  Navigation
//
//  Created by mac on 09.09.2021.
//

import UIKit

class InfoViewController: UIViewController {
    let button = UIButton()


    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGreen
        
        button.backgroundColor = .systemTeal
        button.frame = CGRect (x: 40, y: 200, width: 200, height: 44)
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        view.addSubview(button)
        button.setTitle("Warning", for: .normal)

    }
    
    @objc func tap() {
        self.dismiss(animated: true, completion: nil)
        
    }

}
