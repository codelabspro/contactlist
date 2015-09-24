//
//  NameModel.h
//  ContactList
//

#import "JSONModel.h"

@interface NameModel : JSONModel
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *first;
@property (strong, nonatomic) NSString *last;
@end
