//
//  ViewController.m
//  multithreading;multithreading; multithreading
//
//  Created by 张飞蓬 on 15/9/29.
//  Copyright © 2015年 张飞蓬. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self performSelectorInBackground:@selector(dowork) withObject:nil];
    [self performSelectorOnMainThread:@selector(dowork) withObject:nil waitUntilDone:nil];
    dispatch_queue_t queue = dispatch_queue_create("my.corrunt.queue", DISPATCH_QUEUE_CONCURRENT);
    dispatch_async( queue, ^{
        NSLog(@"nidaye");
    });
    
    //一个线程
    dispatch_queue_t serial = dispatch_queue_create("serial", NULL);
    //dispatch_release(serial);
    
    //并行多个线程
    dispatch_queue_t current = dispatch_queue_create("current", DISPATCH_QUEUE_CONCURRENT);
    
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dowork
{
    
}

@end
