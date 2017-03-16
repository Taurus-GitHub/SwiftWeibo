//
//  RootTool.swift
//  SwiftWeibo
//
//  Created by ZhangJun on 2017/3/16.
//  Copyright © 2017年 Taurus. All rights reserved.
//

import UIKit

class RootTool: NSObject {

    func chooseRootViewController(window : UIWindow) {
        
        let currentVersion = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as? String ?? ""
        
        let lastVersion = UserDefaults.standard.object(forKey: "version") as? String ?? ""
        
        if currentVersion == lastVersion {
            
        } else {
            let vc = NewFeatureViewController()
            window.rootViewController = vc;
            UserDefaults.standard.set(currentVersion, forKey: "version")
        }
    }
}
