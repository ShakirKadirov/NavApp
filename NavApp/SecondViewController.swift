//
//  SecondViewController.swift
//  NavApp
//
//  Created by Shakir Kadirov on 16.01.2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    // label for user
    
    
    lazy var attentionLbl : UILabel = {
        let lbl = UILabel()
        lbl.text = "Введите новые данные"
        lbl.numberOfLines = 0
        lbl.frame = CGRect(x: 31, y: 186, width: view.frame.width - 31, height: 19)
        return lbl
    }()
    // child view for textField and button
    lazy var childView: UIView = {
        let child = UIView()
        child.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        child.frame = CGRect(x: 31, y: view.center.y - 200, width: view.frame.width - 62, height: 264)
        child.layer.cornerRadius = 20
        return child
    }()
    // name textField
    lazy var nameTF: UITextField = {
        let name = UITextField()
        name.placeholder = "Имя"
        name.backgroundColor = .white
        name.leftView = ofsetView()
        name.leftViewMode = .always // always
        name.layer.cornerRadius = 25
        name.frame.size = CGSize(width: childView.frame.width - 62, height: 54)
        name.frame.origin = CGPoint(x: childView.frame.width - 300, y: lastNameTF.frame.origin.y - 70)
        return name
    }()
    // lastname textField
    lazy var lastNameTF: UITextField = {
        let lastName = UITextField()
        lastName.placeholder = "Фамилия"
        lastName.backgroundColor = .white
        lastName.leftView = ofsetView()
        lastName.leftViewMode = .always // always
        
        lastName.frame.size = CGSize(width: childView.frame.width - 62, height: 54)
        lastName.frame.origin = CGPoint(x: childView.frame.width - 300 , y: childView.bounds.height / 2 - 25)
        lastName.layer.cornerRadius = 25
        return lastName
    }()
    
    //
    func ofsetView() -> UIView{
        let ofView = UIView()
        ofView.frame = CGRect(x: 0, y: 0, width: 10, height: 54)
        return ofView
    }
    // button
    lazy var saveBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("Сохранить", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .black
        btn.layer.cornerRadius = 25
        btn.frame.size = CGSize(width: childView.frame.width - 62, height: 54)
        btn.frame.origin = CGPoint(x: childView.frame.width - 300, y: lastNameTF.frame.origin.y + 70)
        return btn
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Настройки"
        view.backgroundColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // add to superView
        view.addSubview(attentionLbl)
        view.addSubview(childView)
        childView.addSubview(nameTF)
        childView.addSubview(lastNameTF)
        childView.addSubview(saveBtn)
    }
    
}
