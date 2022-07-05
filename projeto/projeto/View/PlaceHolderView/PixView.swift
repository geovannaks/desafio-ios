import UIKit
import SnapKit

class PixView: UIViewController {
    
    lazy var background: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.backgroundColor = .white
        
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackground()
       
    }
    
    
    private func setupBackground(){
        view.addSubview(background)
        background.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
}
