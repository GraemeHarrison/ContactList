//
//  ContactList.h
//  ContactList
//
//  Created by Graeme Harrison on 2016-01-12.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"


@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *contactsArray;

-(void)addContact:(Contact *)newContact;

-(void)printContacts;

-(void)showContact:(int)contactID;

-(void)showSearch:(NSString *)contactInfo;

@end
