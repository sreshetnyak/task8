//
//  TTStudent.h
//  Dictionary
//
//  Created by sergey on 1/28/14.
//  Copyright (c) 2014 sergey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TTStudent : NSObject

@property (strong,nonatomic) NSString *name;
@property (strong,nonatomic) NSString *secondname;
@property (strong,nonatomic) NSString *phrase;

- (id)initStudetWithName:(NSString *)name secondName:(NSString *)secondname phrase:(NSString *)phrase;

@end
