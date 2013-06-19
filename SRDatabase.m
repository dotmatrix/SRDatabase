//  SRDatabase.m
//  Created by William Preston Harrison
//  preston@squarerootapps.com

@implementation SRDatabase

static SRDatabase *sharedDatabase = nil;

+ (id) sharedDatabase
{
    static dispatch_once_t dispatch;
        dispatch_once(&dispatch, ^{
            if (sharedDatabase == nil)
                sharedDatabase = [[self alloc] init];
        });
    return sharedDatabase;
}

