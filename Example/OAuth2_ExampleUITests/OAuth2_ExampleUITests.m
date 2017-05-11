//
//  OAuth2_ExampleUITests.m
//  OAuth2_ExampleUITests
//
//  Created by Trong_iOS on 5/5/17.
//  Copyright © 2017 Trong Dinh. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface OAuth2_ExampleUITests : XCTestCase

@end

@implementation OAuth2_ExampleUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testFitbitEmailAndPwdShouldBeExists {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.tables.staticTexts[@"fitbit"] tap];
    
    XCUIElementQuery *webViewsQuery = app.webViews;
    XCUIElement *emailTextField = webViewsQuery.textFields[@"Email"];
    
    NSPredicate *exists = [NSPredicate predicateWithFormat:@"exists == 1"];
    [self expectationForPredicate:exists evaluatedWithObject:emailTextField handler:nil];
    [self waitForExpectationsWithTimeout:10 handler:nil];
    
    XCTAssert(emailTextField.exists);
    
    XCUIElement *passwordSecureTextField = webViewsQuery.secureTextFields[@"Password"];
    [self expectationForPredicate:exists evaluatedWithObject:passwordSecureTextField handler:nil];
    [self waitForExpectationsWithTimeout:10 handler:nil];
    
    XCTAssert(passwordSecureTextField.exists);
    
    XCUIElement *btnCancel = app.navigationBars[@"Authorize"].buttons[@"Cancel"];
    XCTAssertNotNil(btnCancel);
    
}

- (void)testLifxEmailAndPwdShouldBeExists {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.tables.staticTexts[@"lifx"] tap];
    
    XCUIElementQuery *webViewsQuery = app.webViews;
    [webViewsQuery.staticTexts[@"Already set-up your LIFX? Sign in to your account to continue."] swipeUp];
    
    
    XCUIElement *lifxCloudElement = webViewsQuery.otherElements[@"LIFX Cloud"];
    XCUIElement *textField = [lifxCloudElement childrenMatchingType:XCUIElementTypeTextField].element;
    NSPredicate *exists = [NSPredicate predicateWithFormat:@"exists == 1"];
    [self expectationForPredicate:exists evaluatedWithObject:textField handler:nil];
    [self waitForExpectationsWithTimeout:10 handler:nil];
    [textField tap];

    XCUIElement *secureTextField = [lifxCloudElement childrenMatchingType:XCUIElementTypeSecureTextField].element;
    [self expectationForPredicate:exists evaluatedWithObject:secureTextField handler:nil];
    [self waitForExpectationsWithTimeout:10 handler:nil];
    [secureTextField tap];
    
    XCTAssert(textField.exists);
    XCTAssert(secureTextField.exists);
    
    XCUIElement *btnCancel = app.navigationBars[@"Authorize"].buttons[@"Cancel"];
    XCTAssertNotNil(btnCancel);

}

@end
