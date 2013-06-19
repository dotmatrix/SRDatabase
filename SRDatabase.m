//  SRDatabase.m
//  Created by William Preston Harrison
//  preston@squarerootapps.com

#define DATABASE_CAPACITY 100 //number of objects that can be stored in the database (changeable)
#define APPLICATION_KEY   @"adfiu3nag8323hgfa" //doesn't matter what it is, as long as it's constant

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

- (void) setNumberObject:(NSNumber *)number forKey:(NSString *)key
{
    [settings setObject:number forKey:key];
}

- (void) setString:(NSString *)string forKey:(NSString *)key
{
    [settings setObject:string forKey:key];
}

- (void) setDatabaseObject:(id)object forKey:(NSString *)key
{
    [settings setObject:object forKey:key];
}

- (NSNumber *) numberObjectForKey:(NSString *)key
{
    return [settings objectForKey:key];
}

- (NSString *) stringForKey:(NSString *)key
{
    return [settings objectForKey:key];
}

- (id) databaseObjectForKey:(NSString *)key
{
    return [settings objectForKey:key];
}

- (void) saveDatabase
{
    [[NSUserDefaults standardUserDefaults] setObject:settings forKey:APPLICATION_KEY];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void) loadDatabase
{
    [settings addEntriesFromDictionary:[[NSUserDefaults standardUserDefaults] objectForKey:APPLICATION_KEY]];
}

- (id) init
{
    settings = [[NSMutableDictionary alloc] initWithCapacity:DATABASE_CAPACITY];
}

@end

