//
//  ResultModel.h
//  ContactList
//

#import "JSONModel.h"
#import "UserModel.h"

@protocol ResultModel @end
@interface ResultModel : JSONModel

@property (strong, nonatomic) UserModel *user;

@end
