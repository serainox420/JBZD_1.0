.class public Lcom/mopub/common/MoPub;
.super Ljava/lang/Object;
.source "MoPub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/MoPub$LocationAwareness;
    }
.end annotation


# static fields
.field public static final SDK_VERSION:Ljava/lang/String; = "4.11.0"

.field private static volatile a:Lcom/mopub/common/MoPub$LocationAwareness;

.field private static volatile b:I

.field private static c:Z

.field private static d:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/mopub/common/MoPub$LocationAwareness;->NORMAL:Lcom/mopub/common/MoPub$LocationAwareness;

    sput-object v0, Lcom/mopub/common/MoPub;->a:Lcom/mopub/common/MoPub$LocationAwareness;

    .line 29
    const/4 v0, 0x6

    sput v0, Lcom/mopub/common/MoPub;->b:I

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mopub/common/MoPub;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method static a(Landroid/app/Activity;)V
    .locals 5
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 121
    sget-boolean v0, Lcom/mopub/common/MoPub;->c:Z

    if-nez v0, :cond_0

    .line 122
    sput-boolean v1, Lcom/mopub/common/MoPub;->c:Z

    .line 124
    :try_start_0
    const-string v0, "com.mopub.mobileads.MoPubRewardedVideoManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 126
    const-string v1, "updateActivity"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/mopub/common/util/Reflection;->getDeclaredMethodWithTraversal(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mopub/common/MoPub;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 135
    :cond_0
    :goto_0
    sget-object v0, Lcom/mopub/common/MoPub;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 137
    :try_start_1
    sget-object v0, Lcom/mopub/common/MoPub;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    :cond_1
    :goto_1
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string v1, "Error while attempting to access the update activity method - this should not have happened"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 141
    :catch_1
    move-exception v0

    .line 142
    const-string v1, "Error while attempting to access the update activity method - this should not have happened"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 130
    :catch_2
    move-exception v0

    goto :goto_0

    .line 128
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public static getLocationAwareness()Lcom/mopub/common/MoPub$LocationAwareness;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/mopub/common/MoPub;->a:Lcom/mopub/common/MoPub$LocationAwareness;

    return-object v0
.end method

.method public static getLocationPrecision()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/mopub/common/MoPub;->b:I

    return v0
.end method

.method public static hasRewardedVideo(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 209
    :try_start_0
    new-instance v0, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const/4 v1, 0x0

    const-string v2, "hasRewardedVideo"

    invoke-direct {v0, v1, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.mopub.mobileads.MoPubRewardedVideos"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/Class;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 220
    :goto_0
    return v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    const-string v0, "hasRewardedVideo was called without the rewarded video module"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 220
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 215
    :catch_1
    move-exception v0

    .line 216
    const-string v0, "hasRewardedVideo was called without the rewarded video module"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 217
    :catch_2
    move-exception v0

    .line 218
    const-string v1, "Error while checking rewarded video"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static varargs initializeRewardedVideo(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    :try_start_0
    new-instance v0, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const/4 v1, 0x0

    const-string v2, "initializeRewardedVideo"

    invoke-direct {v0, v1, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.mopub.mobileads.MoPubRewardedVideos"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/Class;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    const-class v1, [Lcom/mopub/common/MediationSettings;

    invoke-virtual {v0, v1, p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 117
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    const-string v0, "initializeRewardedVideo was called without the rewarded video module"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :catch_1
    move-exception v0

    .line 113
    const-string v0, "initializeRewardedVideo was called without the rewarded video module"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :catch_2
    move-exception v0

    .line 115
    const-string v1, "Error while initializing rewarded video"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static varargs loadRewardedVideo(Ljava/lang/String;Ljava/lang/Object;[Lcom/mopub/common/MediationSettings;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    :try_start_0
    const-string v0, "com.mopub.mobileads.MoPubRewardedVideoManager$RequestParameters"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 188
    new-instance v1, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const/4 v2, 0x0

    const-string v3, "loadRewardedVideo"

    invoke-direct {v1, v2, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "com.mopub.mobileads.MoPubRewardedVideos"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/Class;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    const-class v1, [Lcom/mopub/common/MediationSettings;

    invoke-virtual {v0, v1, p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 201
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    const-string v0, "loadRewardedVideo was called without the rewarded video module"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :catch_1
    move-exception v0

    .line 197
    const-string v0, "loadRewardedVideo was called without the rewarded video module"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :catch_2
    move-exception v0

    .line 199
    const-string v1, "Error while loading rewarded video"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static varargs loadRewardedVideo(Ljava/lang/String;[Lcom/mopub/common/MediationSettings;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/mopub/common/MoPub;->loadRewardedVideo(Ljava/lang/String;Ljava/lang/Object;[Lcom/mopub/common/MediationSettings;)V

    .line 176
    return-void
.end method

.method public static onBackPressed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 89
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onBackPressed(Landroid/app/Activity;)V

    .line 90
    return-void
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 57
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onCreate(Landroid/app/Activity;)V

    .line 58
    invoke-static {p0}, Lcom/mopub/common/MoPub;->a(Landroid/app/Activity;)V

    .line 59
    return-void
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 85
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onDestroy(Landroid/app/Activity;)V

    .line 86
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 67
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onPause(Landroid/app/Activity;)V

    .line 68
    return-void
.end method

.method public static onRestart(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 76
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onRestart(Landroid/app/Activity;)V

    .line 77
    invoke-static {p0}, Lcom/mopub/common/MoPub;->a(Landroid/app/Activity;)V

    .line 78
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 71
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onResume(Landroid/app/Activity;)V

    .line 72
    invoke-static {p0}, Lcom/mopub/common/MoPub;->a(Landroid/app/Activity;)V

    .line 73
    return-void
.end method

.method public static onStart(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 62
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onStart(Landroid/app/Activity;)V

    .line 63
    invoke-static {p0}, Lcom/mopub/common/MoPub;->a(Landroid/app/Activity;)V

    .line 64
    return-void
.end method

.method public static onStop(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 81
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onStop(Landroid/app/Activity;)V

    .line 82
    return-void
.end method

.method public static setLocationAwareness(Lcom/mopub/common/MoPub$LocationAwareness;)V
    .locals 0

    .prologue
    .line 38
    sput-object p0, Lcom/mopub/common/MoPub;->a:Lcom/mopub/common/MoPub$LocationAwareness;

    .line 39
    return-void
.end method

.method public static setLocationPrecision(I)V
    .locals 2

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/mopub/common/MoPub;->b:I

    .line 51
    return-void
.end method

.method public static setRewardedVideoListener(Ljava/lang/Object;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    :try_start_0
    const-string v0, "com.mopub.mobileads.MoPubRewardedVideoListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 156
    new-instance v1, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const/4 v2, 0x0

    const-string v3, "setRewardedVideoListener"

    invoke-direct {v1, v2, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "com.mopub.mobileads.MoPubRewardedVideos"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/Class;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 167
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    const-string v0, "setRewardedVideoListener was called without the rewarded video module"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :catch_1
    move-exception v0

    .line 163
    const-string v0, "setRewardedVideoListener was called without the rewarded video module"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :catch_2
    move-exception v0

    .line 165
    const-string v1, "Error while setting rewarded video listener"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static showRewardedVideo(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 229
    :try_start_0
    new-instance v0, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const/4 v1, 0x0

    const-string v2, "showRewardedVideo"

    invoke-direct {v0, v1, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.mopub.mobileads.MoPubRewardedVideos"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/Class;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 240
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    const-string v0, "showRewardedVideo was called without the rewarded video module"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :catch_1
    move-exception v0

    .line 236
    const-string v0, "showRewardedVideo was called without the rewarded video module"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :catch_2
    move-exception v0

    .line 238
    const-string v1, "Error while showing rewarded video"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
