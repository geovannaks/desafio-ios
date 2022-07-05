

import UIKit
import SnapKit

class CadView: UIViewController{
    
    

    lazy var background: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.backgroundColor = UIColor.init(named: "Pink")
        return view
    }()
    
    lazy var imageFirst: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.image = UIImage(named: "image")
        image.translatesAutoresizingMaskIntoConstraints = true
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    lazy var titleLabel: UILabel = {
        let title = UILabel()
        title.font = UIFont(name: "AvenirLTStd-Black", size: 28)
        title.textColor = .white
        title.numberOfLines = 0
        title.lineBreakMode = .byWordWrapping
        let attributes: [NSAttributedString.Key : Any] = [.strokeWidth: -2.0,
                                                          .strokeColor: UIColor.black,
                                                          .foregroundColor: UIColor.white]
        title.attributedText = NSAttributedString(string: "Conta Digital PJ", attributes: attributes)
        title.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        title.layer.shadowRadius = 1.0
        title.layer.shadowOpacity = 4
        title.layer.shadowOffset = CGSize(width: 0, height: 4)
        title.layer.masksToBounds = false
        return title
    }()
    
    lazy var subtitleLabel: UILabel = {
        let subtitle = UILabel()
        subtitle.font = UIFont(name: "AvenirLTStd-Roman", size: 28)
        subtitle.textColor = .white
        subtitle.numberOfLines = 0
        let attributes: [NSAttributedString.Key : Any] = [.strokeWidth: -2.0,
                                                          .strokeColor: UIColor.black,
                                                          .foregroundColor: UIColor.white]
        subtitle.attributedText = NSAttributedString(string: "Poderosamente simples", attributes: attributes)
        subtitle.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        subtitle.layer.shadowRadius = 1.0
        subtitle.layer.shadowOpacity = 4
        subtitle.layer.shadowOffset = CGSize(width: 0, height: 4)
        subtitle.layer.masksToBounds = false
        return subtitle
    }()
    
    lazy var textLabel: UILabel = {
        let text = UILabel()
        text.text = "Sua empresa livre burocracias e de taxas para gerar boletos, fazer transferências e pagamentos."
        text.numberOfLines = 0
        text.font = UIFont(name: "Avenir", size: 16)
        text.textColor = .white
        return text
    }()
    
    lazy var partButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(UIColor.init(named: "Pink"), for: .normal)
        button.setTitle("     Quero fazer parte!", for: .normal)
        button.setImage(UIImage.init(named: "arrow"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: 135, bottom: 0, right: 0)
        button.semanticContentAttribute = UIApplication.shared
            .userInterfaceLayoutDirection == .rightToLeft ? .forceLeftToRight : .forceRightToLeft
        button.layer.cornerRadius = 16
        button.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        button.titleLabel?.font = UIFont(name: "AvenirLTStd-Roman", size: 16)
        button.backgroundColor = .white
        button.layer.masksToBounds =  true
        button.translatesAutoresizingMaskIntoConstraints = true
        button.addTarget(LoginView(), action: #selector(navigationMenu), for: .touchUpInside)
        return button
    }()
    
    
    lazy var clientButton: UIButton = {
        let button = UIButton()
        button.setTitleColor( .white, for: .normal)
        button.setTitle("Já sou cliente", for: .normal)
        button.layer.cornerRadius = 16
        button.titleLabel?.font = UIFont(name: "AvenirLTStd-Roman", size: 14)
        button.backgroundColor = UIColor.init(named: "Pink")
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1.0
        button.layer.masksToBounds =  true
        button.translatesAutoresizingMaskIntoConstraints = true
        button.addTarget(LoginView(), action: #selector(navigationToLogin), for: .touchUpInside)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackground()
        setupImageFirst()
        setupTitleLabel()
        setupSubtitleLabel()
        setupTextLabel()
        setupPartButton()
        setupClientButton()

    }
    
    @objc func navigationToLogin(){
        let login = CadView()
       
        
        let navigation = UINavigationController(rootViewController: login)
        navigation.modalPresentationStyle = .fullScreen
        navigation.pushViewController(LoginView(), animated: false )
        navigation.navigationBar.tintColor = UIColor(named: "Pink")
      //  navigation.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "chevron.left"), style: .plain, target: self, action: #selector(dismissSelf))
        present(navigation, animated: false)
    }


    
        @objc func dismissSelf(){
            dismiss(animated: true, completion: nil)
        }
    
    @objc func navigationMenu(){
        let tabBar = TabBarController()
        let navigation = UINavigationController(rootViewController: tabBar)
        navigation.modalPresentationStyle = .fullScreen
        present(navigation, animated: true)
    }
    
    private func setupBackground(){
        view.addSubview(background)
        background.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    private func setupImageFirst(){
        background.addSubview(imageFirst)
        imageFirst.snp.makeConstraints { make in
            make.top.equalTo(0)
            make.leading.equalToSuperview().offset(0)
            make.trailing.equalToSuperview().offset(0)
        }
    }
    
    private func setupTitleLabel(){
        background.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(344)
            make.leading.equalTo(24)
        }
    }
    
    private func setupSubtitleLabel(){
        background.addSubview(subtitleLabel)
        subtitleLabel.snp.makeConstraints { make in
            make.top.equalTo(380)
            make.leading.equalTo(24)
        }
    }
    
    private func setupTextLabel(){
        background.addSubview(textLabel)
        textLabel.snp.makeConstraints { make in
            make.top.equalTo(423)
            make.leading.equalTo(24)
            make.trailing.equalTo(-24)
        }
    }
    
    private func setupPartButton(){
        background.addSubview(partButton)
        partButton.snp.makeConstraints { make in
            make.bottom.equalTo(-80)
            make.leading.equalTo(24)
            make.trailing.equalTo(-24)
            make.width.equalTo(327)
            make.height.equalTo(64)
        }
    }
    
    
    private func setupClientButton(){
        background.addSubview(clientButton)
        clientButton.snp.makeConstraints { make in
            make.bottom.equalTo(-16)
            make.leading.equalTo(24)
            make.trailing.equalTo(-24)
            make.width.equalTo(327)
            make.height.equalTo(48)
        }
    }
    
    
    
    
}
