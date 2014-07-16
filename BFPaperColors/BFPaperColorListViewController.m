//
//  BFPaperColorListViewController.m
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


#import "BFPaperColorListViewController.h"
#import "BFPaperColorViewController.h"


@interface BFPaperColorListViewController ()
@property IBOutlet UITableView *tableView;
@property NSArray *colorsArray;
@property NSArray *chosenColor;
@end

@implementation BFPaperColorListViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    // Setup colors array. This is just to demo each color. All you need in your project is UIColor+BFPaperColors.m/h!
    self.colorsArray = [self populateColorsArray];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBar.barTintColor = [UIColor paperColorGray900];
    self.navigationController.navigationBar.translucent = YES;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    BFPaperColorViewController *paperColorVC = segue.destinationViewController;
    paperColorVC.color = self.chosenColor;
}



- (NSArray *)populateColorsArray
{
    NSMutableArray *mutableColors = [NSMutableArray new];
    NSMutableArray *shades = [NSMutableArray new];
    
    // Red:
    [shades addObject:@"Red"];
    [shades addObject:[UIColor paperColorRed]];
    [shades addObject:[UIColor paperColorRed50]];
    [shades addObject:[UIColor paperColorRed100]];
    [shades addObject:[UIColor paperColorRed200]];
    [shades addObject:[UIColor paperColorRed300]];
    [shades addObject:[UIColor paperColorRed400]];
    [shades addObject:[UIColor paperColorRed500]];
    [shades addObject:[UIColor paperColorRed600]];
    [shades addObject:[UIColor paperColorRed700]];
    [shades addObject:[UIColor paperColorRed800]];
    [shades addObject:[UIColor paperColorRed900]];
    [shades addObject:[UIColor paperColorRedA100]];
    [shades addObject:[UIColor paperColorRedA200]];
    [shades addObject:[UIColor paperColorRedA400]];
    [shades addObject:[UIColor paperColorRedA700]];
    [mutableColors addObject:[shades copy]];
    [shades removeAllObjects];
    // Pink:
    [shades addObject:@"Pink"];
    [shades addObject:[UIColor paperColorPink]];
    [shades addObject:[UIColor paperColorPink50]];
    [shades addObject:[UIColor paperColorPink100]];
    [shades addObject:[UIColor paperColorPink200]];
    [shades addObject:[UIColor paperColorPink300]];
    [shades addObject:[UIColor paperColorPink400]];
    [shades addObject:[UIColor paperColorPink500]];
    [shades addObject:[UIColor paperColorPink600]];
    [shades addObject:[UIColor paperColorPink700]];
    [shades addObject:[UIColor paperColorPink800]];
    [shades addObject:[UIColor paperColorPink900]];
    [shades addObject:[UIColor paperColorPinkA100]];
    [shades addObject:[UIColor paperColorPinkA200]];
    [shades addObject:[UIColor paperColorPinkA400]];
    [shades addObject:[UIColor paperColorPinkA700]];
    [mutableColors addObject:[shades copy]];
    [shades removeAllObjects];
    // Purple:
    [shades addObject:@"Purple"];
    [shades addObject:[UIColor paperColorPurple]];
    [shades addObject:[UIColor paperColorPurple50]];
    [shades addObject:[UIColor paperColorPurple100]];
    [shades addObject:[UIColor paperColorPurple200]];
    [shades addObject:[UIColor paperColorPurple300]];
    [shades addObject:[UIColor paperColorPurple400]];
    [shades addObject:[UIColor paperColorPurple500]];
    [shades addObject:[UIColor paperColorPurple600]];
    [shades addObject:[UIColor paperColorPurple700]];
    [shades addObject:[UIColor paperColorPurple800]];
    [shades addObject:[UIColor paperColorPurple900]];
    [shades addObject:[UIColor paperColorPurpleA100]];
    [shades addObject:[UIColor paperColorPurpleA200]];
    [shades addObject:[UIColor paperColorPurpleA400]];
    [shades addObject:[UIColor paperColorPurpleA700]];
    [mutableColors addObject:[shades copy]];
    [shades removeAllObjects];
    // Deep Purple:
    [shades addObject:@"Deep Purple"];
    [shades addObject:[UIColor paperColorDeepPurple]];
    [shades addObject:[UIColor paperColorDeepPurple50]];
    [shades addObject:[UIColor paperColorDeepPurple100]];
    [shades addObject:[UIColor paperColorDeepPurple200]];
    [shades addObject:[UIColor paperColorDeepPurple300]];
    [shades addObject:[UIColor paperColorDeepPurple400]];
    [shades addObject:[UIColor paperColorDeepPurple500]];
    [shades addObject:[UIColor paperColorDeepPurple600]];
    [shades addObject:[UIColor paperColorDeepPurple700]];
    [shades addObject:[UIColor paperColorDeepPurple800]];
    [shades addObject:[UIColor paperColorDeepPurple900]];
    [shades addObject:[UIColor paperColorDeepPurpleA100]];
    [shades addObject:[UIColor paperColorDeepPurpleA200]];
    [shades addObject:[UIColor paperColorDeepPurpleA400]];
    [shades addObject:[UIColor paperColorDeepPurpleA700]];
    [mutableColors addObject:[shades copy]];
    [shades removeAllObjects];
    // Indigo:
    [shades addObject:@"Indigo"];
    [shades addObject:[UIColor paperColorIndigo]];
    [shades addObject:[UIColor paperColorIndigo50]];
    [shades addObject:[UIColor paperColorIndigo100]];
    [shades addObject:[UIColor paperColorIndigo200]];
    [shades addObject:[UIColor paperColorIndigo300]];
    [shades addObject:[UIColor paperColorIndigo400]];
    [shades addObject:[UIColor paperColorIndigo500]];
    [shades addObject:[UIColor paperColorIndigo600]];
    [shades addObject:[UIColor paperColorIndigo700]];
    [shades addObject:[UIColor paperColorIndigo800]];
    [shades addObject:[UIColor paperColorIndigo900]];
    [shades addObject:[UIColor paperColorIndigoA100]];
    [shades addObject:[UIColor paperColorIndigoA200]];
    [shades addObject:[UIColor paperColorIndigoA400]];
    [shades addObject:[UIColor paperColorIndigoA700]];
    [mutableColors addObject:[shades copy]];
    [shades removeAllObjects];
    // Blue:
    [shades addObject:@"Blue"];
    [shades addObject:[UIColor paperColorBlue]];
    [shades addObject:[UIColor paperColorBlue50]];
    [shades addObject:[UIColor paperColorBlue100]];
    [shades addObject:[UIColor paperColorBlue200]];
    [shades addObject:[UIColor paperColorBlue300]];
    [shades addObject:[UIColor paperColorBlue400]];
    [shades addObject:[UIColor paperColorBlue500]];
    [shades addObject:[UIColor paperColorBlue600]];
    [shades addObject:[UIColor paperColorBlue700]];
    [shades addObject:[UIColor paperColorBlue800]];
    [shades addObject:[UIColor paperColorBlue900]];
    [shades addObject:[UIColor paperColorBlueA100]];
    [shades addObject:[UIColor paperColorBlueA200]];
    [shades addObject:[UIColor paperColorBlueA400]];
    [shades addObject:[UIColor paperColorBlueA700]];
    [mutableColors addObject:[shades copy]];
    [shades removeAllObjects];
    // Light Blue:
    [shades addObject:@"Light Blue"];
    [shades addObject:[UIColor paperColorLightBlue]];
    [shades addObject:[UIColor paperColorLightBlue50]];
    [shades addObject:[UIColor paperColorLightBlue100]];
    [shades addObject:[UIColor paperColorLightBlue200]];
    [shades addObject:[UIColor paperColorLightBlue300]];
    [shades addObject:[UIColor paperColorLightBlue400]];
    [shades addObject:[UIColor paperColorLightBlue500]];
    [shades addObject:[UIColor paperColorLightBlue600]];
    [shades addObject:[UIColor paperColorLightBlue700]];
    [shades addObject:[UIColor paperColorLightBlue800]];
    [shades addObject:[UIColor paperColorLightBlue900]];
    [shades addObject:[UIColor paperColorLightBlueA100]];
    [shades addObject:[UIColor paperColorLightBlueA200]];
    [shades addObject:[UIColor paperColorLightBlueA400]];
    [shades addObject:[UIColor paperColorLightBlueA700]];
    [mutableColors addObject:[shades copy]];
    [shades removeAllObjects];
    // Cyan:
    [shades addObject:@"Cyan"];
    [shades addObject:[UIColor paperColorCyan]];
    [shades addObject:[UIColor paperColorCyan50]];
    [shades addObject:[UIColor paperColorCyan100]];
    [shades addObject:[UIColor paperColorCyan200]];
    [shades addObject:[UIColor paperColorCyan300]];
    [shades addObject:[UIColor paperColorCyan400]];
    [shades addObject:[UIColor paperColorCyan500]];
    [shades addObject:[UIColor paperColorCyan600]];
    [shades addObject:[UIColor paperColorCyan700]];
    [shades addObject:[UIColor paperColorCyan800]];
    [shades addObject:[UIColor paperColorCyan900]];
    [shades addObject:[UIColor paperColorCyanA100]];
    [shades addObject:[UIColor paperColorCyanA200]];
    [shades addObject:[UIColor paperColorCyanA400]];
    [shades addObject:[UIColor paperColorCyanA700]];
    [mutableColors addObject:[shades copy]];
    [shades removeAllObjects];
    // Teal:
    [shades addObject:@"Teal"];
    [shades addObject:[UIColor paperColorTeal]];
    [shades addObject:[UIColor paperColorTeal50]];
    [shades addObject:[UIColor paperColorTeal100]];
    [shades addObject:[UIColor paperColorTeal200]];
    [shades addObject:[UIColor paperColorTeal300]];
    [shades addObject:[UIColor paperColorTeal400]];
    [shades addObject:[UIColor paperColorTeal500]];
    [shades addObject:[UIColor paperColorTeal600]];
    [shades addObject:[UIColor paperColorTeal700]];
    [shades addObject:[UIColor paperColorTeal800]];
    [shades addObject:[UIColor paperColorTeal900]];
    [shades addObject:[UIColor paperColorTealA100]];
    [shades addObject:[UIColor paperColorTealA200]];
    [shades addObject:[UIColor paperColorTealA400]];
    [shades addObject:[UIColor paperColorTealA700]];
    [mutableColors addObject:[shades copy]];
    [shades removeAllObjects];
    // Green:
    [shades addObject:@"Green"];
    [shades addObject:[UIColor paperColorGreen]];
    [shades addObject:[UIColor paperColorGreen50]];
    [shades addObject:[UIColor paperColorGreen100]];
    [shades addObject:[UIColor paperColorGreen200]];
    [shades addObject:[UIColor paperColorGreen300]];
    [shades addObject:[UIColor paperColorGreen400]];
    [shades addObject:[UIColor paperColorGreen500]];
    [shades addObject:[UIColor paperColorGreen600]];
    [shades addObject:[UIColor paperColorGreen700]];
    [shades addObject:[UIColor paperColorGreen800]];
    [shades addObject:[UIColor paperColorGreen900]];
    [shades addObject:[UIColor paperColorGreenA100]];
    [shades addObject:[UIColor paperColorGreenA200]];
    [shades addObject:[UIColor paperColorGreenA400]];
    [shades addObject:[UIColor paperColorGreenA700]];
    [mutableColors addObject:[shades copy]];
    [shades removeAllObjects];
    // Light Green:
    [shades addObject:@"Light Green"];
    [shades addObject:[UIColor paperColorLightGreen]];
    [shades addObject:[UIColor paperColorLightGreen50]];
    [shades addObject:[UIColor paperColorLightGreen100]];
    [shades addObject:[UIColor paperColorLightGreen200]];
    [shades addObject:[UIColor paperColorLightGreen300]];
    [shades addObject:[UIColor paperColorLightGreen400]];
    [shades addObject:[UIColor paperColorLightGreen500]];
    [shades addObject:[UIColor paperColorLightGreen600]];
    [shades addObject:[UIColor paperColorLightGreen700]];
    [shades addObject:[UIColor paperColorLightGreen800]];
    [shades addObject:[UIColor paperColorLightGreen900]];
    [shades addObject:[UIColor paperColorLightGreenA100]];
    [shades addObject:[UIColor paperColorLightGreenA200]];
    [shades addObject:[UIColor paperColorLightGreenA400]];
    [shades addObject:[UIColor paperColorLightGreenA700]];
    [mutableColors addObject:[shades copy]];
    [shades removeAllObjects];
    // Lime:
    [shades addObject:@"Lime"];
    [shades addObject:[UIColor paperColorLime]];
    [shades addObject:[UIColor paperColorLime50]];
    [shades addObject:[UIColor paperColorLime100]];
    [shades addObject:[UIColor paperColorLime200]];
    [shades addObject:[UIColor paperColorLime300]];
    [shades addObject:[UIColor paperColorLime400]];
    [shades addObject:[UIColor paperColorLime500]];
    [shades addObject:[UIColor paperColorLime600]];
    [shades addObject:[UIColor paperColorLime700]];
    [shades addObject:[UIColor paperColorLime800]];
    [shades addObject:[UIColor paperColorLime900]];
    [shades addObject:[UIColor paperColorLimeA100]];
    [shades addObject:[UIColor paperColorLimeA200]];
    [shades addObject:[UIColor paperColorLimeA400]];
    [shades addObject:[UIColor paperColorLimeA700]];
    [mutableColors addObject:[shades copy]];
    [shades removeAllObjects];
    // Yellow:
    [shades addObject:@"Yellow"];
    [shades addObject:[UIColor paperColorYellow]];
    [shades addObject:[UIColor paperColorYellow50]];
    [shades addObject:[UIColor paperColorYellow100]];
    [shades addObject:[UIColor paperColorYellow200]];
    [shades addObject:[UIColor paperColorYellow300]];
    [shades addObject:[UIColor paperColorYellow400]];
    [shades addObject:[UIColor paperColorYellow500]];
    [shades addObject:[UIColor paperColorYellow600]];
    [shades addObject:[UIColor paperColorYellow700]];
    [shades addObject:[UIColor paperColorYellow800]];
    [shades addObject:[UIColor paperColorYellow900]];
    [shades addObject:[UIColor paperColorYellowA100]];
    [shades addObject:[UIColor paperColorYellowA200]];
    [shades addObject:[UIColor paperColorYellowA400]];
    [shades addObject:[UIColor paperColorYellowA700]];
    [mutableColors addObject:[shades copy]];
    [shades removeAllObjects];
    // Amber:
    [shades addObject:@"Amber"];
    [shades addObject:[UIColor paperColorAmber]];
    [shades addObject:[UIColor paperColorAmber50]];
    [shades addObject:[UIColor paperColorAmber100]];
    [shades addObject:[UIColor paperColorAmber200]];
    [shades addObject:[UIColor paperColorAmber300]];
    [shades addObject:[UIColor paperColorAmber400]];
    [shades addObject:[UIColor paperColorAmber500]];
    [shades addObject:[UIColor paperColorAmber600]];
    [shades addObject:[UIColor paperColorAmber700]];
    [shades addObject:[UIColor paperColorAmber800]];
    [shades addObject:[UIColor paperColorAmber900]];
    [shades addObject:[UIColor paperColorAmberA100]];
    [shades addObject:[UIColor paperColorAmberA200]];
    [shades addObject:[UIColor paperColorAmberA400]];
    [shades addObject:[UIColor paperColorAmberA700]];
    [mutableColors addObject:[shades copy]];
    [shades removeAllObjects];
    // Orange:
    [shades addObject:@"Orange"];
    [shades addObject:[UIColor paperColorOrange]];
    [shades addObject:[UIColor paperColorOrange50]];
    [shades addObject:[UIColor paperColorOrange100]];
    [shades addObject:[UIColor paperColorOrange200]];
    [shades addObject:[UIColor paperColorOrange300]];
    [shades addObject:[UIColor paperColorOrange400]];
    [shades addObject:[UIColor paperColorOrange500]];
    [shades addObject:[UIColor paperColorOrange600]];
    [shades addObject:[UIColor paperColorOrange700]];
    [shades addObject:[UIColor paperColorOrange800]];
    [shades addObject:[UIColor paperColorOrange900]];
    [shades addObject:[UIColor paperColorOrangeA100]];
    [shades addObject:[UIColor paperColorOrangeA200]];
    [shades addObject:[UIColor paperColorOrangeA400]];
    [shades addObject:[UIColor paperColorOrangeA700]];
    [mutableColors addObject:[shades copy]];
    [shades removeAllObjects];
    // Deep Orange:
    [shades addObject:@"Deep Orange"];
    [shades addObject:[UIColor paperColorDeepOrange]];
    [shades addObject:[UIColor paperColorDeepOrange50]];
    [shades addObject:[UIColor paperColorDeepOrange100]];
    [shades addObject:[UIColor paperColorDeepOrange200]];
    [shades addObject:[UIColor paperColorDeepOrange300]];
    [shades addObject:[UIColor paperColorDeepOrange400]];
    [shades addObject:[UIColor paperColorDeepOrange500]];
    [shades addObject:[UIColor paperColorDeepOrange600]];
    [shades addObject:[UIColor paperColorDeepOrange700]];
    [shades addObject:[UIColor paperColorDeepOrange800]];
    [shades addObject:[UIColor paperColorDeepOrange900]];
    [shades addObject:[UIColor paperColorDeepOrangeA100]];
    [shades addObject:[UIColor paperColorDeepOrangeA200]];
    [shades addObject:[UIColor paperColorDeepOrangeA400]];
    [shades addObject:[UIColor paperColorDeepOrangeA700]];
    [mutableColors addObject:[shades copy]];
    [shades removeAllObjects];
    // Brown:
    [shades addObject:@"Brown"];
    [shades addObject:[UIColor paperColorBrown]];
    [shades addObject:[UIColor paperColorBrown50]];
    [shades addObject:[UIColor paperColorBrown100]];
    [shades addObject:[UIColor paperColorBrown200]];
    [shades addObject:[UIColor paperColorBrown300]];
    [shades addObject:[UIColor paperColorBrown400]];
    [shades addObject:[UIColor paperColorBrown500]];
    [shades addObject:[UIColor paperColorBrown600]];
    [shades addObject:[UIColor paperColorBrown700]];
    [shades addObject:[UIColor paperColorBrown800]];
    [shades addObject:[UIColor paperColorBrown900]];
    [mutableColors addObject:[shades copy]];
    [shades removeAllObjects];
    // Gray:
    [shades addObject:@"Gray"];
    [shades addObject:[UIColor paperColorGray]];
    [shades addObject:[UIColor paperColorGray50]];
    [shades addObject:[UIColor paperColorGray100]];
    [shades addObject:[UIColor paperColorGray200]];
    [shades addObject:[UIColor paperColorGray300]];
    [shades addObject:[UIColor paperColorGray400]];
    [shades addObject:[UIColor paperColorGray500]];
    [shades addObject:[UIColor paperColorGray600]];
    [shades addObject:[UIColor paperColorGray700]];
    [shades addObject:[UIColor paperColorGray800]];
    [shades addObject:[UIColor paperColorGray900]];
    [mutableColors addObject:[shades copy]];
    [shades removeAllObjects];
    // Blue Gray:
    [shades addObject:@"Blue Gray"];
    [shades addObject:[UIColor paperColorBlueGray]];
    [shades addObject:[UIColor paperColorBlueGray50]];
    [shades addObject:[UIColor paperColorBlueGray100]];
    [shades addObject:[UIColor paperColorBlueGray200]];
    [shades addObject:[UIColor paperColorBlueGray300]];
    [shades addObject:[UIColor paperColorBlueGray400]];
    [shades addObject:[UIColor paperColorBlueGray500]];
    [shades addObject:[UIColor paperColorBlueGray600]];
    [shades addObject:[UIColor paperColorBlueGray700]];
    [shades addObject:[UIColor paperColorBlueGray800]];
    [shades addObject:[UIColor paperColorBlueGray900]];
    [mutableColors addObject:[shades copy]];
    [shades removeAllObjects];
    
    return [mutableColors copy];
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
    return self.colorsArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    // Configure the cell...
    cell.textLabel.text = [[self.colorsArray objectAtIndex:indexPath.row] firstObject];
    cell.backgroundColor = [[self.colorsArray objectAtIndex:indexPath.row] objectAtIndex:1];
    NSString *colorString = [[self.colorsArray objectAtIndex:indexPath.row] firstObject];
    if ([colorString isEqualToString:@"Lime"]
        ||
        [colorString isEqualToString:@"Yellow"]) {
        cell.textLabel.textColor = [UIColor paperColorGray900];
    }
    else {
        cell.textLabel.textColor = [UIColor whiteColor];
    }
    
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

#pragma mark - Table view delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.chosenColor = [self.colorsArray objectAtIndex:indexPath.row];
    [self performSegueWithIdentifier:@"Push to Color View" sender:self];
}

@end
