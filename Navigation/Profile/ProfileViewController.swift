
import UIKit


class ProfileViewController: UIViewController {
    let post: Post = Post(title: "Profile")
    private let headerView = ProfileHeaderView()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = post.title
        self.view.backgroundColor = .lightGray
        view.addSubview(headerView)
        setupBottomButton()
        }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        headerView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        

    }
    private func newSubview() {
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        headerView.heightAnchor.constraint(equalToConstant: 220).isActive = true
    }
    
    private func setupBottomButton() {

        let bottomButton = UIButton(type: .system)
        view.addSubview(bottomButton)
        
        bottomButton.backgroundColor = .darkGray
        bottomButton.setTitleColor(.white, for: .normal)
        bottomButton.setTitle("My Posts", for: .normal)

        bottomButton.translatesAutoresizingMaskIntoConstraints = false
        bottomButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        bottomButton.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        bottomButton.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true

    }
}
