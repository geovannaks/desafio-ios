
import UIKit
import SnapKit

class LoginView: UIViewController {
    
    lazy var background: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.backgroundColor = .white
        return view
    }()
    
    lazy var titleLabel: UILabel = {
        let title = UILabel()
        title.font = UIFont(name: "AvenirLTStd-Black", size: 21)
        title.textColor = .black
        title.text = "Digite sua senha de acesso"
        return title
    }()
    
    lazy var borderTitle: UIView = {
        let border = UIView()
        border.backgroundColor = .white
        border.layer.borderColor = UIColor.black.cgColor
        border.layer.borderWidth = 1
        border.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        border.layer.shadowOpacity = 1
        border.layer.shadowRadius = 4
        border.layer.shadowOffset = CGSize(width: 0, height: 4)
        
        return border
    }()
    
    lazy var textField: UITextField = {
        let password = UITextField()
        password.font = UIFont.systemFont(ofSize: 22)
        password.autocorrectionType = UITextAutocorrectionType.no
        password.isSecureTextEntry = true
        password.becomeFirstResponder()
        password.placeholder = "|"
        return password
        
    }()
    
    
    lazy var nextButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(.white, for: .normal)
        button.setTitle("    Próximo", for: .normal)
        button.setImage(UIImage.init(named: "arrow white"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: 211, bottom: 0, right: 0)
        button.semanticContentAttribute = UIApplication.shared
            .userInterfaceLayoutDirection == .rightToLeft ? .forceLeftToRight : .forceRightToLeft
        button.layer.cornerRadius = 12
        button.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        button.titleLabel?.font = .systemFont(ofSize: 14, weight: .regular)
        button.backgroundColor = UIColor(named: "Dark grey")
        button.layer.masksToBounds =  true
        button.translatesAutoresizingMaskIntoConstraints = true
        return button
    }()
    
   
    
    
    lazy var iconView: UIView = {
        let rightView = UIView(frame: CGRect(x: 0, y: 0, width: 25, height: 19.67))
        return rightView
    }()
    
    lazy var iconTextField: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "password")
        image.clipsToBounds = true
        return image
    }()
    
    
    lazy var forgotPassword: UILabel = {
        let title = UILabel()
        title.font = UIFont(name: "AvenirLTStd-Roman", size: 14)
        title.textColor = UIColor(named: "Pink")
        title.text = "Esqueci minha senha"
        return title
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       setupBackground()
        setupTextField()
        setupForgotPassword()
        setupBorderTitle()
        setupTitleLabel()
        setupIconView()
        setupIconTextField()
        setupNextButton()
        
        navigationController?.navigationItem.backButtonTitle = ""
        title = "Login Core"
    }
    
    
    @objc func dismissSelf(){
        dismiss(animated: true, completion: nil)
    }
    
    
    private func setupBackground(){
        view.addSubview(background)
        background.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    
    private func setupBorderTitle(){
        background.addSubview(borderTitle)
        borderTitle.snp.makeConstraints { make in
            make.top.equalTo(80)
            make.leading.equalTo(24)
            make.trailing.equalTo(-24)
            make.width.equalTo(327)
            make.height.equalTo(32)
        }
    }
    
    private func setupTitleLabel(){
        borderTitle.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(6)
        }
    }
    
    private func setupTextField(){
        background.addSubview(textField)
        textField.snp.makeConstraints { make in
            make.top.equalTo(144)
            make.leading.equalTo(24)
            make.trailing.equalTo(-24)
        }
    }
    
    private func setupIconView(){
        background.addSubview(iconView)
        iconView.snp.makeConstraints { make in
            make.top.equalTo(144)
            make.trailing.equalTo(-27.5)
        }
    }
    
    private func setupIconTextField(){
        iconView.addSubview(iconTextField)
        iconTextField.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    private func setupForgotPassword(){
        background.addSubview(forgotPassword)
        forgotPassword.snp.makeConstraints { make in
            make.top.equalTo(244)
            make.leading.equalTo(24)
            make.trailing.equalTo(-24)
        }
    }
    
    private func setupNextButton(){
        background.addSubview(nextButton)
        nextButton.snp.makeConstraints { make in
            make.height.equalTo(48)
            make.width.equalTo(327)
            make.top.equalTo(387)
            make.trailing.equalTo(-27)
            make.leading.equalTo(21)
        }
    }
    
   
}
