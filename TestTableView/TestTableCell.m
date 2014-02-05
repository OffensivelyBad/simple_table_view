//
//  TestTableCell.m
//  TestTableView
//
//  Created by Shawn Roller on 2/5/14.
//  Copyright (c) 2014 Shawn Roller. All rights reserved.
//

#import "TestTableCell.h"

@implementation TestTableCell
@synthesize nameLabel = _nameLabel;
@synthesize timeLabel = _timeLabel;
@synthesize thumbnailImageView = _thumbnailImageView;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
