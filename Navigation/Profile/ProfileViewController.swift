
import UIKit

class ProfileViewController: UIViewController {
    let post: Post = Post(title: "Profile")
    private let headerView = ProfileHeaderView()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = post.title
        self.view.backgroundColor = .lightGray
        view.addSubview(headerView)
            }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        headerView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        

    }
    

}
