
import Foundation
import UIKit
import SnapKit


final class ButtonView: UIButton {
    private let textButton: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "AvenirLTStd-Black", size: 14)
        label.textColor = UIColor(named: "Pink")
        label.textAlignment = .left
        return label
        
    }()
    
    private let imageButton: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = true
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    private let secundyImageButton: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = true
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(textButton)
        addSubview(imageButton)
        addSubview(secundyImageButton)
        clipsToBounds = true
        layer.cornerRadius = 12
        tintColor = .white
        backgroundColor = .white
    }
    
    
    required init?(coder: NSCoder){
        fatalError()
    }
    
    
    func configure(with viewModel: ButtonModel){
        textButton.text = viewModel.textButton
        imageButton.image = viewModel.imageButton
        secundyImageButton.image = viewModel.secundyImageButton
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        textButton.sizeToFit()
        let iconsize: CGFloat = 24
        let iconX: CGFloat = (frame.size.width - textButton.frame.size.width - iconsize - 5) / 2
        imageButton.frame = CGRect(x: 16, y: 16, width: iconsize, height: iconsize)
        textButton.frame = CGRect(x: 56 , y: 3 , width: textButton.frame.size.width, height: frame.size.height)
        secundyImageButton.frame = CGRect(x: 303, y: 16, width: iconsize, height: iconsize)
    }
    
}


