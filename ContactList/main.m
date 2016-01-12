//
//  main.m
//  ContactList
//
//  Created by Graeme Harrison on 2016-01-12.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
//    }
//    return 0;
//}

int main() {
    
    NSLog(@"What would you like do next? new - Create a new contact list - List all contacts quit - Exit Application > _");
    
    InputCollector *collector = [[InputCollector alloc] init];
    
    char inputChars[255];
    scanf("%s", inputChars);
    NSString *inputString = [[NSString stringWithUTF8String:inputChars] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    NSString *mainMenu = [collector inputForPrompt: inputString];
    
    NSLog(@"%@", mainMenu);
    
    if ([inputString isEqualToString:@"quit"]) {
        return <#expression#>
    }
    
    return  0;
}