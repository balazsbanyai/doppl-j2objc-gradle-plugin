//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComExampleHelloWorld")
#ifdef RESTRICT_ComExampleHelloWorld
#define INCLUDE_ALL_ComExampleHelloWorld 0
#else
#define INCLUDE_ALL_ComExampleHelloWorld 1
#endif
#undef RESTRICT_ComExampleHelloWorld

#if !defined (ComExampleHelloWorld_) && (INCLUDE_ALL_ComExampleHelloWorld || defined(INCLUDE_ComExampleHelloWorld))
#define ComExampleHelloWorld_

@interface ComExampleHelloWorld : NSObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)nameOfWorld;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ComExampleHelloWorld)

FOUNDATION_EXPORT void ComExampleHelloWorld_init(ComExampleHelloWorld *self);

FOUNDATION_EXPORT ComExampleHelloWorld *new_ComExampleHelloWorld_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComExampleHelloWorld *create_ComExampleHelloWorld_init();

FOUNDATION_EXPORT void ComExampleHelloWorld_initWithNSString_(ComExampleHelloWorld *self, NSString *nameOfWorld);

FOUNDATION_EXPORT ComExampleHelloWorld *new_ComExampleHelloWorld_initWithNSString_(NSString *nameOfWorld) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComExampleHelloWorld *create_ComExampleHelloWorld_initWithNSString_(NSString *nameOfWorld);

J2OBJC_TYPE_LITERAL_HEADER(ComExampleHelloWorld)

#endif

#pragma pop_macro("INCLUDE_ALL_ComExampleHelloWorld")