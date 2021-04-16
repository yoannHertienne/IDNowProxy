import Foundation
import UIKit
import IDNowSDKCore

@objc(SwiftFrameworkProxy)
public class SwiftFrameworkProxy : NSObject {

    @objc
    public func start(token: String, language: String, uiview: UIViewController) -> String {
        IDNowSDK.shared.start(token: token, preferredLanguage: language, fromViewController: uiview, listener:{ (result: IDNowSDK.IdentResult, message: String) in
                   if result == IDNowSDK.IdentResult.ERROR {
                    NSLog(message)
                   } else if result == IDNowSDK.IdentResult.FINISHED {
                    NSLog(message)
                   }
               })
        return "identification launched"
    }
}
