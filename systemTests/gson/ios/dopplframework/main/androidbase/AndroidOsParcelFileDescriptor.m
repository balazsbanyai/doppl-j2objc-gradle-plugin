//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel-doppl/core-doppl/androidbase/src/main/java/android/os/ParcelFileDescriptor.java
//

#include "AndroidOsParcel.h"
#include "AndroidOsParcelFileDescriptor.h"
#include "AndroidOsParcelable.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/File.h"
#include "java/io/FileDescriptor.h"
#include "java/io/FileInputStream.h"
#include "java/io/FileOutputStream.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/SecurityManager.h"
#include "java/lang/System.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/net/Socket.h"

@interface AndroidOsParcelFileDescriptor () {
 @public
  JavaIoFileDescriptor *mFileDescriptor_;
  jboolean mClosed_;
  AndroidOsParcelFileDescriptor *mParcelDescriptor_;
}

+ (JavaIoFileDescriptor *)getFileDescriptorFromSocketWithJavaNetSocket:(JavaNetSocket *)socket;

+ (jint)createPipeNativeWithJavaIoFileDescriptorArray:(IOSObjectArray *)outFds;

@end

J2OBJC_FIELD_SETTER(AndroidOsParcelFileDescriptor, mFileDescriptor_, JavaIoFileDescriptor *)
J2OBJC_FIELD_SETTER(AndroidOsParcelFileDescriptor, mParcelDescriptor_, AndroidOsParcelFileDescriptor *)

__attribute__((unused)) static JavaIoFileDescriptor *AndroidOsParcelFileDescriptor_getFileDescriptorFromSocketWithJavaNetSocket_(JavaNetSocket *socket);

__attribute__((unused)) static jint AndroidOsParcelFileDescriptor_createPipeNativeWithJavaIoFileDescriptorArray_(IOSObjectArray *outFds);

@interface AndroidOsParcelFileDescriptor_AutoCloseInputStream () {
 @public
  AndroidOsParcelFileDescriptor *mFd_;
}

@end

J2OBJC_FIELD_SETTER(AndroidOsParcelFileDescriptor_AutoCloseInputStream, mFd_, AndroidOsParcelFileDescriptor *)

@interface AndroidOsParcelFileDescriptor_AutoCloseOutputStream () {
 @public
  AndroidOsParcelFileDescriptor *mFd_;
}

@end

J2OBJC_FIELD_SETTER(AndroidOsParcelFileDescriptor_AutoCloseOutputStream, mFd_, AndroidOsParcelFileDescriptor *)

@interface AndroidOsParcelFileDescriptor_1 : NSObject < AndroidOsParcelable_Creator >

- (instancetype)init;

- (AndroidOsParcelFileDescriptor *)createFromParcelWithAndroidOsParcel:(AndroidOsParcel *)inArg;

- (IOSObjectArray *)newArrayWithInt:(jint)size OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidOsParcelFileDescriptor_1)

__attribute__((unused)) static void AndroidOsParcelFileDescriptor_1_init(AndroidOsParcelFileDescriptor_1 *self);

__attribute__((unused)) static AndroidOsParcelFileDescriptor_1 *new_AndroidOsParcelFileDescriptor_1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static AndroidOsParcelFileDescriptor_1 *create_AndroidOsParcelFileDescriptor_1_init();

J2OBJC_INITIALIZED_DEFN(AndroidOsParcelFileDescriptor)

id<AndroidOsParcelable_Creator> AndroidOsParcelFileDescriptor_CREATOR;

@implementation AndroidOsParcelFileDescriptor

+ (AndroidOsParcelFileDescriptor *)openWithJavaIoFile:(JavaIoFile *)file
                                              withInt:(jint)mode {
  return AndroidOsParcelFileDescriptor_openWithJavaIoFile_withInt_(file, mode);
}

+ (AndroidOsParcelFileDescriptor *)fromSocketWithJavaNetSocket:(JavaNetSocket *)socket {
  return AndroidOsParcelFileDescriptor_fromSocketWithJavaNetSocket_(socket);
}

