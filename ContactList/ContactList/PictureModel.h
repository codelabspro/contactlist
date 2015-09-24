//
//  PictureModel.h
//  ContactList
//

#import "JSONModel.h"

@interface PictureModel : JSONModel
@property (strong, nonatomic) NSString *large;
@property (strong, nonatomic) NSString *medium;
@property (strong, nonatomic) NSString *thumbnail;
@end
