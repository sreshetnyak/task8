//
//  TTViewController.m
//  Dictionary
//
//  Created by sergey on 1/28/14.
//  Copyright (c) 2014 sergey. All rights reserved.
//

#import "TTViewController.h"
#import "TTStudent.h"

@interface TTViewController ()

@end

@implementation TTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    TTStudent *student1 = [[[TTStudent alloc]initStudetWithName:@"Sergey" secondName:@"Ivanov" phrase:@"good luck"]autorelease];
    TTStudent *student2 = [[[TTStudent alloc]initStudetWithName:@"Viktor" secondName:@"Petrov" phrase:@"to be or not to be"]autorelease];
    TTStudent *student3 = [[[TTStudent alloc]initStudetWithName:@"Sergey" secondName:@"Sidorov" phrase:@"perezdam"]autorelease];
    TTStudent *student4 = [[[TTStudent alloc]initStudetWithName:@"Andrey" secondName:@"Shumik" phrase:@"ya uge vihogu"]autorelease];
    TTStudent *student5 = [[[TTStudent alloc]initStudetWithName:@"Ivan" secondName:@"Doroshenko" phrase:@"toliko pobeda"]autorelease];
    TTStudent *student6 = [[[TTStudent alloc]initStudetWithName:@"Maksim" secondName:@"Tatarenko" phrase:@"nu za ribalku"]autorelease];
    TTStudent *student7 = [[[TTStudent alloc]initStudetWithName:@"Andrey" secondName:@"Ivanov" phrase:@"Senya beregi nogu"]autorelease];
    
    
    NSMutableDictionary *journal = [[[NSMutableDictionary alloc]initWithObjectsAndKeys:
                                    student1,[NSString stringWithFormat:@"%@ %@",[student1 name],[student1 secondname]],
                                    student2,[NSString stringWithFormat:@"%@ %@",[student2 name],[student2 secondname]],
                                    student3,[NSString stringWithFormat:@"%@ %@",[student3 name],[student3 secondname]],
                                    student4,[NSString stringWithFormat:@"%@ %@",[student4 name],[student4 secondname]],
                                    student5,[NSString stringWithFormat:@"%@ %@",[student5 name],[student5 secondname]],
                                    student6,[NSString stringWithFormat:@"%@ %@",[student6 name],[student6 secondname]],
                                    student7,[NSString stringWithFormat:@"%@ %@",[student7 name],[student7 secondname]],  nil]autorelease];
    
    
    for (NSString *key in [journal allKeys]) {
        NSLog(@"%@ favorite phrase:\"%@\"",key, [[journal objectForKey:key] phrase]);
    }
    
    
    NSLog(@"____________________________________________________________________________________________");
    
    NSArray *keys = [journal allKeys];
    NSArray *sortedKeys = [keys sortedArrayUsingComparator:^NSComparisonResult(id a1, id a2) {
        return [a1 compare:a2];
    }];
    
    for (NSString *key in sortedKeys) {
        NSLog(@"%@ favorite phrase:\"%@\"",key, [[journal objectForKey:key] phrase]);
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
