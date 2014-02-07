//
//  ViewController.m
//  TestTableView
//
//  Created by Shawn Roller on 2/2/14.
//  Copyright (c) 2014 Shawn Roller. All rights reserved.
//

#import "ViewController.h"
#import "TestTableCell.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *recipes;
    NSArray *thumbnails;
    NSArray *prepTimes;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *path = [[NSBundle mainBundle] pathForResource:@"recipes" ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    recipes = [dict objectForKey:@"RecipeName"];
    thumbnails = [dict objectForKey:@"Thumbnail"];
    prepTimes = [dict objectForKey:@"PrepTime"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *tableViewCell = @"TestTableCell";
    TestTableCell *cell = (TestTableCell *)[tableView dequeueReusableCellWithIdentifier:tableViewCell];
    
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"TestTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.nameLabel.text = recipes[indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:thumbnails[indexPath.row]];
    cell.timeLabel.text = prepTimes[indexPath.row];
    
//    cell.textLabel.text = recipes[indexPath.row];
//    cell.imageView.image = [UIImage imageNamed:thumbnails[indexPath.row]];
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *alertItem = @"You've selected ";
    NSString *recipeItem = recipes[indexPath.row];
    NSString *alertMessage = [NSString stringWithFormat:@"%@%@",alertItem, recipeItem];
    UIAlertView *messageAlert = [[UIAlertView alloc]
                                 initWithTitle:@"Row Selected" message:alertMessage delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    // Display Alert Message
    [messageAlert show];
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
