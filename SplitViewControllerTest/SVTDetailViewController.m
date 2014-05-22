//
// 詳細（SplitViewControllerの右側）用ViewController
//

#import "SVTDetailViewController.h"

@interface SVTDetailViewController ()

@property (strong, nonatomic) UIPopoverController *menuPopoverController;

@end

@implementation SVTDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
}

// 縦向きになるときに呼ばれる
- (void)splitViewController:(UISplitViewController *)svc
     willHideViewController:(UIViewController *)aViewController
          withBarButtonItem:(UIBarButtonItem *)barButtonItem
       forPopoverController:(UIPopoverController *)pc
{
    // UIBarButtonItemのタイトルを設定し、自分のNavigationItemの左ボタンに設定する
    barButtonItem.title = @"Menu";
    self.navigationItem.leftBarButtonItem = barButtonItem;
    self.menuPopoverController = pc;
}

// 横向きになるときに呼ばれる
- (void)splitViewController:(UISplitViewController *)svc
     willShowViewController:(UIViewController *)aViewController
  invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // UIBarButtonItemを削除
    self.navigationItem.leftBarButtonItem = nil;
    self.menuPopoverController = nil;
}

@end
