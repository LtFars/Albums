import UIKit

final class MainTabBarController: UITabBarController {
    
    static func createTabBarController() -> UITabBarController {
        let tabBarController = UITabBarController()
        
        tabBarController.setViewControllers(
            [
                createChildViewController()
            ], animated: true)
        
        return tabBarController
    }
    
    private static func createChildViewController() -> UIViewController {
        
        let viewController = MainViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        viewController.tabBarItem = UITabBarItem(title: "", image: nil, selectedImage: nil)
        
        return navigationController
    }
}
