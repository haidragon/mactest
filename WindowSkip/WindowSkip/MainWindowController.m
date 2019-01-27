//
//  MainWindowController.m
//  WindowSkip
//
//  Created by 张鹏伟 on 16/3/7.
//  Copyright © 2016年 108. All rights reserved.
//

#import "MainWindowController.h"
#import "NewsWindowController.h"

@interface MainWindowController ()

@property (strong) NewsWindowController *newsWindow;

@end

@implementation MainWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    _bgView.wantsLayer = YES;
    _bgView.layer.backgroundColor = CGColorCreateGenericRGB(0.12f, 0.44f, 0.86f, 1.0f);
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (void)showNewsWindow{
    _newsWindow = [[NewsWindowController alloc] initWithWindowNibName:@"NewsWindowController"];
    //显示需要跳转的窗口
    [_newsWindow.window orderFront:nil];
    
    //关闭当前窗口
    [self.window orderOut:nil];
}

- (IBAction)showNewsWindow:(id)sender {
    [self showNewsWindow];
}

@end
