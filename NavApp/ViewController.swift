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
    lazy var profileImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "mountainImage.jpg")
//        image.frame = CGRect(x: 33 , y: 142, width: 100, height: 100)
        image.frame.size = CGSize(width: 100, height: 100)
        image.frame.origin.x =  view.center.x
        image.frame.origin.y = bigImage.frame.origin.y - 250
        image.layer.cornerRadius = image.frame.width / 2
        image.clipsToBounds = true
        return image
    }()
    // name and lastname on one line
    lazy var firstName: UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.frame = CGRect(x: 31, y: profileImage.frame.origin.y + 110, width: 100, height: 19)
        return label
    }()
    lazy var lastName: UILabel = {
        let label = UILabel()
        label.text = "Last name"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.frame = CGRect(x: 135, y: 160, width: 100, height: 19)
        return label
    }()
    // button to open Setting page
    lazy var settingButton: UIButton = {
        let btn = UIButton(primaryAction: openSettings)
        btn.setTitle("Настройки", for: .normal)
        btn.setTitleColor(.systemBlue, for: .normal)
//        btn.frame = CGRect(x: 100, y: bigImage.frame.origin.y + 70, width: 100, height: 19)
        btn.frame.size = CGSize(width: 100, height: 19)
        btn.frame.origin = CGPoint(x: followingView.center.x / 2 + 50, y: followingView.frame.origin.y - 100 )
        return btn
    }()
    // action
    lazy var openSettings = UIAction{_ in
        let vc = SecondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    // three view with text
    
    lazy var friendView: UIView = {
        let friendView = UIView()
        friendView.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        friendView.frame = CGRect(x: 31, y: bigImage.frame.origin.y - 100 , width: 100, height: 79)
        friendView.layer.cornerRadius = 10
        return friendView
    }()
    
    lazy var followingView: UIView = {
        let followingView = UIView()
        followingView.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        followingView.frame = CGRect(x:friendView.frame.origin.x + 110 , y: bigImage.frame.origin.y - 100, width: 100, height: 79)
        followingView.layer.cornerRadius = 10
        return followingView
    }()
    lazy var favoritesView: UIView = {
        let favoritesView = UIView()
        favoritesView.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        favoritesView.frame = CGRect(x: followingView.frame.origin.x + 110, y: bigImage.frame.origin.y - 100, width: 100, height: 79)
        favoritesView.layer.cornerRadius = 10
        return favoritesView
    }()
    // and image
    lazy var bigImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "bigImage.jpg")
        image.frame = CGRect(x: 31, y: view.center.y, width: view.frame.width - 62, height: 300)
        image.layer.cornerRadius = 20
        image.clipsToBounds = true
        return image
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Профиль"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        //add to super View
        view.addSubview(profileImage)
        
        view.addSubview(firstName)
        view.addSubview(friendView)
        view.addSubview(lastName)
        view.addSubview(followingView)
        view.addSubview(favoritesView)
        view.addSubview(settingButton)
        view.addSubview(bigImage)
        
    }
}

