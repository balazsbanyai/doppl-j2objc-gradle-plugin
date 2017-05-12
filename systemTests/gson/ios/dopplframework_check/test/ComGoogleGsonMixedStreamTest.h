//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleGsonMixedStreamTest")
#ifdef RESTRICT_ComGoogleGsonMixedStreamTest
#define INCLUDE_ALL_ComGoogleGsonMixedStreamTest 0
#else
#define INCLUDE_ALL_ComGoogleGsonMixedStreamTest 1
#endif
#undef RESTRICT_ComGoogleGsonMixedStreamTest

#if !defined (ComGoogleGsonMixedStreamTest_) && (INCLUDE_ALL_ComGoogleGsonMixedStreamTest || defined(INCLUDE_ComGoogleGsonMixedStreamTest))
#define ComGoogleGsonMixedStreamTest_

#define RESTRICT_JunitFrameworkTestCase 1
#define INCLUDE_JunitFrameworkTestCase 1
#include "junit/framework/TestCase.h"

@interface ComGoogleGsonMixedStreamTest : JunitFrameworkTestCase

#pragma mark Public

- (instancetype)init;

- (void)testReadClosed;

- (void)testReaderDoesNotMutateState;

- (void)testReadInvalidState;

- (void)testReadMixedStreamed;

- (void)testReadNulls;

- (void)testWriteClosed;

- (void)testWriteDoesNotMutateState;

- (void)testWriteHtmlSafe;

- (void)testWriteInvalidState;

- (void)testWriteLenient;

- (void)testWriteMixedStreamed;

- (void)testWriteNulls;

@end

J2OBJC_STATIC_INIT(ComGoogleGsonMixedStreamTest)

FOUNDATION_EXPORT void ComGoogleGsonMixedStreamTest_init(ComGoogleGsonMixedStreamTest *self);

FOUNDATION_EXPORT ComGoogleGsonMixedStreamTest *new_ComGoogleGsonMixedStreamTest_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonMixedStreamTest *create_ComGoogleGsonMixedStreamTest_init();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonMixedStreamTest)

#endif

#if !defined (ComGoogleGsonMixedStreamTest_Car_) && (INCLUDE_ALL_ComGoogleGsonMixedStreamTest || defined(INCLUDE_ComGoogleGsonMixedStreamTest_Car))
#define ComGoogleGsonMixedStreamTest_Car_

@interface ComGoogleGsonMixedStreamTest_Car : NSObject {
 @public
  NSString *name_;
  jint color_;
}

#pragma mark Public

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

#pragma mark Package-Private

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)name
                         withInt:(jint)color;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonMixedStreamTest_Car)

J2OBJC_FIELD_SETTER(ComGoogleGsonMixedStreamTest_Car, name_, NSString *)

FOUNDATION_EXPORT void ComGoogleGsonMixedStreamTest_Car_initWithNSString_withInt_(ComGoogleGsonMixedStreamTest_Car *self, NSString *name, jint color);

FOUNDATION_EXPORT ComGoogleGsonMixedStreamTest_Car *new_ComGoogleGsonMixedStreamTest_Car_initWithNSString_withInt_(NSString *name, jint color) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonMixedStreamTest_Car *create_ComGoogleGsonMixedStreamTest_Car_initWithNSString_withInt_(NSString *name, jint color);

FOUNDATION_EXPORT void ComGoogleGsonMixedStreamTest_Car_init(ComGoogleGsonMixedStreamTest_Car *self);

FOUNDATION_EXPORT ComGoogleGsonMixedStreamTest_Car *new_ComGoogleGsonMixedStreamTest_Car_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonMixedStreamTest_Car *create_ComGoogleGsonMixedStreamTest_Car_init();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonMixedStreamTest_Car)

#endif

#pragma pop_macro("INCLUDE_ALL_ComGoogleGsonMixedStreamTest")