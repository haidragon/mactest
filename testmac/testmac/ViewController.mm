//
//  ViewController.m
//  testmac
//
//  Created by haidragon on 2019/1/26.
//  Copyright © 2019 haidragon. All rights reserved.
//

#import "ViewController.h"
#include<iostream>
using namespace std;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}
- (IBAction)Push_B1:(id)sender {
//    NSAlert *alert = [NSAlert new];
//    [alert addButtonWithTitle:@"确定"];
//    [alert addButtonWithTitle:@"取消"];
//    [alert setMessageText:@"确定删除输入文本?"];
//    [alert setInformativeText:@"如果确定删除，删除的文本不能再找回!"];
//    [alert setAlertStyle:NSAlertStyleCritical];// 风格
//    [alert beginSheetModalForWindow:[self.view window] completionHandler:^(NSModalResponse returnCode) {
//        if(returnCode == NSAlertFirstButtonReturn){
//            NSLog(@"确定");
//        }else if(returnCode == NSAlertSecondButtonReturn){
//            NSLog(@"删除");
//            printf("删除成功！！\n");
//        }
//        
//    }];
   
  
    [self.window makeKeyAndOrderFront:self];
    self.window.windowController=self.MyWindowController;
   
  
}
- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}
-(NSWindow*) window{
    if(!_window){
        NSRect frame=CGRectMake(0,0, 200, 200);
        NSUInteger style=NSTitledWindowMask|NSClosableWindowMask|NSMiniaturizableWindowMask|NSResizableWindowMask;
        _window=[[NSWindow  alloc] initWithContentRect:frame styleMask:style backing:NSBackingStoreBuffered defer:YES];
        _window.title=@"new create window";
        [_window center];
    }
    NSLog(@"NSWindow");
    return _window;
}
-(NSWindowController *)MyWindowController{
    if(!_MyWindowController){
         _MyWindowController=[[NSWindowController alloc] init];
         _window.windowController=self.MyWindowController;
         _MyWindowController.window=_window;
    }
     NSLog(@"NSWindowController");
    return _MyWindowController;
}

@end
