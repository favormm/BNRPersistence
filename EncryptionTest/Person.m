//
//  Person.m
//  EncryptionTest
//
//  Created by Adam Preble on 4/6/10.
//  Copyright 2010 Big Nerd Ranch. All rights reserved.
//

#import "Person.h"
#import "BNRDataBuffer.h"

@implementation Person

@synthesize name;

+ (id)personWithName:(NSString *)theName
{
    Person *person = [[Person alloc] init];
    [person setName:theName];
    return [person autorelease];
}

- (void)dealloc
{
    [self setName:nil];
    [super dealloc];
}

- (void)readContentFromBuffer:(BNRDataBuffer *)buffer
{
    [self setName:[buffer readString]];
}

- (void)writeContentToBuffer:(BNRDataBuffer *)buffer
{
    [buffer writeString:[self name]];
}

@end

