//
//  TTStudent.m
//  Dictionary
//
//  Created by sergey on 1/28/14.
//  Copyright (c) 2014 sergey. All rights reserved.
//

#import "TTStudent.h"

@implementation TTStudent

- (id)initStudetWithName:(NSString *)name secondName:(NSString *)secondname phrase:(NSString *)phrase {

    if (self = [super init]) {
        _name = name;
        _secondname = secondname;
        _phrase = phrase;
    }
    
    return self;
}

@end
