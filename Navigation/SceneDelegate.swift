import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

        func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
            
            guard let scene = (scene as? UIWindowScene) else { return }
            
            window = UIWindow(windowScene: scene)
            window? .makeKeyAndVisible()
            let tabBarController = UITabBarController()
            
            let feedVC = FeedViewController()
            let feed = UINavigationController(rootViewController: feedVC)
            //feed.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
            let item1 = UITabBarItem(title: "Feed", image: UIImage(systemName: "paperplane.circle"), tag: 0)

            feed.tabBarItem = item1
            
            let profileVC = ProfileViewController()
            //profileVC.tabBarItem = UITabBarItem (tabBarSystemItem: .favorites, tag: 1)
            
            let item2 = UITabBarItem(title: "Profile", image:  UIImage(systemName: "person.crop.circle"), tag: 1)
            
            profileVC.tabBarItem = item2
            let profile = UINavigationController(rootViewController: profileVC)
            
            let postVC = PostViewController()
            //let post = UINavigationController(rootViewController: postVC)
            
            tabBarController.viewControllers = [feed, profile]
            window?.rootViewController = tabBarController
            

          
            
    }
    
    
    
    func sceneDidDisconnect(_ scene: UIScene) {
        
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        
    }

    func sceneWillResignActive(_ scene: UIScene) {
        
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        
    }


}
