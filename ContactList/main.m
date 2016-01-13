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
#import "ContactList.h"

int main() {
    
    InputCollector *collector = [[InputCollector alloc] init];
    
    ContactList *contactList = [[ContactList alloc] init];
    
    while (YES) {
        NSString *promptResult = [collector inputForPrompt:@"What would you like do next?\n new - Create a new contact\n list - List all contacts\n show - Show a contact from id number\n find - Search for a contact\n quit - Exit Application"];
        
        if ([promptResult isEqualToString:@"quit"]) {
            return 0;
        
        } else if ([promptResult isEqualToString:@"new"]) {
            Contact *contact = [[Contact alloc] init];
            NSString *name = [collector inputForPrompt:@"Enter your full name"];
            contact.name = name;
            NSString *email = [collector inputForPrompt:@"Enter your email"];
            contact.email = email;
            [contactList addContact:contact];
        
        } else if ([promptResult isEqualToString:@"list"]) {
            [contactList printContacts];
        
        } else if ([promptResult isEqualToString:@"show"]) {
            NSString *inputID = [collector inputForPrompt:@"Enter contact id"];
            
            if ([inputID rangeOfCharacterFromSet:[NSCharacterSet characterSetWithCharactersInString:@"0123456789"]].location != NSNotFound) {
                int inputInt = [inputID intValue];
                [contactList showContact:inputInt];
        }
        } else if ([promptResult isEqualToString:@"find"]) {
            NSString *inputSearch = [collector inputForPrompt:@"Enter contact name or email"];
            
                [contactList showSearch:inputSearch];
        }
    }
    return 0;
}
