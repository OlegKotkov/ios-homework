//
//  PostViewController.swift
//  Navigation
//
//  Created by mac on 08.09.2021.
//

import UIKit

class PostViewController: UIViewController {
    var text: String?
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemPink
        
        button.backgroundColor = .systemYellow
        button.frame = CGRect (x: 40, y: 200, width: 200, height: 44)
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        view.addSubview(button)
        button.setTitle(text, for: .normal)
        
        
        let rightButton: UIBarButtonItem = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.done, target: self, action: #selector(PostViewController.doneButtonClicked(_:)))
        
        self.navigationItem.rightBarButtonItem = rightButton


    }
    
    @objc func tap() {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @objc func doneButtonClicked(_ button:UIBarButtonItem!){
        print("Done clicked")
    }

}
