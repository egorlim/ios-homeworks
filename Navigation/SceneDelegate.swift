import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = createTabBarController()
        window?.makeKeyAndVisible()
    }

    func createTabBarController() -> UITabBarController {
        let tabBarController = UITabBarController()

        let feedNavigationController = UINavigationController(rootViewController: FeedViewController())
        feedNavigationController.tabBarItem = UITabBarItem(title: "Feed", image: UIImage(systemName: "house"), tag: 0)

        let profileNavigationController = UINavigationController(rootViewController: ProfileViewController())
        profileNavigationController.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.circle"), tag: 1)

        tabBarController.viewControllers = [feedNavigationController, profileNavigationController]

        return tabBarController
    }
}
