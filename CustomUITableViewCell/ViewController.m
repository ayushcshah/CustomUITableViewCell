//
//  ViewController.m
//  CustomUITableViewCell
//
//  Created by Ayush Shah on 19/05/13.
//  Copyright (c) 2013 Ayush Shah. All rights reserved.
//

#import "ViewController.h"
# import "CustomCell.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    img = [[NSMutableArray alloc] initWithObjects:@"back.jpg",@"chest.jpg", nil];
    title = [[NSMutableArray alloc] initWithObjects:@"Back Workout",@"Chest Workout", nil];
    cal = [[NSMutableArray alloc] initWithObjects:@"Calls Burned: 400",@"Calls Burned: 400", nil];
    duration = [[NSMutableArray alloc] initWithObjects:@"Duration: 90",@"Duration: 90", nil];
    ex = [[NSMutableArray alloc] initWithObjects:@"Total Excerise: 6",@"Total Excerise: 6", nil];
    set= [[NSMutableArray alloc] initWithObjects:@"Total sets: 24",@"Total sets: 24", nil];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [title count];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"cell";
    CustomCell *cell = (CustomCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"LoginCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    }
    [cell.img setImage:[UIImage imageNamed:[img objectAtIndex:indexPath.row]]];
    cell.lblTitle.text = [title objectAtIndex:indexPath.row];
    cell.lblcal.text =[cal objectAtIndex:indexPath.row];
    cell.lblDuration.text =[duration objectAtIndex:indexPath.row];
    cell.lblex.text =[ex objectAtIndex:indexPath.row];
    cell.lblset.text =[set objectAtIndex:indexPath.row];
    
    return cell;
}


@end
