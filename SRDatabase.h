//  SRDatabase.h
//  Created by William Preston Harrison
//  preston@squarerootapps.com


@interface SRDatabase : NSObject

+ (id) sharedDatabase;

- (void) setNumberObject:(NSNumber *)number forKey:(NSString *)key;

- (void) setString:(NSString *)string forKey:(NSString *)key;

//  For objects without specific object types

- (void) setDatabaseObject:(id)object forKey:(NSString *) //syntax in order to not override setObject:forKey:

- (NSNumber *) numberObjectForKey:(NSString *)key;

- (NSString *) stringForKey:(NSString *)key;

- (id) databaseObjectForKey:(NSString *)key;

- (void) saveDatabase;

- (void) loadDatabase;

@end
