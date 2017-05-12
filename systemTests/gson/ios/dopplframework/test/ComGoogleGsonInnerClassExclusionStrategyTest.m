//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "ComGoogleGsonInnerClassExclusionStrategyTest.h"
#include "ComGoogleGsonInternalExcluder.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/reflect/Field.h"
#include "junit/framework/TestCase.h"

@interface ComGoogleGsonInnerClassExclusionStrategyTest () {
 @public
  ComGoogleGsonInternalExcluder *excluder_;
}

@end

J2OBJC_FIELD_SETTER(ComGoogleGsonInnerClassExclusionStrategyTest, excluder_, ComGoogleGsonInternalExcluder *)

@implementation ComGoogleGsonInnerClassExclusionStrategyTest

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonInnerClassExclusionStrategyTest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)testExcludeInnerClassObject {
  IOSClass *clazz = [((ComGoogleGsonInnerClassExclusionStrategyTest_InnerClass *) nil_chk(innerClass_)) java_getClass];
  JunitFrameworkTestCase_assertTrueWithBoolean_([((ComGoogleGsonInternalExcluder *) nil_chk(excluder_)) excludeClassWithIOSClass:clazz withBoolean:true]);
}

- (void)testExcludeInnerClassField {
  JavaLangReflectField *f = [[self java_getClass] getField:@"innerClass"];
  JunitFrameworkTestCase_assertTrueWithBoolean_([((ComGoogleGsonInternalExcluder *) nil_chk(excluder_)) excludeFieldWithJavaLangReflectField:f withBoolean:true]);
}

- (void)testIncludeStaticNestedClassObject {
  IOSClass *clazz = [((ComGoogleGsonInnerClassExclusionStrategyTest_StaticNestedClass *) nil_chk(staticNestedClass_)) java_getClass];
  JunitFrameworkTestCase_assertFalseWithBoolean_([((ComGoogleGsonInternalExcluder *) nil_chk(excluder_)) excludeClassWithIOSClass:clazz withBoolean:true]);
}

- (void)testIncludeStaticNestedClassField {
  JavaLangReflectField *f = [[self java_getClass] getField:@"staticNestedClass"];
  JunitFrameworkTestCase_assertFalseWithBoolean_([((ComGoogleGsonInternalExcluder *) nil_chk(excluder_)) excludeFieldWithJavaLangReflectField:f withBoolean:true]);
}

- (void)dealloc {
  RELEASE_(innerClass_);
  RELEASE_(staticNestedClass_);
  RELEASE_(excluder_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(testExcludeInnerClassObject);
  methods[2].selector = @selector(testExcludeInnerClassField);
  methods[3].selector = @selector(testIncludeStaticNestedClassObject);
  methods[4].selector = @selector(testIncludeStaticNestedClassField);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "innerClass_", "LComGoogleGsonInnerClassExclusionStrategyTest_InnerClass;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "staticNestedClass_", "LComGoogleGsonInnerClassExclusionStrategyTest_StaticNestedClass;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "excluder_", "LComGoogleGsonInternalExcluder;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaLangException;", "LComGoogleGsonInnerClassExclusionStrategyTest_InnerClass;LComGoogleGsonInnerClassExclusionStrategyTest_StaticNestedClass;" };
  static const J2ObjcClassInfo _ComGoogleGsonInnerClassExclusionStrategyTest = { "InnerClassExclusionStrategyTest", "com.google.gson", ptrTable, methods, fields, 7, 0x1, 5, 3, -1, 1, -1, -1, -1 };
  return &_ComGoogleGsonInnerClassExclusionStrategyTest;
}

@end

void ComGoogleGsonInnerClassExclusionStrategyTest_init(ComGoogleGsonInnerClassExclusionStrategyTest *self) {
  JunitFrameworkTestCase_init(self);
  JreStrongAssignAndConsume(&self->innerClass_, new_ComGoogleGsonInnerClassExclusionStrategyTest_InnerClass_initWithComGoogleGsonInnerClassExclusionStrategyTest_(self));
  JreStrongAssignAndConsume(&self->staticNestedClass_, new_ComGoogleGsonInnerClassExclusionStrategyTest_StaticNestedClass_init());
  JreStrongAssign(&self->excluder_, [((ComGoogleGsonInternalExcluder *) nil_chk(JreLoadStatic(ComGoogleGsonInternalExcluder, DEFAULT))) disableInnerClassSerialization]);
}

