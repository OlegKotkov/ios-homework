

import UIKit

class FeedViewController: UIViewController {
    let button = UIButton()
    let post: Post = Post(title: "Новости")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemTeal
        
        button.backgroundColor = .white
        button.setTitle("Main News", for: .normal)
        button.setTitleColor(.blue, for: .normal)

        button.frame = CGRect (x: 40, y: 200, width: 200, height: 44)
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        view.addSubview(button)
    }
    @objc func tap(){
        let postVC = PostViewController()
        postVC.text = "Новости"
        postVC.post = post
        navigationController?.pushViewController(postVC, animated: true)
        postVC.modalPresentationStyle = .fullScreen
        postVC.modalTransitionStyle = .flipHorizontal
        //self.present(postVC ,animated: true, completion: nil)
    }
    
}


