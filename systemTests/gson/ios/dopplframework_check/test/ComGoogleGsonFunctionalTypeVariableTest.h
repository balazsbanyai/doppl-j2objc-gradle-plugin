//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleGsonFunctionalTypeVariableTest")
#ifdef RESTRICT_ComGoogleGsonFunctionalTypeVariableTest
#define INCLUDE_ALL_ComGoogleGsonFunctionalTypeVariableTest 0
#else
#define INCLUDE_ALL_ComGoogleGsonFunctionalTypeVariableTest 1
#endif
#undef RESTRICT_ComGoogleGsonFunctionalTypeVariableTest
#ifdef INCLUDE_ComGoogleGsonFunctionalTypeVariableTest_Bar
#define INCLUDE_ComGoogleGsonFunctionalTypeVariableTest_Foo 1
#endif
#ifdef INCLUDE_ComGoogleGsonFunctionalTypeVariableTest_Foo
#define INCLUDE_ComGoogleGsonFunctionalTypeVariableTest_Red 1
#endif
#ifdef INCLUDE_ComGoogleGsonFunctionalTypeVariableTest_Blue
#define INCLUDE_ComGoogleGsonFunctionalTypeVariableTest_Red 1
#endif

#if !defined (ComGoogleGsonFunctionalTypeVariableTest_) && (INCLUDE_ALL_ComGoogleGsonFunctionalTypeVariableTest || defined(INCLUDE_ComGoogleGsonFunctionalTypeVariableTest))
#define ComGoogleGsonFunctionalTypeVariableTest_

#define RESTRICT_JunitFrameworkTestCase 1
#define INCLUDE_JunitFrameworkTestCase 1
#include "junit/framework/TestCase.h"

@interface ComGoogleGsonFunctionalTypeVariableTest : JunitFrameworkTestCase

#pragma mark Public

- (instancetype)init;

- (void)testAdvancedTypeVariables;

- (void)testBasicTypeVariables;

- (void)testTypeVariablesViaTypeParameter;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonFunctionalTypeVariableTest)

FOUNDATION_EXPORT void ComGoogleGsonFunctionalTypeVariableTest_init(ComGoogleGsonFunctionalTypeVariableTest *self);

FOUNDATION_EXPORT ComGoogleGsonFunctionalTypeVariableTest *new_ComGoogleGsonFunctionalTypeVariableTest_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonFunctionalTypeVariableTest *create_ComGoogleGsonFunctionalTypeVariableTest_init();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonFunctionalTypeVariableTest)

#endif

#if !defined (ComGoogleGsonFunctionalTypeVariableTest_Red_) && (INCLUDE_ALL_ComGoogleGsonFunctionalTypeVariableTest || defined(INCLUDE_ComGoogleGsonFunctionalTypeVariableTest_Red))
#define ComGoogleGsonFunctionalTypeVariableTest_Red_

@interface ComGoogleGsonFunctionalTypeVariableTest_Red : NSObject {
 @public
  id redField_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithId:(id)redField;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonFunctionalTypeVariableTest_Red)

J2OBJC_FIELD_SETTER(ComGoogleGsonFunctionalTypeVariableTest_Red, redField_, id)

FOUNDATION_EXPORT void ComGoogleGsonFunctionalTypeVariableTest_Red_init(ComGoogleGsonFunctionalTypeVariableTest_Red *self);

FOUNDATION_EXPORT ComGoogleGsonFunctionalTypeVariableTest_Red *new_ComGoogleGsonFunctionalTypeVariableTest_Red_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonFunctionalTypeVariableTest_Red *create_ComGoogleGsonFunctionalTypeVariableTest_Red_init();

FOUNDATION_EXPORT void ComGoogleGsonFunctionalTypeVariableTest_Red_initWithId_(ComGoogleGsonFunctionalTypeVariableTest_Red *self, id redField);

FOUNDATION_EXPORT ComGoogleGsonFunctionalTypeVariableTest_Red *new_ComGoogleGsonFunctionalTypeVariableTest_Red_initWithId_(id redField) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonFunctionalTypeVariableTest_Red *create_ComGoogleGsonFunctionalTypeVariableTest_Red_initWithId_(id redField);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonFunctionalTypeVariableTest_Red)

#endif

#if !defined (ComGoogleGsonFunctionalTypeVariableTest_Blue_) && (INCLUDE_ALL_ComGoogleGsonFunctionalTypeVariableTest || defined(INCLUDE_ComGoogleGsonFunctionalTypeVariableTest_Blue))
#define ComGoogleGsonFunctionalTypeVariableTest_Blue_

@interface ComGoogleGsonFunctionalTypeVariableTest_Blue : ComGoogleGsonFunctionalTypeVariableTest_Red

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithBoolean:(jboolean)value;

- (jboolean)isEqual:(id)o;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonFunctionalTypeVariableTest_Blue)

FOUNDATION_EXPORT void ComGoogleGsonFunctionalTypeVariableTest_Blue_init(ComGoogleGsonFunctionalTypeVariableTest_Blue *self);

FOUNDATION_EXPORT ComGoogleGsonFunctionalTypeVariableTest_Blue *new_ComGoogleGsonFunctionalTypeVariableTest_Blue_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonFunctionalTypeVariableTest_Blue *create_ComGoogleGsonFunctionalTypeVariableTest_Blue_init();

