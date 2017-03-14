//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "CoTouchlabDopplUtilsPlatformUtils.h"
#include "ComGoogleGsonInternalUnsafeAllocator.h"
#include "ComGoogleGsonInternalUnsafeAllocatorInstantiationTest.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "java/lang/reflect/InvocationTargetException.h"
#include "junit/framework/TestCase.h"

@interface ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_Interface : NSObject

@end

@implementation ComGoogleGsonInternalUnsafeAllocatorInstantiationTest

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)testInterfaceInstantiation {
  if (CoTouchlabDopplUtilsPlatformUtils_isJ2objc()) return;
  ComGoogleGsonInternalUnsafeAllocator *unsafeAllocator = ComGoogleGsonInternalUnsafeAllocator_create();
  @try {
    [((ComGoogleGsonInternalUnsafeAllocator *) nil_chk(unsafeAllocator)) newInstanceWithIOSClass:ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_Interface_class_()];
    JunitFrameworkTestCase_fail();
  }
  @catch (JavaLangException *e) {
    JunitFrameworkTestCase_assertEqualsWithId_withId_([((JavaLangException *) nil_chk(e)) java_getClass], JavaLangReflectInvocationTargetException_class_());
  }
}

- (void)testAbstractClassInstantiation {
  if (CoTouchlabDopplUtilsPlatformUtils_isJ2objc()) return;
  ComGoogleGsonInternalUnsafeAllocator *unsafeAllocator = ComGoogleGsonInternalUnsafeAllocator_create();
  @try {
    [((ComGoogleGsonInternalUnsafeAllocator *) nil_chk(unsafeAllocator)) newInstanceWithIOSClass:ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_AbstractClass_class_()];
    JunitFrameworkTestCase_fail();
  }
  @catch (JavaLangException *e) {
    JunitFrameworkTestCase_assertEqualsWithId_withId_([((JavaLangException *) nil_chk(e)) java_getClass], JavaLangReflectInvocationTargetException_class_());
  }
}

- (void)testConcreteClassInstantiation {
  ComGoogleGsonInternalUnsafeAllocator *unsafeAllocator = ComGoogleGsonInternalUnsafeAllocator_create();
  @try {
    [((ComGoogleGsonInternalUnsafeAllocator *) nil_chk(unsafeAllocator)) newInstanceWithIOSClass:ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_ConcreteClass_class_()];
  }
  @catch (JavaLangException *e) {
    JunitFrameworkTestCase_fail();
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(testInterfaceInstantiation);
  methods[2].selector = @selector(testAbstractClassInstantiation);
  methods[3].selector = @selector(testConcreteClassInstantiation);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LComGoogleGsonInternalUnsafeAllocatorInstantiationTest_Interface;LComGoogleGsonInternalUnsafeAllocatorInstantiationTest_AbstractClass;LComGoogleGsonInternalUnsafeAllocatorInstantiationTest_ConcreteClass;" };
  static const J2ObjcClassInfo _ComGoogleGsonInternalUnsafeAllocatorInstantiationTest = { "UnsafeAllocatorInstantiationTest", "com.google.gson.internal", ptrTable, methods, NULL, 7, 0x11, 4, 0, -1, 0, -1, -1, -1 };
  return &_ComGoogleGsonInternalUnsafeAllocatorInstantiationTest;
}

@end

void ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_init(ComGoogleGsonInternalUnsafeAllocatorInstantiationTest *self) {
  JunitFrameworkTestCase_init(self);
}

ComGoogleGsonInternalUnsafeAllocatorInstantiationTest *new_ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonInternalUnsafeAllocatorInstantiationTest, init)
}

ComGoogleGsonInternalUnsafeAllocatorInstantiationTest *create_ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonInternalUnsafeAllocatorInstantiationTest, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInternalUnsafeAllocatorInstantiationTest)

@implementation ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_Interface

+ (const J2ObjcClassInfo *)__metadata {
  static const void *ptrTable[] = { "LComGoogleGsonInternalUnsafeAllocatorInstantiationTest;" };
  static const J2ObjcClassInfo _ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_Interface = { "Interface", "com.google.gson.internal", ptrTable, NULL, NULL, 7, 0x609, 0, 0, 0, -1, -1, -1, -1 };
  return &_ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_Interface;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_Interface)

@implementation ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_AbstractClass

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_AbstractClass_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LComGoogleGsonInternalUnsafeAllocatorInstantiationTest;" };
  static const J2ObjcClassInfo _ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_AbstractClass = { "AbstractClass", "com.google.gson.internal", ptrTable, methods, NULL, 7, 0x409, 1, 0, 0, -1, -1, -1, -1 };
  return &_ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_AbstractClass;
}

@end

void ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_AbstractClass_init(ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_AbstractClass *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_AbstractClass)

@implementation ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_ConcreteClass

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_ConcreteClass_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LComGoogleGsonInternalUnsafeAllocatorInstantiationTest;" };
  static const J2ObjcClassInfo _ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_ConcreteClass = { "ConcreteClass", "com.google.gson.internal", ptrTable, methods, NULL, 7, 0x9, 1, 0, 0, -1, -1, -1, -1 };
  return &_ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_ConcreteClass;
}

@end

void ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_ConcreteClass_init(ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_ConcreteClass *self) {
  NSObject_init(self);
}

ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_ConcreteClass *new_ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_ConcreteClass_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_ConcreteClass, init)
}

ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_ConcreteClass *create_ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_ConcreteClass_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_ConcreteClass, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInternalUnsafeAllocatorInstantiationTest_ConcreteClass)
