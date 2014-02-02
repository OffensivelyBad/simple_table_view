//
//  ViewController.m
//  TestTableView
//
//  Created by Shawn Roller on 2/2/14.
//  Copyright (c) 2014 Shawn Roller. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *recipes;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    recipes = [NSArray arrayWithObjects:@"testing1", @"testing3", nil];
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
    static NSString *tableViewCell = @"tableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableViewCell];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableViewCell];
    }
    
    cell.textLabel.text = [recipes objectAtIndex:indexPath.row];
    return cell;
}

@end
