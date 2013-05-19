//
//  ViewController.h
//  CustomUITableViewCell
//
//  Created by Ayush Shah on 19/05/13.
//  Copyright (c) 2013 Ayush Shah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource>{
    NSMutableArray * img;
    NSMutableArray * title;
    NSMutableArray * cal;
    NSMutableArray * duration;
    NSMutableArray * ex;
    NSMutableArray * set;
}

@end
