//
//  SPTabBarController.swift
//  SampleProject
//
//  Created by LiuYanghui on 2016/11/14.
//  Copyright © 2016年 LiuYanghui. All rights reserved.
//

import UIKit

class SPTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // 添加所有子控制器
        addChildViewControllers()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - private method
    
    /// 添加所有子控制器
    private func addChildViewControllers() {
        setChildrenController(title: "One", image: UIImage(), selectedImage: UIImage(), storyboard: UIStoryboard(name: "MyTabItemOne", bundle: nil))
        
        setChildrenController(title: "Two", image: UIImage(), selectedImage: UIImage(), storyboard: UIStoryboard(name: "MyTabItemTwo", bundle: nil))
        
    }
    
    /// 添加一个子控制器
    private func setChildrenController(title:String, image:UIImage,selectedImage:UIImage, storyboard:UIStoryboard) {
        let controller = storyboard.instantiateInitialViewController()!
        controller.tabBarItem.title = title
        controller.tabBarItem.image = image
        controller.tabBarItem.selectedImage = selectedImage
        addChildViewController(controller)
    }
}
