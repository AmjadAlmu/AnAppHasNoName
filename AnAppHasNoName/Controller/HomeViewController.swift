//
//  HomeViewController.swift
//  AnAppHasNoName
//
//  Created by Amjad on 26/10/2018.
//  Copyright © 2018 Amjad. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    private var items = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.title = "Home"
        
        setUpMenuBar()
    }
    
    let menuBar: MenuBar = {
        let mb = MenuBar()
        return mb
    }()
    
    private func setUpMenuBar() {
        view.addSubview(menuBar)
        view.addConstraintsWithFormat("H:|[v0]|", views: menuBar)
        view.addConstraintsWithFormat("V:|[v0(50)]", views: menuBar)
    }
    
    @IBAction func logOutButton(_ sender: Any) {
        //TODO: Move this button to user's profile
        ServerManger.logOut(onSuccess: {
            self.performSegue(withIdentifier: "SignInViewController", sender: nil)
        }) { (error) in
            //TODO: Refactoring
            print("The ERROR \(error)!!!!!!!!!!")
        }
    }
    
    
}
