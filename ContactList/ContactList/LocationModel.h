//
//  Location.h
//  ContactList
//

#import "JSONModel.h"

@interface LocationModel : JSONModel
@property (strong, nonatomic) NSString *street;
@property (strong, nonatomic) NSString *city;
@property (strong, nonatomic) NSString *state;
@property (assign, nonatomic) NSString *zip;

@end
