//
//  ViewController.swift
//  allSample
//
//  Created by Keisuke Horiguchi on 2021/08/04.
//

import UIKit

class ViewController: UIViewController {
    
    let button: UIButton = {
        let view = UIButton.init()
        view.backgroundColor = UIColor.red
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("したから出てくるやつ", for: .normal)
        view.addTarget(self, action: #selector(openModal(_:)), for: .touchUpInside)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)
        ])
    }
      
    @objc func openModal(_ sender: UIButton) {
        let modalViewController = CollectionViewController.init()
        present(modalViewController, animated: true, completion: nil)
    }
    
}

