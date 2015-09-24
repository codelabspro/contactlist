//
//  MainViewController.m
//  ContactList
//

#define kBackgroundQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0) //1
#define kUserUrl @"https://randomuser.me/api/"
#define kJsonUrl @"http://api.randomuser.me/?results=200&key=MQ8Y-96ZR-Q1AM-DWJB" //2
#define kKivaUrl @"http://api.kivaws.org/v1/loans/search.json?status=fundraising"

#import "MainViewController.h"
#import "JSONModelLib.h"
#import "ItemCell.h"
#import "UserModel.h"
#import "MBProgressHUD.h"
#import "ResultsContainer.h"
#import "UIImageView+WebCache.h"

@interface MainViewController () {
    ResultsContainer *_resultsContainer;
}
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
    [self loadView];
}

- (void)viewDidAppear:(BOOL)animated {
    
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    
    _resultsContainer = [[ResultsContainer alloc] initFromURLWithString:kJsonUrl completion:^(JSONModel *model, JSONModelError *err) {

        
        self.results = _resultsContainer.results;
        
        
        [MBProgressHUD hideHUDForView:self.view animated:YES];
        
        [self.tableView reloadData];
    }];
    
    

}

- (void)loadView
{

    self.tableView = [[UITableView alloc] initWithFrame:[[UIScreen mainScreen] bounds] style:UITableViewStylePlain];
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[ItemCell class] forCellReuseIdentifier:@"Cell"];
    // [self.tableView reloadData];
    
    self.view = self.tableView;
    


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - DataSource
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    // Return the number of sections.
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 55.0;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
      NSLog(@"users count: %ld ", [self.results count]);
    // Return the number of rows in the section.
    return [self.results count];
    // return _feed.loans.count;
  
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    
    ItemCell *itemCell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath] ;
    
    if (itemCell == nil)
    {
        itemCell = [[ItemCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    ResultModel *resultModel = self.results[indexPath.row];
    
    UserModel *user = resultModel.user;

    itemCell.titleLabel.text = [user.name.first capitalizedString];

    itemCell.titleLabel.backgroundColor = [UIColor colorWithWhite:1 alpha:0];
    itemCell.descriptionLabel.text = [user.name.last capitalizedString];
    itemCell.descriptionLabel.backgroundColor = [UIColor colorWithWhite:1 alpha:0];
    
    itemCell.backgroundColor = [UIColor colorWithWhite:1 alpha:0];
    
    // [itemCell.iconImageView setImageWithURL:user.picture.thumbnail placeholderImage:nil];
    UIImage *defaultImage = [UIImage imageNamed:@"111-user.png"];
    NSURL *imageUrl = [NSURL URLWithString:[user.picture.thumbnail stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    
    [itemCell.iconImageView sd_setImageWithURL:imageUrl placeholderImage:defaultImage];

    return itemCell;
    
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)theTableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"selected %ld row", (long)indexPath.row);
}

@end
