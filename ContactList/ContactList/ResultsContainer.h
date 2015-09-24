//
//  ResultsContainer.h
//  ContactList
//

#import "JSONModel.h"
#import "ResultModel.h"

@interface ResultsContainer : JSONModel

@property (nonatomic, strong) NSArray<ResultModel> *results;
@property (nonatomic, strong) NSString *nationality;
@property (nonatomic, strong) NSString *seed;
@property (nonatomic, strong) NSString *version;


@end
