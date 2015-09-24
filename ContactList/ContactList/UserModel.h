//
//  UserModel.h
//  ContactList
//

#import "JSONModel.h"
#import "NameModel.h"
#import "LocationModel.h"
#import "PictureModel.h"


@protocol UserModel @end
@interface UserModel : JSONModel

@property (strong, nonatomic) NSString *gender;
@property (strong, nonatomic) NameModel *name;
@property (strong, nonatomic) LocationModel *location;
@property (strong, nonatomic) NSString *email;
@property (strong, nonatomic) NSString *username;
@property (strong, nonatomic) NSString *password;
@property (strong, nonatomic) NSString *salt;
@property (strong, nonatomic) NSString *md5;
@property (strong, nonatomic) NSString *sha1;
@property (strong, nonatomic) NSString *sha256;
@property (assign, nonatomic) int registered;
@property (assign, nonatomic) int dob;
@property (strong, nonatomic) NSString *phone;
@property (strong, nonatomic) NSString *cell;
@property (strong, nonatomic) PictureModel *picture;
@end
