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
        viewController.tabBarItem = UITabBarItem(title: "11111111", image: nil, selectedImage: nil)
        navigationController.navigationBar.topItem?.titleView?.tintColor = .clear
        
        // 1 variant
        navigationController.navigationBar.scrollEdgeAppearance = UINavigationBarAppearance()
        navigationController.navigationBar.scrollEdgeAppearance?.backgroundColor = .white
        //navigationController.navigationBar.scrollEdgeAppearance?.shadowColor = .clear
        navigationController.navigationBar.compactAppearance = UINavigationBarAppearance()
        navigationController.navigationBar.compactAppearance?.backgroundColor = .white
        //navigationController.navigationBar.compactAppearance?.shadowColor = .clear
        navigationController.navigationBar.standardAppearance = UINavigationBarAppearance()
        navigationController.navigationBar.standardAppearance.backgroundColor = .white
        //navigationController.navigationBar.standardAppearance.shadowColor = .clear
        
       // navigationController.navigationBar.isTranslucent = true
        //navigationController.navigationBar.scrollEdgeAppearance?.isTranslucent = true
        
        
//        // 2 variant
//        let navBarAppearance = UINavigationBarAppearance()
//        navBarAppearance.backgroundColor = .white
//        navigationController.navigationBar.scrollEdgeAppearance = navBarAppearance
//        navigationController.navigationBar.compactAppearance = navBarAppearance
//        navigationController.navigationBar.standardAppearance = navBarAppearance
        
        return navigationController
    }
}
