//
//  ContactList.m
//  ContactList
//
//  Created by Graeme Harrison on 2016-01-12.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactsArray = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact {
    [self.contactsArray addObject:newContact];
}

-(void)printContacts {
    int i = 0;
    for (Contact *contact in self.contactsArray) {
        //int indexValue = [self indexOfObject:yourString];
        NSLog(@"%d: <%@> ()", i, contact.name);
        i++;
    }    
}

-(void)showContact:(int)contactID {
    Contact *contactName = [self.contactsArray objectAtIndex:contactID];
    NSString *name = contactName.name;
    NSLog(@"%@\n",name);
}

-(void)showSearch:(NSString *)inputSearch {
    for (Contact *contact in self.contactsArray) {
        if ([contact.name containsString:inputSearch]) {
            NSLog(@"%@ %@", contact.name, contact.email);
        }
    }
}

@end
