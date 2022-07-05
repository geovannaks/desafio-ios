import UIKit
import SnapKit

class HomeView: UIViewController {
    
    lazy var background: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.backgroundColor = .white
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackground()
        setupTabBar()
    }
    
    func setupTabBar(){
        tabBarController?.tabBar.tintColor = UIColor.init(named: "Pink")
        tabBarController?.tabBar.unselectedItemTintColor = UIColor.init(named: "Dark")
        tabBarController?.tabBar.backgroundColor = .white
    }
    
    
    
    private func setupBackground(){
        view.addSubview(background)
        background.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
}
