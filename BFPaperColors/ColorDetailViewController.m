//
//  ColorDetailViewController.m
//  BFPaperColors
//
//  Created by Bence Feher on 4/23/15.
//  Copyright (c) 2015 Bence Feher. All rights reserved.
//

#import "ColorDetailViewController.h"

@interface ColorDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *switchLabel;
@property (weak, nonatomic) IBOutlet UISwitch *invertSwitch;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;
@property (weak, nonatomic) IBOutlet UITabBar *tabBar;
@property UIColor *blackWhiteColor;
@end

@implementation ColorDetailViewController


#pragma mark - Lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationController.navigationBar.barTintColor = self.color;
    self.title = self.colorName;
    self.blackWhiteColor = [UIColor colorWithWhite:1 alpha:1];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tabBar setSelectedItem:self.tabBar.items[0]];
    [self updateAllControlColors];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Utilities
- (void)updateAllControlColors
{
    if (self.invertSwitch.isOn) {
        // Inverted:
        self.view.backgroundColor = self.color;
        self.navigationController.navigationBar.titleTextAttributes = @{ NSForegroundColorAttributeName : self.color };
        self.navigationController.navigationBar.tintColor = self.color;
        self.navigationController.navigationBar.barTintColor = self.blackWhiteColor;
        self.sliderLabel.textColor = self.blackWhiteColor;
        self.slider.tintColor = self.blackWhiteColor;
        self.switchLabel.textColor = self.blackWhiteColor;
        self.invertSwitch.onTintColor = self.blackWhiteColor;
        self.segment.tintColor = self.blackWhiteColor;
        self.tabBar.barTintColor = self.color;
        self.tabBar.tintColor = self.blackWhiteColor;
    }
    else {
        // Normal:
        self.view.backgroundColor = self.blackWhiteColor;
        self.navigationController.navigationBar.titleTextAttributes = @{ NSForegroundColorAttributeName : self.blackWhiteColor };
        self.navigationController.navigationBar.tintColor = self.blackWhiteColor;
        self.navigationController.navigationBar.barTintColor = self.color;
        self.sliderLabel.textColor = self.color;
        self.slider.tintColor = self.color;
        self.switchLabel.textColor = self.color;
        self.invertSwitch.onTintColor = self.color;
        self.segment.tintColor = self.color;
        self.tabBar.barTintColor = self.blackWhiteColor;
        self.tabBar.tintColor = self.color;
    }
}


#pragma mark - Action Handlers
- (IBAction)donePressed:(id)sender
{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)brightnessChanged:(UISlider *)sender
{
    self.blackWhiteColor = [UIColor colorWithWhite:sender.value alpha:1.f];
    [self updateAllControlColors];
}

- (IBAction)colorsInverted:(UISwitch *)sender
{
    [self updateAllControlColors];
}

@end