+ (JavaIoFileDescriptor *)getFileDescriptorFromSocketWithJavaNetSocket:(JavaNetSocket *)socket {
  return AndroidOsParcelFileDescriptor_getFileDescriptorFromSocketWithJavaNetSocket_(socket);
}

+ (IOSObjectArray *)createPipe {
  return AndroidOsParcelFileDescriptor_createPipe();
}

+ (jint)createPipeNativeWithJavaIoFileDescriptorArray:(IOSObjectArray *)outFds {
  return AndroidOsParcelFileDescriptor_createPipeNativeWithJavaIoFileDescriptorArray_(outFds);
}

- (JavaIoFileDescriptor *)getFileDescriptor {
  return mFileDescriptor_;
}

- (jlong)getStatSize {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (jlong)seekToWithLong:(jlong)pos {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (void)close {
  @synchronized(self) {
    if (mClosed_) return;
    mClosed_ = true;
  }
  if (mParcelDescriptor_ != nil) {
    [mParcelDescriptor_ close];
  }
  else {
    AndroidOsParcel_closeFileDescriptorWithJavaIoFileDescriptor_(mFileDescriptor_);
  }
}

- (NSString *)description {
  return JreStrcat("$@C", @"{ParcelFileDescriptor: ", mFileDescriptor_, '}');
}

- (void)java_finalize {
  @try {
    if (!mClosed_) {
      [self close];
    }
  }
  @finally {
    [super java_finalize];
  }
}

- (instancetype)initWithAndroidOsParcelFileDescriptor:(AndroidOsParcelFileDescriptor *)descriptor {
  AndroidOsParcelFileDescriptor_initWithAndroidOsParcelFileDescriptor_(self, descriptor);
  return self;
}

- (instancetype)initWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)descriptor {
  AndroidOsParcelFileDescriptor_initWithJavaIoFileDescriptor_(self, descriptor);
  return self;
}

- (jint)describeContents {
  return AndroidOsParcelable_CONTENTS_FILE_DESCRIPTOR;
}

- (void)writeToParcelWithAndroidOsParcel:(AndroidOsParcel *)outArg
                                 withInt:(jint)flags {
  [((AndroidOsParcel *) nil_chk(outArg)) writeFileDescriptorWithJavaIoFileDescriptor:mFileDescriptor_];
  if ((flags & AndroidOsParcelable_PARCELABLE_WRITE_RETURN_VALUE) != 0 && !mClosed_) {
    @try {
      [self close];
    }
    @catch (JavaIoIOException *e) {
    }
  }
}

- (void)dealloc {
  JreCheckFinalize(self, [AndroidOsParcelFileDescriptor class]);
  RELEASE_(mFileDescriptor_);
  RELEASE_(mParcelDescriptor_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LAndroidOsParcelFileDescriptor;", 0x9, 0, 1, 2, -1, -1, -1 },
    { NULL, "LAndroidOsParcelFileDescriptor;", 0x9, 3, 4, -1, -1, -1, -1 },
    { NULL, "LJavaIoFileDescriptor;", 0xa, 5, 4, -1, -1, -1, -1 },
    { NULL, "[LAndroidOsParcelFileDescriptor;", 0x9, -1, -1, 6, -1, -1, -1 },
    { NULL, "I", 0xa, 7, 8, -1, -1, -1, -1 },
    { NULL, "LJavaIoFileDescriptor;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 6, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 11, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 12, -1, 13, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 14, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 15, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 16, 17, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(openWithJavaIoFile:withInt:);
  methods[1].selector = @selector(fromSocketWithJavaNetSocket:);
  methods[2].selector = @selector(getFileDescriptorFromSocketWithJavaNetSocket:);
  methods[3].selector = @selector(createPipe);
  methods[4].selector = @selector(createPipeNativeWithJavaIoFileDescriptorArray:);
  methods[5].selector = @selector(getFileDescriptor);
  methods[6].selector = @selector(getStatSize);
  methods[7].selector = @selector(seekToWithLong:);
  methods[8].selector = @selector(close);
  methods[9].selector = @selector(description);
  methods[10].selector = @selector(java_finalize);
  methods[11].selector = @selector(initWithAndroidOsParcelFileDescriptor:);
  methods[12].selector = @selector(initWithJavaIoFileDescriptor:);
  methods[13].selector = @selector(describeContents);
  methods[14].selector = @selector(writeToParcelWithAndroidOsParcel:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mFileDescriptor_", "LJavaIoFileDescriptor;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "mClosed_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mParcelDescriptor_", "LAndroidOsParcelFileDescriptor;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "MODE_WORLD_READABLE", "I", .constantValue.asInt = AndroidOsParcelFileDescriptor_MODE_WORLD_READABLE, 0x19, -1, -1, -1, -1 },
    { "MODE_WORLD_WRITEABLE", "I", .constantValue.asInt = AndroidOsParcelFileDescriptor_MODE_WORLD_WRITEABLE, 0x19, -1, -1, -1, -1 },
    { "MODE_READ_ONLY", "I", .constantValue.asInt = AndroidOsParcelFileDescriptor_MODE_READ_ONLY, 0x19, -1, -1, -1, -1 },
    { "MODE_WRITE_ONLY", "I", .constantValue.asInt = AndroidOsParcelFileDescriptor_MODE_WRITE_ONLY, 0x19, -1, -1, -1, -1 },
    { "MODE_READ_WRITE", "I", .constantValue.asInt = AndroidOsParcelFileDescriptor_MODE_READ_WRITE, 0x19, -1, -1, -1, -1 },
    { "MODE_CREATE", "I", .constantValue.asInt = AndroidOsParcelFileDescriptor_MODE_CREATE, 0x19, -1, -1, -1, -1 },
    { "MODE_TRUNCATE", "I", .constantValue.asInt = AndroidOsParcelFileDescriptor_MODE_TRUNCATE, 0x19, -1, -1, -1, -1 },
    { "MODE_APPEND", "I", .constantValue.asInt = AndroidOsParcelFileDescriptor_MODE_APPEND, 0x19, -1, -1, -1, -1 },
    { "CREATOR", "LAndroidOsParcelable_Creator;", .constantValue.asLong = 0, 0x19, -1, 18, 19, -1 },
  };
  static const void *ptrTable[] = { "open", "LJavaIoFile;I", "LJavaIoFileNotFoundException;", "fromSocket", "LJavaNetSocket;", "getFileDescriptorFromSocket", "LJavaIoIOException;", "createPipeNative", "[LJavaIoFileDescriptor;", "seekTo", "J", "toString", "finalize", "LNSException;", "LAndroidOsParcelFileDescriptor;", "LJavaIoFileDescriptor;", "writeToParcel", "LAndroidOsParcel;I", &AndroidOsParcelFileDescriptor_CREATOR, "Landroid/os/Parcelable$Creator<Landroid/os/ParcelFileDescriptor;>;", "LAndroidOsParcelFileDescriptor_AutoCloseInputStream;LAndroidOsParcelFileDescriptor_AutoCloseOutputStream;" };
  static const J2ObjcClassInfo _AndroidOsParcelFileDescriptor = { "ParcelFileDescriptor", "android.os", ptrTable, methods, fields, 7, 0x1, 15, 12, -1, 20, -1, -1, -1 };
  return &_AndroidOsParcelFileDescriptor;
}

+ (void)initialize {
  if (self == [AndroidOsParcelFileDescriptor class]) {
    JreStrongAssignAndConsume(&AndroidOsParcelFileDescriptor_CREATOR, new_AndroidOsParcelFileDescriptor_1_init());
    J2OBJC_SET_INITIALIZED(AndroidOsParcelFileDescriptor)
  }
}

@end

AndroidOsParcelFileDescriptor *AndroidOsParcelFileDescriptor_openWithJavaIoFile_withInt_(JavaIoFile *file, jint mode) {
  AndroidOsParcelFileDescriptor_initialize();
  NSString *path = [((JavaIoFile *) nil_chk(file)) getPath];
  JavaLangSecurityManager *security = JavaLangSystem_getSecurityManager();
  if (security != nil) {
    [security checkReadWithNSString:path];
    if ((mode & AndroidOsParcelFileDescriptor_MODE_WRITE_ONLY) != 0) {
      [security checkWriteWithNSString:path];
    }
  }
  if ((mode & AndroidOsParcelFileDescriptor_MODE_READ_WRITE) == 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Must specify MODE_READ_ONLY, MODE_WRITE_ONLY, or MODE_READ_WRITE");
  }
  JavaIoFileDescriptor *fd = AndroidOsParcel_openFileDescriptorWithNSString_withInt_(path, mode);
  return fd != nil ? create_AndroidOsParcelFileDescriptor_initWithJavaIoFileDescriptor_(fd) : nil;
}

AndroidOsParcelFileDescriptor *AndroidOsParcelFileDescriptor_fromSocketWithJavaNetSocket_(JavaNetSocket *socket) {
  AndroidOsParcelFileDescriptor_initialize();
  JavaIoFileDescriptor *fd = AndroidOsParcelFileDescriptor_getFileDescriptorFromSocketWithJavaNetSocket_(socket);
  return fd != nil ? create_AndroidOsParcelFileDescriptor_initWithJavaIoFileDescriptor_(fd) : nil;
}

JavaIoFileDescriptor *AndroidOsParcelFileDescriptor_getFileDescriptorFromSocketWithJavaNetSocket_(JavaNetSocket *socket) {
  AndroidOsParcelFileDescriptor_initialize();
  @throw create_JavaLangUnsupportedOperationException_init();
}

IOSObjectArray *AndroidOsParcelFileDescriptor_createPipe() {
  AndroidOsParcelFileDescriptor_initialize();
  IOSObjectArray *fds = [IOSObjectArray arrayWithLength:2 type:JavaIoFileDescriptor_class_()];
  jint res = AndroidOsParcelFileDescriptor_createPipeNativeWithJavaIoFileDescriptorArray_(fds);
  if (res == 0) {
    IOSObjectArray *pfds = [IOSObjectArray arrayWithLength:2 type:AndroidOsParcelFileDescriptor_class_()];
    IOSObjectArray_SetAndConsume(pfds, 0, new_AndroidOsParcelFileDescriptor_initWithJavaIoFileDescriptor_(IOSObjectArray_Get(fds, 0)));
    IOSObjectArray_SetAndConsume(pfds, 1, new_AndroidOsParcelFileDescriptor_initWithJavaIoFileDescriptor_(IOSObjectArray_Get(fds, 1)));
    return pfds;
  }
  @throw create_JavaIoIOException_initWithNSString_(JreStrcat("$I", @"Unable to create pipe: errno=", -res));
}

jint AndroidOsParcelFileDescriptor_createPipeNativeWithJavaIoFileDescriptorArray_(IOSObjectArray *outFds) {
  AndroidOsParcelFileDescriptor_initialize();
  @throw create_JavaLangUnsupportedOperationException_init();
}

void AndroidOsParcelFileDescriptor_initWithAndroidOsParcelFileDescriptor_(AndroidOsParcelFileDescriptor *self, AndroidOsParcelFileDescriptor *descriptor) {
  NSObject_init(self);
  JreStrongAssign(&self->mParcelDescriptor_, descriptor);
  JreStrongAssign(&self->mFileDescriptor_, ((AndroidOsParcelFileDescriptor *) nil_chk(self->mParcelDescriptor_))->mFileDescriptor_);
}

AndroidOsParcelFileDescriptor *new_AndroidOsParcelFileDescriptor_initWithAndroidOsParcelFileDescriptor_(AndroidOsParcelFileDescriptor *descriptor) {
  J2OBJC_NEW_IMPL(AndroidOsParcelFileDescriptor, initWithAndroidOsParcelFileDescriptor_, descriptor)
}

AndroidOsParcelFileDescriptor *create_AndroidOsParcelFileDescriptor_initWithAndroidOsParcelFileDescriptor_(AndroidOsParcelFileDescriptor *descriptor) {
  J2OBJC_CREATE_IMPL(AndroidOsParcelFileDescriptor, initWithAndroidOsParcelFileDescriptor_, descriptor)
}

void AndroidOsParcelFileDescriptor_initWithJavaIoFileDescriptor_(AndroidOsParcelFileDescriptor *self, JavaIoFileDescriptor *descriptor) {
  NSObject_init(self);
  if (descriptor == nil) {
    @throw create_JavaLangNullPointerException_initWithNSString_(@"descriptor must not be null");
  }
  JreStrongAssign(&self->mFileDescriptor_, descriptor);
  JreStrongAssign(&self->mParcelDescriptor_, nil);
}

AndroidOsParcelFileDescriptor *new_AndroidOsParcelFileDescriptor_initWithJavaIoFileDescriptor_(JavaIoFileDescriptor *descriptor) {
  J2OBJC_NEW_IMPL(AndroidOsParcelFileDescriptor, initWithJavaIoFileDescriptor_, descriptor)
}

AndroidOsParcelFileDescriptor *create_AndroidOsParcelFileDescriptor_initWithJavaIoFileDescriptor_(JavaIoFileDescriptor *descriptor) {
  J2OBJC_CREATE_IMPL(AndroidOsParcelFileDescriptor, initWithJavaIoFileDescriptor_, descriptor)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidOsParcelFileDescriptor)

@implementation AndroidOsParcelFileDescriptor_AutoCloseInputStream

- (instancetype)initWithAndroidOsParcelFileDescriptor:(AndroidOsParcelFileDescriptor *)fd {
  AndroidOsParcelFileDescriptor_AutoCloseInputStream_initWithAndroidOsParcelFileDescriptor_(self, fd);
  return self;
}

- (void)close {
  [((AndroidOsParcelFileDescriptor *) nil_chk(mFd_)) close];
}

- (void)dealloc {
  JreCheckFinalize(self, [AndroidOsParcelFileDescriptor_AutoCloseInputStream class]);
  RELEASE_(mFd_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithAndroidOsParcelFileDescriptor:);
  methods[1].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mFd_", "LAndroidOsParcelFileDescriptor;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LAndroidOsParcelFileDescriptor;", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _AndroidOsParcelFileDescriptor_AutoCloseInputStream = { "AutoCloseInputStream", "android.os", ptrTable, methods, fields, 7, 0x9, 2, 1, 0, -1, -1, -1, -1 };
  return &_AndroidOsParcelFileDescriptor_AutoCloseInputStream;
}

@end

void AndroidOsParcelFileDescriptor_AutoCloseInputStream_initWithAndroidOsParcelFileDescriptor_(AndroidOsParcelFileDescriptor_AutoCloseInputStream *self, AndroidOsParcelFileDescriptor *fd) {
  JavaIoFileInputStream_initWithJavaIoFileDescriptor_(self, [((AndroidOsParcelFileDescriptor *) nil_chk(fd)) getFileDescriptor]);
  JreStrongAssign(&self->mFd_, fd);
}

AndroidOsParcelFileDescriptor_AutoCloseInputStream *new_AndroidOsParcelFileDescriptor_AutoCloseInputStream_initWithAndroidOsParcelFileDescriptor_(AndroidOsParcelFileDescriptor *fd) {
  J2OBJC_NEW_IMPL(AndroidOsParcelFileDescriptor_AutoCloseInputStream, initWithAndroidOsParcelFileDescriptor_, fd)
}

AndroidOsParcelFileDescriptor_AutoCloseInputStream *create_AndroidOsParcelFileDescriptor_AutoCloseInputStream_initWithAndroidOsParcelFileDescriptor_(AndroidOsParcelFileDescriptor *fd) {
  J2OBJC_CREATE_IMPL(AndroidOsParcelFileDescriptor_AutoCloseInputStream, initWithAndroidOsParcelFileDescriptor_, fd)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidOsParcelFileDescriptor_AutoCloseInputStream)

@implementation AndroidOsParcelFileDescriptor_AutoCloseOutputStream

- (instancetype)initWithAndroidOsParcelFileDescriptor:(AndroidOsParcelFileDescriptor *)fd {
  AndroidOsParcelFileDescriptor_AutoCloseOutputStream_initWithAndroidOsParcelFileDescriptor_(self, fd);
  return self;
}

- (void)close {
  [((AndroidOsParcelFileDescriptor *) nil_chk(mFd_)) close];
}

- (void)dealloc {
  JreCheckFinalize(self, [AndroidOsParcelFileDescriptor_AutoCloseOutputStream class]);
  RELEASE_(mFd_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithAndroidOsParcelFileDescriptor:);
  methods[1].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mFd_", "LAndroidOsParcelFileDescriptor;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LAndroidOsParcelFileDescriptor;", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _AndroidOsParcelFileDescriptor_AutoCloseOutputStream = { "AutoCloseOutputStream", "android.os", ptrTable, methods, fields, 7, 0x9, 2, 1, 0, -1, -1, -1, -1 };
  return &_AndroidOsParcelFileDescriptor_AutoCloseOutputStream;
}

@end

void AndroidOsParcelFileDescriptor_AutoCloseOutputStream_initWithAndroidOsParcelFileDescriptor_(AndroidOsParcelFileDescriptor_AutoCloseOutputStream *self, AndroidOsParcelFileDescriptor *fd) {
  JavaIoFileOutputStream_initWithJavaIoFileDescriptor_(self, [((AndroidOsParcelFileDescriptor *) nil_chk(fd)) getFileDescriptor]);
  JreStrongAssign(&self->mFd_, fd);
}

AndroidOsParcelFileDescriptor_AutoCloseOutputStream *new_AndroidOsParcelFileDescriptor_AutoCloseOutputStream_initWithAndroidOsParcelFileDescriptor_(AndroidOsParcelFileDescriptor *fd) {
  J2OBJC_NEW_IMPL(AndroidOsParcelFileDescriptor_AutoCloseOutputStream, initWithAndroidOsParcelFileDescriptor_, fd)
}

AndroidOsParcelFileDescriptor_AutoCloseOutputStream *create_AndroidOsParcelFileDescriptor_AutoCloseOutputStream_initWithAndroidOsParcelFileDescriptor_(AndroidOsParcelFileDescriptor *fd) {
  J2OBJC_CREATE_IMPL(AndroidOsParcelFileDescriptor_AutoCloseOutputStream, initWithAndroidOsParcelFileDescriptor_, fd)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidOsParcelFileDescriptor_AutoCloseOutputStream)

@implementation AndroidOsParcelFileDescriptor_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AndroidOsParcelFileDescriptor_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (AndroidOsParcelFileDescriptor *)createFromParcelWithAndroidOsParcel:(AndroidOsParcel *)inArg {
  return [((AndroidOsParcel *) nil_chk(inArg)) readFileDescriptor];
}

- (IOSObjectArray *)newArrayWithInt:(jint)size {
  return [IOSObjectArray arrayWithLength:size type:AndroidOsParcelFileDescriptor_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LAndroidOsParcelFileDescriptor;", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "[LAndroidOsParcelFileDescriptor;", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(createFromParcelWithAndroidOsParcel:);
  methods[2].selector = @selector(newArrayWithInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "createFromParcel", "LAndroidOsParcel;", "newArray", "I", "LAndroidOsParcelFileDescriptor;", "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Landroid/os/ParcelFileDescriptor;>;" };
  static const J2ObjcClassInfo _AndroidOsParcelFileDescriptor_1 = { "", "android.os", ptrTable, methods, NULL, 7, 0x8018, 3, 0, 4, -1, -1, 5, -1 };
  return &_AndroidOsParcelFileDescriptor_1;
}

@end

void AndroidOsParcelFileDescriptor_1_init(AndroidOsParcelFileDescriptor_1 *self) {
  NSObject_init(self);
}

AndroidOsParcelFileDescriptor_1 *new_AndroidOsParcelFileDescriptor_1_init() {
  J2OBJC_NEW_IMPL(AndroidOsParcelFileDescriptor_1, init)
}

AndroidOsParcelFileDescriptor_1 *create_AndroidOsParcelFileDescriptor_1_init() {
  J2OBJC_CREATE_IMPL(AndroidOsParcelFileDescriptor_1, init)
}
