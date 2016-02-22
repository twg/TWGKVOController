@import Foundation;

typedef void (^TWGKVONotificationBlock)(id object, NSDictionary *change);

@interface TWGKVOController : NSObject

/**
 *  Observes a given object's properties using key-value observering
 *
 *  NOTE: A controller can only observe one object at a time. Secondary calls
 *  will silently be ignored
 *
 *  @param object   The object to observe
 *  @param keypaths The keypaths to observe on the object
 *  @param block    The block to execute when the KVO notifications are received
 */

- (void)observe:(id)object keyPaths:(NSArray *)keypaths block:(TWGKVONotificationBlock)block;

@end
