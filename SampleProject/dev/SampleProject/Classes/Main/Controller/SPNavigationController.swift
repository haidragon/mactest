//
//  SPNavigationController.swift
//  SampleProject
//
//  Created by LiuYanghui on 2016/11/14.
//  Copyright © 2016年 LiuYanghui. All rights reserved.
//

import UIKit

class SPNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.interactivePopGestureRecognizer?.delegate = nil
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if viewControllers.count > 0 {
            //隐藏tabbar
            viewController.hidesBottomBarWhenPushed = true
            
            viewController.navigationItem.leftBarButtonItem = setBackBarButtonItem()
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    func back(){
        self.popViewController(animated: true)
    }
    
    // MARK: - Private method
    private func setBackBarButtonItem() -> UIBarButtonItem{
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "navigationButtonReturn"), for: .normal)
        button.setImage(UIImage(named: "navigationButtonReturnClick"), for: .highlighted)
        button.setTitle("返回", for: .normal)
        button.setTitleColor(UIColor(red: 81/255, green: 81/255, blue: 81/255, alpha: 1), for: .normal)
        button.addTarget(self, action: #selector(SPNavigationController.back), for: .touchUpInside)
        button.frame.size = CGSize(width: 100, height: 30)
        // button 里的内容左对齐
        button.contentHorizontalAlignment = .left
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: -10, bottom: 0, right: 0)
        
        return UIBarButtonItem(customView: button)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
