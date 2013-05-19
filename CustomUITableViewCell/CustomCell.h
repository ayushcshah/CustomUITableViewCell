//
//  CustomCell.h
//  CustomUITableViewCell
//
//  Created by Ayush Shah on 19/05/13.
//  Copyright (c) 2013 Ayush Shah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *lblTitle;
@property (strong, nonatomic) IBOutlet UILabel *lblcal;
@property (strong, nonatomic) IBOutlet UILabel *lblDuration;
@property (strong, nonatomic) IBOutlet UILabel *lblex;
@property (strong, nonatomic) IBOutlet UILabel *lblset;
@property (strong, nonatomic) IBOutlet UIImageView *img;

@end
