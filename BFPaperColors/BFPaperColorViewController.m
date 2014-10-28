//
//  BFPaperColorViewController.m
//  BFPaperColors
//
//  Created by Bence Feher on 7/16/14.
//  Copyright (c) 2014 Bence Feher. All rights reserved.
//
/* LICENSE:
 The MIT License (MIT)
 
 Copyright (c) 2014 Bence Feher
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of
 this software and associated documentation files (the "Software"), to deal in
 the Software without restriction, including without limitation the rights to
 use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 the Software, and to permit persons to whom the Software is furnished to do so,
 subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */


#import "BFPaperColorViewController.h"

@interface BFPaperColorViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSArray *colorSuffixes;
@end

@implementation BFPaperColorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.colorSuffixes = @[@"50", @"100", @"200", @"300", @"400", @"500", @"600", @"700", @"800", @"900", @"A100", @"A200", @"A400", @"A700"];
    
    self.tableView.dataSource = self;
    self.navigationController.navigationBar.barTintColor = [self.color objectAtIndex:1];
    self.navigationController.navigationBar.translucent = NO;
    self.title = [self.color firstObject];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    if ([[self.color firstObject] isEqualToString:@"Lime"]
        ||
        [[self.color firstObject] isEqualToString:@"Yellow"]) {
        self.navigationController.navigationBar.tintColor = [UIColor paperColorGray900];
        self.navigationController.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                                                       [UIColor paperColorGray900], NSForegroundColorAttributeName,
                                                                       [UIFont fontWithName:@"RobotoCondensed-Regular" size:20], NSFontAttributeName,
                                                                       nil];
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
        
        
        self.navigationController.navigationBar.backItem.titleView.tintColor = [UIColor paperColorPink];
    }
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                                                   [UIColor whiteColor], NSForegroundColorAttributeName,
                                                                   [UIFont fontWithName:@"RobotoCondensed-Regular" size:20], NSFontAttributeName,
                                                                   nil];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.color.count - 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    // Configure the cell...
    cell.backgroundColor = [self.color objectAtIndex:indexPath.row + 2];
   
    cell.textLabel.text = [self.colorSuffixes objectAtIndex:indexPath.row];
    cell.textLabel.textColor = (indexPath.row < 6 || indexPath.row > 9) ? [UIColor paperColorGray900] : [UIColor paperColorGray100];
    
    cell.detailTextLabel.text = [NSString stringWithFormat:@"#%@", [UIColor hexStringFromRGBColor:cell.backgroundColor]];
    cell.detailTextLabel.textColor = (indexPath.row < 6 || indexPath.row > 9) ? [UIColor paperColorGray900] : [UIColor paperColorGray100];

    
    return cell;
}


- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return [UIView new];
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0;
}

@end
