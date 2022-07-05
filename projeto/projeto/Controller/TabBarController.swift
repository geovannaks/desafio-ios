//
//  TabBarController.swift
//  desafio-ios
//
//  Created by Geovanna Kasemirinski da Silva on 03/07/22.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.viewControllers = [homeTabBar, cardTabBar, managementTabBar,pixTabBar, accountTabBar ]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    lazy public var homeTabBar: HomeView = {
        
        let tabBar = HomeView()
        let title = "Início"
        let defaultImage = UIImage(named: "home")!
        let selectedImage = UIImage(named: "home")
        let tabBarItems = (title: title, image: defaultImage, selectedImage: selectedImage)
        let tabBarItem = UITabBarItem(title: tabBarItems.title, image: tabBarItems.image, selectedImage: tabBarItems.selectedImage)
        tabBar.tabBarItem = tabBarItem
        return tabBar
    }()
    
    lazy public var cardTabBar: CardView = {
        
        let initialTabBar = CardView()
        let title = "Cartão"
        let defaultImage = UIImage(named: "card")!
        let selectedImage = UIImage(named: "card")
        let tabBarItems = (title: title, image: defaultImage, selectedImage: selectedImage)
        let tabBarItem = UITabBarItem(title: tabBarItems.title, image: tabBarItems.image, selectedImage: tabBarItems.selectedImage)
        initialTabBar.tabBarItem = tabBarItem
        return initialTabBar
    }()
    
    lazy public var managementTabBar: ManagementView = {
        
        let initialTabBar = ManagementView()
        let title = "Gestão"
        let defaultImage = UIImage(named: "management")!
        let selectedImage = UIImage(named: "management")
        let tabBarItems = (title: title, image: defaultImage, selectedImage: selectedImage)
        let tabBarItem = UITabBarItem(title: tabBarItems.title, image: tabBarItems.image, selectedImage: tabBarItems.selectedImage)
        initialTabBar.tabBarItem = tabBarItem
        tabBarItem.standardAppearance?.selectionIndicatorTintColor = UIColor.init(named: "Grey")
        return initialTabBar
    }()
    
    
    lazy public var pixTabBar: PixView = {
        
        let initialTabBar = PixView()
        let title = "Pix"
        let defaultImage = UIImage(named: "pix")!
        let selectedImage = UIImage(named: "pix")
        let tabBarItems = (title: title, image: defaultImage, selectedImage: selectedImage)
        let tabBarItem = UITabBarItem(title: tabBarItems.title, image: tabBarItems.image, selectedImage: tabBarItems.selectedImage)
        initialTabBar.tabBarItem = tabBarItem
        tabBarItem.standardAppearance?.selectionIndicatorTintColor = UIColor.init(named: "Grey")
        return initialTabBar
    }()
    
    
    lazy public var accountTabBar: AccountView = {
        
        let initialTabBar = AccountView()
        let title = "Conta"
        let defaultImage = UIImage.init(systemName: "person.circle.fill")
        let selectedImage = UIImage.init(systemName: "person.circle.fill")
        let tabBarItems = (title: title, image: defaultImage, selectedImage: selectedImage)
        let tabBarItem = UITabBarItem(title: tabBarItems.title, image: tabBarItems.image, selectedImage: tabBarItems.selectedImage)
        initialTabBar.tabBarItem = tabBarItem

        return initialTabBar
    }()
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
}

extension TabBarController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title!)")
    }
    
}
