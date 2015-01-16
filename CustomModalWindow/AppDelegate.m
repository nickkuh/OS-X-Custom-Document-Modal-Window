//
//  AppDelegate.m
//  CustomModalWindow
//
//  Created by Nick Kuh on 16/01/2015.
//  Copyright (c) 2015 Mumbo Apps Ltd. All rights reserved.
//

#import "AppDelegate.h"
#import "MainWindowViewController.h"

@interface AppDelegate ()

//@property (weak) IBOutlet NSWindow *window;

@property (strong) MainWindowViewController *myWindowController;

@end

@implementation AppDelegate


// -------------------------------------------------------------------------------
//	applicationDidFinishLaunching:notification
// -------------------------------------------------------------------------------
- (void)applicationDidFinishLaunching:(NSNotification*)notification
{
    self.myWindowController = [[MainWindowViewController alloc] initWithWindowNibName:@"MainWindowViewController"];
    [self.myWindowController showWindow:self];

}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}



@end
