import UIKit

class ViewController: UIViewController {
    var rectView: UIView! = UIView()
    var label: UILabel! = UILabel()
    var button: UIButton! = UIButton()
        
        
    func contraintView() {
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            view.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            view.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
        ])
        view.backgroundColor = .systemRed
    }
    
    func constraintRectView() {
        rectView.frame = .zero
        rectView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(rectView)
        NSLayoutConstraint.activate([
            rectView.widthAnchor.constraint(equalToConstant: 280),
            rectView.heightAnchor.constraint(equalToConstant: 300),
            rectView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            rectView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
        rectView.backgroundColor = .white
        rectView.layer.cornerRadius = 10
    }
    
    func constraintLabel() {
        label.frame = .zero
        rectView.addSubview(label)
        label.text = "Welcome to Swift"
        label.textAlignment = NSTextAlignment.center
        label.backgroundColor = UIColor.black
        label.textColor = UIColor.white
        label.layer.cornerRadius = 10
        label.layer.masksToBounds = true
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: rectView.centerYAnchor),
            label.centerXAnchor.constraint(equalTo: rectView.centerXAnchor),
            label.leadingAnchor.constraint(equalTo: rectView.readableContentGuide.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: rectView.readableContentGuide.trailingAnchor),
            label.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func constraintButton() {
        button.frame = .zero
        button.translatesAutoresizingMaskIntoConstraints = false
        rectView.addSubview(button)
        NSLayoutConstraint.activate([
            button.bottomAnchor.constraint(equalTo: rectView.bottomAnchor,constant: -40),
            button.centerXAnchor.constraint(equalTo: rectView.centerXAnchor),
            button.leadingAnchor.constraint(equalTo: rectView.readableContentGuide.leadingAnchor),
            button.trailingAnchor.constraint(equalTo: rectView.readableContentGuide.trailingAnchor),
            button.heightAnchor.constraint(equalToConstant: 40)
        ])
        button.backgroundColor = UIColor.purple
        button.setTitle("Click me", for: UIControl.State.normal)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(OnClick), for: UIControl.Event.touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
    }
    
        override func loadView() {
            super.loadView()
            contraintView()
            constraintRectView()
            constraintLabel()
            constraintButton()
        }
        
    @objc func OnClick() {
        let name = "Rohit Goel"
        self.label.text  = "Hello \(name)"
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
