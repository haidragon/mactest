//
//  MainWindowController.h
//  WindowSkip
//
//  Created by 张鹏伟 on 16/3/7.
//  Copyright © 2016年 108. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MainWindowController : NSWindowController
@property (strong) IBOutlet NSView *bgView;
- (IBAction)showNewsWindow:(id)sender;

@end
