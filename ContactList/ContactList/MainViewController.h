//
//  MainViewController.h
//  ContactList
//

#import <UIKit/UIKit.h>
#import "ResultModel.h"

@interface MainViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) NSMutableArray *products;
@property (nonatomic, strong) NSArray<ResultModel> *results;
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, assign) long selectedIndex;
@property (nonatomic, assign) NSString *selectedFirstName;
@property (nonatomic, assign) NSString *selectedLastName;
@property (nonatomic, assign) NSString *selectedPictureLarge;

@end