FOUNDATION_EXPORT void ComGoogleGsonFunctionalTypeVariableTest_Blue_initWithBoolean_(ComGoogleGsonFunctionalTypeVariableTest_Blue *self, jboolean value);

FOUNDATION_EXPORT ComGoogleGsonFunctionalTypeVariableTest_Blue *new_ComGoogleGsonFunctionalTypeVariableTest_Blue_initWithBoolean_(jboolean value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonFunctionalTypeVariableTest_Blue *create_ComGoogleGsonFunctionalTypeVariableTest_Blue_initWithBoolean_(jboolean value);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonFunctionalTypeVariableTest_Blue)

#endif

#if !defined (ComGoogleGsonFunctionalTypeVariableTest_Foo_) && (INCLUDE_ALL_ComGoogleGsonFunctionalTypeVariableTest || defined(INCLUDE_ComGoogleGsonFunctionalTypeVariableTest_Foo))
#define ComGoogleGsonFunctionalTypeVariableTest_Foo_

@class JavaLangBoolean;
@protocol JavaUtilMap;

@interface ComGoogleGsonFunctionalTypeVariableTest_Foo : ComGoogleGsonFunctionalTypeVariableTest_Red {
 @public
  id<JavaUtilMap> map_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithId:(id)sValue
                    withId:(id)tValue
       withJavaLangBoolean:(JavaLangBoolean *)redField;

- (jboolean)isEqual:(id)o;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonFunctionalTypeVariableTest_Foo)

J2OBJC_FIELD_SETTER(ComGoogleGsonFunctionalTypeVariableTest_Foo, map_, id<JavaUtilMap>)

FOUNDATION_EXPORT void ComGoogleGsonFunctionalTypeVariableTest_Foo_init(ComGoogleGsonFunctionalTypeVariableTest_Foo *self);

FOUNDATION_EXPORT ComGoogleGsonFunctionalTypeVariableTest_Foo *new_ComGoogleGsonFunctionalTypeVariableTest_Foo_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonFunctionalTypeVariableTest_Foo *create_ComGoogleGsonFunctionalTypeVariableTest_Foo_init();

FOUNDATION_EXPORT void ComGoogleGsonFunctionalTypeVariableTest_Foo_initWithId_withId_withJavaLangBoolean_(ComGoogleGsonFunctionalTypeVariableTest_Foo *self, id sValue, id tValue, JavaLangBoolean *redField);

FOUNDATION_EXPORT ComGoogleGsonFunctionalTypeVariableTest_Foo *new_ComGoogleGsonFunctionalTypeVariableTest_Foo_initWithId_withId_withJavaLangBoolean_(id sValue, id tValue, JavaLangBoolean *redField) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonFunctionalTypeVariableTest_Foo *create_ComGoogleGsonFunctionalTypeVariableTest_Foo_initWithId_withId_withJavaLangBoolean_(id sValue, id tValue, JavaLangBoolean *redField);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonFunctionalTypeVariableTest_Foo)

#endif

#if !defined (ComGoogleGsonFunctionalTypeVariableTest_Bar_) && (INCLUDE_ALL_ComGoogleGsonFunctionalTypeVariableTest || defined(INCLUDE_ComGoogleGsonFunctionalTypeVariableTest_Bar))
#define ComGoogleGsonFunctionalTypeVariableTest_Bar_

@class JavaLangInteger;

@interface ComGoogleGsonFunctionalTypeVariableTest_Bar : ComGoogleGsonFunctionalTypeVariableTest_Foo

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)s
             withJavaLangInteger:(JavaLangInteger *)i
                     withBoolean:(jboolean)b;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonFunctionalTypeVariableTest_Bar)

FOUNDATION_EXPORT void ComGoogleGsonFunctionalTypeVariableTest_Bar_init(ComGoogleGsonFunctionalTypeVariableTest_Bar *self);

FOUNDATION_EXPORT ComGoogleGsonFunctionalTypeVariableTest_Bar *new_ComGoogleGsonFunctionalTypeVariableTest_Bar_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonFunctionalTypeVariableTest_Bar *create_ComGoogleGsonFunctionalTypeVariableTest_Bar_init();

FOUNDATION_EXPORT void ComGoogleGsonFunctionalTypeVariableTest_Bar_initWithNSString_withJavaLangInteger_withBoolean_(ComGoogleGsonFunctionalTypeVariableTest_Bar *self, NSString *s, JavaLangInteger *i, jboolean b);

FOUNDATION_EXPORT ComGoogleGsonFunctionalTypeVariableTest_Bar *new_ComGoogleGsonFunctionalTypeVariableTest_Bar_initWithNSString_withJavaLangInteger_withBoolean_(NSString *s, JavaLangInteger *i, jboolean b) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonFunctionalTypeVariableTest_Bar *create_ComGoogleGsonFunctionalTypeVariableTest_Bar_initWithNSString_withJavaLangInteger_withBoolean_(NSString *s, JavaLangInteger *i, jboolean b);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonFunctionalTypeVariableTest_Bar)

#endif

#pragma pop_macro("INCLUDE_ALL_ComGoogleGsonFunctionalTypeVariableTest")
