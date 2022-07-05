import UIKit
import SnapKit



class AccountView: UITabBarController {
    lazy var background: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.backgroundColor = .white
        return view
    }()
    
    lazy var titleView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.init(named: "Grey")
        view.layer.cornerRadius = 20.0
        return view
    }()
    
    lazy var titleLabel: UILabel = {
        let title = UILabel()
        title.font = UIFont(name: "AvenirLTStd-Black", size: 14)
        title.textColor =  UIColor.init(named: "Pink")
        title.lineBreakMode = .byWordWrapping
        title.text = "Breiv Industries LTDA"
        return title
    }()
    
    lazy var coraLabel: UILabel = {
        let title = UILabel()
        title.font = UIFont(name: "AvenirLTStd-Roman", size: 14)
        title.textColor =  UIColor.init(named: "Dark")
        title.lineBreakMode = .byWordWrapping
        title.text = "Cora SDC - 403"
        return title
    }()
    
    private func setupcoraLabel(){
        background.addSubview(coraLabel)
        coraLabel.snp.makeConstraints { make in
            make.top.equalTo(88)
            make.leading.equalTo(24)
        }
    }
    
    
    lazy var agLabel: UILabel = {
        let title = UILabel()
        title.font = UIFont(name: "AvenirLTStd-Roman", size: 14)
        title.textColor =  UIColor.init(named: "Dark")
        title.lineBreakMode = .byWordWrapping
        title.text = "Ag 001 - c/c 4128344-6"
        return title
    }()
    
    private func setupagLabel(){
        background.addSubview(agLabel)
        agLabel.snp.makeConstraints { make in
            make.top.equalTo(108)
            make.leading.equalTo(24)
        }
    }
    
    lazy var cnpjLabel: UILabel = {
        let title = UILabel()
        title.font = UIFont(name: "AvenirLTStd-Roman", size: 14)
        title.textColor =  UIColor.init(named: "Dark")
        title.lineBreakMode = .byWordWrapping
        title.text = "CNPJ 324.323.655/0001-72"
        return title
    }()
    
    private func setupcnpjLabel(){
        background.addSubview(cnpjLabel)
        cnpjLabel.snp.makeConstraints { make in
            make.top.equalTo(128)
            make.leading.equalTo(24)
        }
    }
    
    lazy var greyView: UIScrollView = {
        let view = UIScrollView()
        view.backgroundColor = UIColor.init(named: "Grey")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var copyButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage.init(named: "copy"), for: .normal)
        button.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.right
        button.layer.masksToBounds =  true
        button.translatesAutoresizingMaskIntoConstraints = true
        button.addTarget(self, action: #selector(didCopy), for: .touchUpInside)
        return button
    }()
    
    @objc func didCopy(){
        UIPasteboard.general.string = "Cora SDC - 403 \n Ag 001 - c/c 4128344-6 \n CNPJ 324.323.655/0001-72"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackground()
        setupTitleView()
        setupTitleLabel()
        setupGreyView()
        setupCopyButton()
        
        setupPersonadateButton()
        setupBusinessdateButton()
        setupProfileButton()
        setupContactButton()
        setupSettingsButton()
        setupHelpButton()
        setupIndicatesButton()
        setupExitpButton()
        
        setupcoraLabel()
        setupagLabel()
        setupcnpjLabel()
    }
    
    var personadateButton: UIButton = {
        let personadateButton = ButtonView()
        personadateButton.configure(with: ButtonModel(textButton: "Dados pessoais", imageButton: UIImage(named: "Person"), secundyImageButton: UIImage(named: "white")))
        return personadateButton
    }()
    
    private func setupPersonadateButton(){
        greyView.addSubview(personadateButton)
        personadateButton.snp.makeConstraints { make in
            make.top.equalTo(12)
            make.leading.equalTo(5)
            make.height.equalTo(56)
            make.width.equalTo(343)
        }
    }
    
    
    var businessdateButton: UIButton = {
        let businessdateButton = ButtonView()
        businessdateButton.configure(with: ButtonModel(textButton: "Dados da empresa", imageButton: UIImage(named: "Briefcase"), secundyImageButton: UIImage(named: "white")))
        return businessdateButton
    }()
    
    
    private func setupBusinessdateButton(){
        greyView.addSubview(businessdateButton)
        businessdateButton.snp.makeConstraints { make in
            make.top.equalTo(76)
            make.leading.equalTo(5)
            make.height.equalTo(56)
            make.width.equalTo(343)
        }
    }
    
    var profileButton: UIButton = {
        let profileButton = ButtonView(frame: CGRect(x: 5, y: 312, width: 343, height: 56))
        profileButton.configure(with: ButtonModel(textButton: "Perfis de acesso", imageButton: UIImage(named: "People-Users"), secundyImageButton: UIImage(named: "white")))
        return profileButton
    }()
    
    
    private func setupProfileButton(){
        greyView.addSubview(profileButton)
        profileButton.snp.makeConstraints { make in
            make.top.equalTo(140)
            make.leading.equalTo(5)
            make.height.equalTo(56)
            make.width.equalTo(343)
        }
    }
    
    var contactButton: UIButton = {
        let contactButton = ButtonView(frame: CGRect(x: 5, y: 376, width: 343, height: 56))
        contactButton.configure(with: ButtonModel(textButton: "Meus contatos", imageButton: UIImage(named: "Contacts"), secundyImageButton: UIImage(named: "white")))
        return contactButton
    }()
    
    private func setupContactButton(){
        greyView.addSubview(contactButton)
        contactButton.snp.makeConstraints { make in
            make.top.equalTo(204)
            make.leading.equalTo(5)
            make.height.equalTo(56)
            make.width.equalTo(343)
        }
    }
    
    var settingsButton: UIButton = {
        let settingsButton = ButtonView(frame: CGRect(x: 5, y: 440, width: 343, height: 56))
        settingsButton.configure(with: ButtonModel(textButton: "Dados pessoais", imageButton: UIImage(named: "Settings"), secundyImageButton: UIImage(named: "white")))
        return settingsButton
    }()
    
    private func setupSettingsButton(){
        greyView.addSubview(settingsButton)
        settingsButton.snp.makeConstraints { make in
            make.top.equalTo(268)
            make.leading.equalTo(5)
            make.height.equalTo(56)
            make.width.equalTo(343)
        }
    }
    
    var helpButton: UIButton = {
        let helpButton = ButtonView(frame: CGRect(x: 5, y: 504, width: 343, height: 56))
        helpButton.configure(with: ButtonModel(textButton: "Ajuda", imageButton: UIImage(named: "ic_support"), secundyImageButton: UIImage(named: "white")))
        return helpButton
    }()
    
    private func setupHelpButton(){
        greyView.addSubview(helpButton)
        helpButton.snp.makeConstraints { make in
            make.top.equalTo(332)
            make.leading.equalTo(5)
            make.height.equalTo(56)
            make.width.equalTo(343)
        }
    }
    
    var indicatesButton: UIButton = {
        let indicatesButton = ButtonView(frame: CGRect(x: 5, y: 568, width: 343, height: 56))
        indicatesButton.configure(with: ButtonModel(textButton: "Indice a Cora", imageButton: UIImage(named: "ic_user-profile-invite"), secundyImageButton: UIImage(named: "Chevron-down")))
        return indicatesButton
    }()
    
    private func setupIndicatesButton(){
        greyView.addSubview(indicatesButton)
        indicatesButton.snp.makeConstraints { make in
            make.top.equalTo(396)
            make.leading.equalTo(5)
            make.height.equalTo(56)
            make.width.equalTo(343)
        }
    }
    
    var exitpButton: UIButton = {
        let exitButton = ButtonView(frame: CGRect(x: 5, y: 648, width: 343, height: 56))
        exitButton.configure(with: ButtonModel(textButton: "Sair", imageButton: UIImage(named: "Sign-out-off"), secundyImageButton: UIImage(named: "white")))
        return exitButton
    }()
    
    private func setupExitpButton(){
        greyView.addSubview(exitpButton)
        exitpButton.snp.makeConstraints { make in
            make.top.equalTo(476)
            make.leading.equalTo(5)
            make.height.equalTo(56)
            make.width.equalTo(343)
        }
    }
    
    private func setupBackground(){
        view.addSubview(background)
        background.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    private func setupGreyView(){
        background.addSubview(greyView)
        greyView.snp.makeConstraints { make in
           // make.edges.equalToSuperview()
            make.top.equalTo(172)
            make.bottom.equalTo(-1)
            make.trailing.equalTo(0)
            make.leading.equalTo(0)
        }
    }
    
    private func setupTitleView(){
        background.addSubview(titleView)
        titleView.snp.makeConstraints { make in
            make.top.equalTo(40)
            make.height.equalTo(32)
            make.width.equalTo(327)
            make.trailing.equalTo(-25)
            make.leading.equalTo(23)
        }
    }
    
    private func setupTitleLabel(){
        titleView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    
    private func setupCopyButton(){
        background.addSubview(copyButton)
        copyButton.snp.makeConstraints { make in
            make.top.equalTo(106)
            make.height.equalTo(24)
            make.width.equalTo(24)
            make.trailing.equalTo(-24)
        }
    }
    
}
