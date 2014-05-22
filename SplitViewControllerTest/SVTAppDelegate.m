
#import "SVTAppDelegate.h"

#import "SVTMenuViewController.h"
#import "SVTDetailViewController.h"

@implementation SVTAppDelegate

- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // windowの生成
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    // SplitViewControllerを生成
    UISplitViewController *splitViewController = [[UISplitViewController alloc] init];
    
    // メニュー用ViewControllerの生成
    SVTMenuViewController *menuViewController        = [[SVTMenuViewController alloc] init];
    UINavigationController *menuNavigationController = [[UINavigationController alloc] initWithRootViewController:menuViewController];
    
    // 詳細用ViewControllerの生成
    SVTDetailViewController *detailViewController = [[SVTDetailViewController alloc] init];
    UINavigationController  *detailNavigationController = [[UINavigationController alloc] initWithRootViewController:detailViewController];
    
    // SplitViewControllerのデリゲート先をdetailViewControllerに設定
    splitViewController.delegate = detailViewController;
    
    // 生成したふたつのViewControllerをそれぞれ左から設定する
    [splitViewController addChildViewController:menuNavigationController];
    [splitViewController addChildViewController:detailNavigationController];
    
    // windowのrootViewControllerとしてSplitViewControllerを設定
    self.window.rootViewController = splitViewController;
    
    // 内容を表示
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
