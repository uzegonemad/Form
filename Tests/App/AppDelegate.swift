import UIKit
import JSON

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        FORMDefaultStyle.applyStyle()

        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)

        let (json: AnyObject?, error) = JSON.from("forms.json")
        self.window?.rootViewController = SampleController(JSON: json!, andInitialValues: nil, disabled: false)
        self.window!.makeKeyAndVisible()
        return true
    }
}

