//
//  AddContactViewController.m
//  ContactList
//
#define kAddContactTitle @"Add Contact"

#import "AddContactViewController.h"

@interface AddContactViewController ()

@end

@implementation AddContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIBarButtonItem *saveButton = [[UIBarButtonItem alloc]
                                   initWithBarButtonSystemItem:UIBarButtonSystemItemSave
                                   target:self
                                   action:@selector(dismiss)];
    self.navigationItem.leftBarButtonItem = saveButton;
    
    
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc]
                                    initWithBarButtonSystemItem:UIBarButtonSystemItemDone
                                    target:self
                                    action:@selector(dismiss)];
    self.navigationItem.rightBarButtonItem = doneButton;
    
    self.navigationItem.title = kAddContactTitle;
    
}

- (void) viewWillAppear:(BOOL)animated {

    UIImageView *contactImageView = [[UIImageView alloc] init];
    contactImageView.image = [UIImage imageNamed:@"user"];
    contactImageView.tag = 1;
    [contactImageView.heightAnchor constraintEqualToConstant:50].active = true;
    [contactImageView.widthAnchor constraintEqualToConstant:60].active = true;
    
    UITextField *firstNameTextField = [[UITextField alloc] init];
    firstNameTextField.placeholder = @"First Name";
    firstNameTextField.backgroundColor = [UIColor whiteColor];
    firstNameTextField.textColor = [UIColor blackColor];
    firstNameTextField.font = [UIFont systemFontOfSize:14.0f];
    firstNameTextField.borderStyle = UITextBorderStyleRoundedRect;
    firstNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    firstNameTextField.returnKeyType = UIReturnKeyDone;
    firstNameTextField.textAlignment = NSTextAlignmentLeft;
    firstNameTextField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    firstNameTextField.tag = 2;
    firstNameTextField.autocapitalizationType = UITextAutocapitalizationTypeNone;
    [firstNameTextField.heightAnchor constraintEqualToConstant:50].active = true;
    [firstNameTextField.widthAnchor constraintEqualToConstant:270].active = true;
    
    UITextField *lastNameTextField = [[UITextField alloc] init];
    lastNameTextField.placeholder = @"Last Name";
    lastNameTextField.backgroundColor = [UIColor whiteColor];
    lastNameTextField.textColor = [UIColor blackColor];
    lastNameTextField.font = [UIFont systemFontOfSize:14.0f];
    lastNameTextField.borderStyle = UITextBorderStyleRoundedRect;
    lastNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    lastNameTextField.returnKeyType = UIReturnKeyDone;
    lastNameTextField.textAlignment = NSTextAlignmentLeft;
    lastNameTextField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    lastNameTextField.tag = 3;
    lastNameTextField.autocapitalizationType = UITextAutocapitalizationTypeNone;
    [lastNameTextField.heightAnchor constraintEqualToConstant:50].active = true;
    [lastNameTextField.widthAnchor constraintEqualToConstant:270].active = true;
    
    UIStackView *stackView = [[UIStackView alloc] init];
    stackView.axis = UILayoutConstraintAxisVertical;
    stackView.distribution = UIStackViewDistributionEqualSpacing;
    stackView.alignment = UIStackViewAlignmentCenter;
    stackView.spacing = 30;
    
    
    [stackView addArrangedSubview:contactImageView];
    [stackView addArrangedSubview:firstNameTextField];
    [stackView addArrangedSubview:lastNameTextField];
    
    stackView.translatesAutoresizingMaskIntoConstraints = false;
    [self.view addSubview:stackView];
    
    
    //Layout for Stack View
    [stackView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = true;
    [stackView.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = true;
}


- (void)dismiss {
    [self.presentingViewController dismissViewControllerAnimated:YES
                                                      completion:nil];
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

@end
