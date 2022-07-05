
import Foundation
import UIKit
import SnapKit

final class DataView: UILabel{
    
    private var roman: UILabel = {
       let label = UILabel()
        label.font = UIFont(name: "AvenirLTStd-Black", size: 14)
        label.textColor = UIColor(named: "Dark")
        label.textAlignment = .left
        return label
    }()
    
    
    private var heavy: UILabel = {
       let label = UILabel()
        label.font = UIFont(name: "AvenirLTStd-Black", size: 14)
        label.textColor = UIColor(named: "Dark")
        label.textAlignment = .left
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(roman)
        addSubview(heavy)
        

    }
    
    required init?(coder: NSCoder){
        fatalError()
    }
    
    func configure(with viewModel: DataModel){
        roman.text = viewModel.roman
        heavy.text = viewModel.heavy
     
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        roman.sizeToFit()
        //roman.frame = CGRect(x: <#T##Int#>, y: <#T##Int#>, width: <#T##Int#>, height: <#T##Int#>)
    }
}
