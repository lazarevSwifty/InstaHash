import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        

        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.windowScene = windowScene
        let mainView = ModelBuilder.createMainModule()
        let navController = UINavigationController(rootViewController: mainView)
        let tabBarController = UITabBarController()
        let settingsView = ModelBuilder.createSettingsModule()
        tabBarController.viewControllers = [navController, settingsView]
        
        let item1 = UITabBarItem(title: "Посты", image: UIImage(named: "tableView.png"), tag: 0)
        let item2 = UITabBarItem(title: "Настройки", image: UIImage(named: "setting.png"), tag: 1)
        navController.tabBarItem = item1
        settingsView.tabBarItem = item2
        self.window?.rootViewController = tabBarController
        self.window?.makeKeyAndVisible()
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

