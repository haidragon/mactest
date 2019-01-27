//
//  NewsWindowController.m
//  WindowSkip
//
//  Created by 张鹏伟 on 16/3/7.
//  Copyright © 2016年 108. All rights reserved.
//

#import "NewsWindowController.h"
#import "AppDelegate.h"

@interface NewsWindowController ()

@end

@implementation NewsWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    _bgView.wantsLayer = YES;
    _bgView.layer.backgroundColor = CGColorCreateGenericRGB(0.0f, 0.0f, 0.86f, 1.0f);
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (IBAction)Back:(id)sender {
    AppDelegate * appDelegate=(AppDelegate*)[[NSApplication sharedApplication]delegate];
    [self.window close];
    //    [appDelegate.mainWindow.window center];
    [[appDelegate.mainWindow window] makeKeyAndOrderFront:nil];
}
@end
