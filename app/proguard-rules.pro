# help us to debug
-renamesourcefileattribute SourceFile
-keepattributes Exceptions
-keepattributes SourceFile,LineNumberTable,keepattributes
-keepattributes InnerClasses
-keepattributes EnclosingMethod
-keepattributes Signature
-keepattributes *Annotation*
-dontshrink

# Config need by TinkerPatch
-keep class com.tinkerpatch.sdk.TinkerPatch { *; }
-keep class com.tinkerpatch.sdk.BuildConfig { *; }

-keep class com.tinkerpatch.sdk.TinkerPatch$Builder { *; }
-keep class com.tinkerpatch.sdk.server.RequestLoader { *; }
-keep class com.tinkerpatch.sdk.util.ContentLengthInputStream { *; }
-keep interface com.tinkerpatch.sdk.server.model.DataFetcher { *; }
-keep interface com.tinkerpatch.sdk.server.model.DataFetcher$DataCallback { *; }
-keep class com.tinkerpatch.sdk.server.model.TinkerClientUrl { *; }
-keep class com.tinkerpatch.sdk.server.callback.** { *; }
-keep class com.tinkerpatch.sdk.tinker.callback.** { *; }
-keep public class * extends android.app.Application
-keep class com.tinkerpatch.sdk.loader.TinkerPatchApplicationLike { *; }
-keep class com.tencent.tinker.** { *; }

# Config from tinker
-dontwarn com.tencent.tinker.anno.AnnotationProcessor
-keep @com.tencent.tinker.anno.DefaultLifeCycle public class *
-keep public class * extends android.app.Application {
    *;
}

-keep public class com.tencent.tinker.loader.app.ApplicationLifeCycle {
    *;
}
-keep public class * implements com.tencent.tinker.loader.app.ApplicationLifeCycle {
    *;
}

-keep public class com.tencent.tinker.loader.TinkerLoader {
    *;
}
-keep public class * extends com.tencent.tinker.loader.TinkerLoader {
    *;
}
-keep public class com.tencent.tinker.loader.TinkerTestDexLoad {
    *;
}
-keep public class com.tencent.tinker.loader.TinkerTestAndroidNClassLoader {
    *;
}

#your dex.loader patterns here
-keep class tinker.sample.android.app.SampleApplication
-keep class com.tencent.tinker.loader.**


# Bugly混淆规则
-dontwarn com.tencent.bugly.**
-keep public class com.tencent.bugly.**{*;}
# tinker
-dontwarn com.tencent.tinker.**
-keep class com.tencent.tinker.** { *; }

# 避免影响升级功能，需要keep住support包的类
-keep class android.support.**{*;}

# xaop
-keep @com.xuexiang.xaop.annotation.* class * {*;}
-keep class * {
    @com.xuexiang.xaop.annotation.* <fields>;
}
-keepclassmembers class * {
    @com.xuexiang.xaop.annotation.* <methods>;
}

-keep public class com.xuexiang.buglytest.jni.**{*;}