ComGoogleGsonInnerClassExclusionStrategyTest *new_ComGoogleGsonInnerClassExclusionStrategyTest_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonInnerClassExclusionStrategyTest, init)
}

ComGoogleGsonInnerClassExclusionStrategyTest *create_ComGoogleGsonInnerClassExclusionStrategyTest_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonInnerClassExclusionStrategyTest, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInnerClassExclusionStrategyTest)

@implementation ComGoogleGsonInnerClassExclusionStrategyTest_InnerClass

- (instancetype)initWithComGoogleGsonInnerClassExclusionStrategyTest:(ComGoogleGsonInnerClassExclusionStrategyTest *)outer$ {
  ComGoogleGsonInnerClassExclusionStrategyTest_InnerClass_initWithComGoogleGsonInnerClassExclusionStrategyTest_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleGsonInnerClassExclusionStrategyTest:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LComGoogleGsonInnerClassExclusionStrategyTest;" };
  static const J2ObjcClassInfo _ComGoogleGsonInnerClassExclusionStrategyTest_InnerClass = { "InnerClass", "com.google.gson", ptrTable, methods, NULL, 7, 0x0, 1, 0, 0, -1, -1, -1, -1 };
  return &_ComGoogleGsonInnerClassExclusionStrategyTest_InnerClass;
}

@end

void ComGoogleGsonInnerClassExclusionStrategyTest_InnerClass_initWithComGoogleGsonInnerClassExclusionStrategyTest_(ComGoogleGsonInnerClassExclusionStrategyTest_InnerClass *self, ComGoogleGsonInnerClassExclusionStrategyTest *outer$) {
  NSObject_init(self);
}

ComGoogleGsonInnerClassExclusionStrategyTest_InnerClass *new_ComGoogleGsonInnerClassExclusionStrategyTest_InnerClass_initWithComGoogleGsonInnerClassExclusionStrategyTest_(ComGoogleGsonInnerClassExclusionStrategyTest *outer$) {
  J2OBJC_NEW_IMPL(ComGoogleGsonInnerClassExclusionStrategyTest_InnerClass, initWithComGoogleGsonInnerClassExclusionStrategyTest_, outer$)
}

ComGoogleGsonInnerClassExclusionStrategyTest_InnerClass *create_ComGoogleGsonInnerClassExclusionStrategyTest_InnerClass_initWithComGoogleGsonInnerClassExclusionStrategyTest_(ComGoogleGsonInnerClassExclusionStrategyTest *outer$) {
  J2OBJC_CREATE_IMPL(ComGoogleGsonInnerClassExclusionStrategyTest_InnerClass, initWithComGoogleGsonInnerClassExclusionStrategyTest_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInnerClassExclusionStrategyTest_InnerClass)

@implementation ComGoogleGsonInnerClassExclusionStrategyTest_StaticNestedClass

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonInnerClassExclusionStrategyTest_StaticNestedClass_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LComGoogleGsonInnerClassExclusionStrategyTest;" };
  static const J2ObjcClassInfo _ComGoogleGsonInnerClassExclusionStrategyTest_StaticNestedClass = { "StaticNestedClass", "com.google.gson", ptrTable, methods, NULL, 7, 0x8, 1, 0, 0, -1, -1, -1, -1 };
  return &_ComGoogleGsonInnerClassExclusionStrategyTest_StaticNestedClass;
}

@end

void ComGoogleGsonInnerClassExclusionStrategyTest_StaticNestedClass_init(ComGoogleGsonInnerClassExclusionStrategyTest_StaticNestedClass *self) {
  NSObject_init(self);
}

ComGoogleGsonInnerClassExclusionStrategyTest_StaticNestedClass *new_ComGoogleGsonInnerClassExclusionStrategyTest_StaticNestedClass_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonInnerClassExclusionStrategyTest_StaticNestedClass, init)
}

ComGoogleGsonInnerClassExclusionStrategyTest_StaticNestedClass *create_ComGoogleGsonInnerClassExclusionStrategyTest_StaticNestedClass_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonInnerClassExclusionStrategyTest_StaticNestedClass, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInnerClassExclusionStrategyTest_StaticNestedClass)