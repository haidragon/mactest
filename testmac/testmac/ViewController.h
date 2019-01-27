//
//  ViewController.h
//  testmac
//
//  Created by haidragon on 2019/1/26.
//  Copyright © 2019 haidragon. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (weak) IBOutlet NSButton *Push_Button1;
@property (strong,nonatomic)  NSWindowController *MyWindowController;
@property (strong,nonatomic)  NSWindow* window;
@end

