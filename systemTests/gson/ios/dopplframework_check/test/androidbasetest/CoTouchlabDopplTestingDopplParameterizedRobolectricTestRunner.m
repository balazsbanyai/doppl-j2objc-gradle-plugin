//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel-doppl/core-doppl/androidbasetest/src/main/java/co/touchlab/doppl/testing/DopplParameterizedRobolectricTestRunner.java
//

#include "AndroidAppApplication.h"
#include "CoTouchlabDopplTestingDopplParameterizedRobolectricTestRunner.h"
#include "CoTouchlabDopplTestingDopplRuntimeEnvironment.h"
#include "CoTouchlabDopplTestingTestingContext.h"
#include "CoTouchlabDopplUtilsPlatformUtils.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/File.h"
#include "java/lang/System.h"
#include "org/junit/runners/Parameterized.h"

@implementation CoTouchlabDopplTestingDopplParameterizedRobolectricTestRunner

- (instancetype)initWithIOSClass:(IOSClass *)klass {
  CoTouchlabDopplTestingDopplParameterizedRobolectricTestRunner_initWithIOSClass_(self, klass);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, 2, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithIOSClass:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LIOSClass;", "LNSException;", "(Ljava/lang/Class<*>;)V" };
  static const J2ObjcClassInfo _CoTouchlabDopplTestingDopplParameterizedRobolectricTestRunner = { "DopplParameterizedRobolectricTestRunner", "co.touchlab.doppl.testing", ptrTable, methods, NULL, 7, 0x1, 1, 0, -1, -1, -1, -1, -1 };
  return &_CoTouchlabDopplTestingDopplParameterizedRobolectricTestRunner;
}

@end

void CoTouchlabDopplTestingDopplParameterizedRobolectricTestRunner_initWithIOSClass_(CoTouchlabDopplTestingDopplParameterizedRobolectricTestRunner *self, IOSClass *klass) {
  OrgJunitRunnersParameterized_initWithIOSClass_(self, klass);
  if (CoTouchlabDopplUtilsPlatformUtils_isJ2objc()) {
    JavaIoFile *rootDir = create_JavaIoFile_initWithNSString_(JreStrcat("$J", @"/Users/kgalligan/temp/test_", JavaLangSystem_currentTimeMillis()));
    [rootDir mkdirs];
    JreStrongAssignAndConsume(JreLoadStaticRef(CoTouchlabDopplTestingDopplRuntimeEnvironment, application), new_CoTouchlabDopplTestingTestingContext_initWithJavaIoFile_(rootDir));
  }
}

CoTouchlabDopplTestingDopplParameterizedRobolectricTestRunner *new_CoTouchlabDopplTestingDopplParameterizedRobolectricTestRunner_initWithIOSClass_(IOSClass *klass) {
  J2OBJC_NEW_IMPL(CoTouchlabDopplTestingDopplParameterizedRobolectricTestRunner, initWithIOSClass_, klass)
}

CoTouchlabDopplTestingDopplParameterizedRobolectricTestRunner *create_CoTouchlabDopplTestingDopplParameterizedRobolectricTestRunner_initWithIOSClass_(IOSClass *klass) {
  J2OBJC_CREATE_IMPL(CoTouchlabDopplTestingDopplParameterizedRobolectricTestRunner, initWithIOSClass_, klass)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(CoTouchlabDopplTestingDopplParameterizedRobolectricTestRunner)
