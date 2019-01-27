//
//  AppDelegate.m
//  WindowSkip
//
//  Created by 张鹏伟 on 16/3/7.
//  Copyright © 2016年 108. All rights reserved.
//

#import "AppDelegate.h"
#import "MainWindowController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    _mainWindow = [[MainWindowController alloc] initWithWindowNibName:@"MainWindowController"];
    
    //让显示的位置居于屏幕的中心
    [[_mainWindow window] center];
    //前置显示窗口
    [_mainWindow.window orderFront:nil];

    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
