//
//  InputCollector.m
//  ContactList
//
//  Created by Graeme Harrison on 2016-01-12.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString {
    
    NSLog(@"%@", promptString);
    char inputChars[255];
    scanf("%s", inputChars);
    NSString *inputString = [[NSString stringWithUTF8String:inputChars] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    if ([inputString isEqualToString:@"quit"]) {
        exit(0);
    } else if ([inputString isEqualToString:@"new"]) {
        NSLog(@"Enter a full name and email");
    }
    
    return inputString;
}

@end
