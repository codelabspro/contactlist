//
//  ItemCell.m
//  ContactList
//

#import "ItemCell.h"

@implementation ItemCell


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.iconImageView = [[UIImageView alloc] initWithFrame: CGRectMake(10.0, 0.0, 40.0, 40.0)];
        
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(20.0, 20.0), NO, kNilOptions);
        self.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(105, 10, 300, 30)];
        self.titleLabel.textColor = [UIColor blackColor];
        self.titleLabel.font = [UIFont fontWithName:@"Helvetica-Neue" size:24.0f];


        
        self.descriptionLabel = [[UILabel alloc] initWithFrame:CGRectMake(205, 10, 300, 30)];
        self.descriptionLabel.textColor = [UIColor blackColor];
        self.descriptionLabel.font = [UIFont fontWithName:@"Helvetica-Neue" size:24.0f];

        [self addSubview:self.iconImageView];
        [self addSubview:self.titleLabel];
        [self addSubview:self.descriptionLabel];
        
        
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
