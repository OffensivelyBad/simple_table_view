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
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    recipes = [NSArray arrayWithObjects:@"testing1", @"testing3", nil];
    thumbnails = [NSArray arrayWithObjects:@"creme_brelee.jpg",@"creme_brelee.jpg",nil];
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
    
//    cell.textLabel.text = recipes[indexPath.row];
//    cell.imageView.image = [UIImage imageNamed:thumbnails[indexPath.row]];
    return cell;
}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    return 100;
//}

@end
