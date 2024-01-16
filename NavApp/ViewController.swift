//
//  ViewController.swift
//  NavApp
//
//  Created by Shakir Kadirov on 16.01.2024.
//

import UIKit
// create protocol for delegate

protocol ViewControllerDelegete{}

class ViewController: UIViewController {
    // image
    // name and lastname on one line
    // button to open Setting page
    lazy var settingButton: UIButton = {
        let btn = UIButton(primaryAction: openSettings)
        btn.setTitle("Настройки", for: .normal)
        btn.setTitleColor(.systemBlue, for: .normal)
        btn.frame = CGRect(x: 200, y: 200, width: view.frame.width - 100, height: 19)
        return btn
    }()
    // action
    lazy var openSettings = UIAction{_ in
        let vc = SecondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    // three view with text
    // and image
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Профиль"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        //add to super View
        view.addSubview(settingButton)
    }
}

