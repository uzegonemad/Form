import UIKit
import Form.FORMDefaultStyle
import NSJSONSerialization_ANDYJSONFile

@UIApplicationMain
class AppController: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        if let JSON = JSONSerialization.jsonObject(withContentsOfFile: "forms.json") as? [String: AnyObject] {
            let initialValues = [
                "address": "Burger Park 667",
                "end_date": "2017-10-31 23:00:00 +00:00",
                "first_name": "Ola",
                "last_name": "Nordman",
                "start_date": "2014-10-31 23:00:00 +00:00",
            ]
            let sampleController = RootController(JSON: JSON, initialValues: initialValues as [String: AnyObject])
            let rootViewController = UINavigationController(rootViewController: sampleController)

            rootViewController.view.tintColor = UIColor(hex: "5182AF")
            rootViewController.isNavigationBarHidden = true

            FORMDefaultStyle.apply()

            self.window = UIWindow(frame: UIScreen.main.bounds)
            self.window?.rootViewController = rootViewController
            self.window?.makeKeyAndVisible()
        }

        return true
    }
}
