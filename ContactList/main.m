//
//  main.m
//  ContactList
//
//  Created by Graeme Harrison on 2016-01-12.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
//    }
//    return 0;
//}

int main() {
    
    InputCollector *collector = [[InputCollector alloc] init];
    
    NSString *promptMenu = [collector inputForPrompt: @"What would you like do next?\n new - Create a new contact\n list - List all contacts\n quit - Exit Application > _"];
    NSLog(@"%@", promptMenu);
    
    return  0;
}