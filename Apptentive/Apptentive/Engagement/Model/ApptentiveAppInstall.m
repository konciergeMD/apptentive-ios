//
//  ApptentiveAppInstall.m
//  Apptentive
//
//  Created by Frank Schmitt on 7/13/17.
//  Copyright © 2017 Apptentive, Inc. All rights reserved.
//

#import "ApptentiveAppInstall.h"
#import "ApptentivePerson.h"
#import "ApptentiveDevice.h"
#import "ApptentiveSDK.h"
#import "ApptentiveAppRelease.h"


@implementation ApptentiveAppInstall

@synthesize token = _token;
@synthesize identifier = _identifier;

@synthesize person = _person;
@synthesize device = _device;
@synthesize SDK = _SDK;
@synthesize appRelease = _appRelease;

- (instancetype)initWithToken:(NSString *)token identifier:(NSString *)identifier {
	self = [super init];
	if (self) {
		_token = token;
		_identifier = identifier;

		_person = [[ApptentivePerson alloc] init];
		_device = [[ApptentiveDevice alloc] initWithCurrentDevice];
		_SDK = [[ApptentiveSDK alloc] initWithCurrentSDK];
		_appRelease = [[ApptentiveAppRelease alloc] initWithCurrentAppRelease];
	}
	return self;
}

@end
