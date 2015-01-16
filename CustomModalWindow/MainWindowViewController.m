//
//  MainWindowViewController.m
//  CustomModalWindow
//
//  Created by Nick Kuh on 16/01/2015.
//  Copyright (c) 2015 Mumbo Apps Ltd. All rights reserved.
//

#import "MainWindowViewController.h"
#import "CustomModalWindowController.h"

@interface MainWindowViewController ()

@property (strong) CustomModalWindowController *myCustomModalWindowController;

@end

@implementation MainWindowViewController


- (IBAction)didTapOpenButton:(id)sender {
    self.myCustomModalWindowController = [[CustomModalWindowController alloc] initWithWindowNibName:@"CustomModalWindowController"];
    

    [self.window beginSheet:self.myCustomModalWindowController.window  completionHandler:^(NSModalResponse returnCode) {
        NSLog(@"Sheet closed");
        
        switch (returnCode) {
            case NSModalResponseOK:
                NSLog(@"Done button tapped in Custom Sheet");
                break;
            case NSModalResponseCancel:
                NSLog(@"Cancel button tapped in Custom Sheet");
                break;
                
            default:
                break;
        }
        
        self.myCustomModalWindowController = nil;
    }];

    
}

@end
