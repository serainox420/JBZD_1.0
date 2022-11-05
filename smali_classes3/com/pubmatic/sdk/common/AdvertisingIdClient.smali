.class public final Lcom/pubmatic/sdk/common/AdvertisingIdClient;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdvertisingInterface;,
        Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdvertisingConnection;,
        Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdInfo;
    }
.end annotation


# static fields
.field private static final PM_AID_KEY:Ljava/lang/String; = "aid_key"

.field private static final PM_AID_STORAGE:Ljava/lang/String; = "aid_shared_preference"

.field private static final PM_LIMITED_TRACKING_AD_KEY:Ljava/lang/String; = "limited_tracking_ad_key"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    return-void
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 78
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    new-instance v1, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdvertisingConnection;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdvertisingConnection;-><init>(Lcom/pubmatic/sdk/common/AdvertisingIdClient$1;)V

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :try_start_1
    new-instance v0, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdvertisingInterface;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 91
    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/pubmatic/sdk/common/AdvertisingIdClient;->saveAndroidAid(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdvertisingInterface;->isLimitAdTrackingEnabled(Z)Z

    move-result v2

    invoke-static {p0, v2}, Lcom/pubmatic/sdk/common/AdvertisingIdClient;->saveLimitedAdTrackingState(Landroid/content/Context;Z)V

    .line 94
    new-instance v2, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdInfo;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdvertisingInterface;->isLimitAdTrackingEnabled(Z)Z

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v2

    .line 81
    :catch_0
    move-exception v0

    throw v0

    .line 96
    :catch_1
    move-exception v0

    .line 97
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    .line 102
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Google Play connection failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAndroidAid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    if-eqz p0, :cond_0

    .line 125
    const-string v0, "aid_shared_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 126
    const-string v1, "aid_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 128
    :cond_0
    return-object p1
.end method

.method public static getLimitedAdTrackingState(Landroid/content/Context;Z)Z
    .locals 2

    .prologue
    .line 150
    if-eqz p0, :cond_0

    .line 152
    const-string v0, "aid_shared_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 153
    const-string v1, "limited_tracking_ad_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 155
    :cond_0
    return p1
.end method

.method public static refreshAdvertisingInfo(Landroid/content/Context;)Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdInfo;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pubmatic/sdk/common/AdvertisingIdClient$1;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/common/AdvertisingIdClient$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 70
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 72
    new-instance v0, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdInfo;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/pubmatic/sdk/common/AdvertisingIdClient;->getAndroidAid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 73
    invoke-static {p0, v2}, Lcom/pubmatic/sdk/common/AdvertisingIdClient;->getLimitedAdTrackingState(Landroid/content/Context;Z)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V

    .line 74
    return-object v0
.end method

.method public static saveAndroidAid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 110
    const-string v0, "aid_shared_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    const-string v1, "aid_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    :cond_0
    return-void
.end method

.method public static saveLimitedAdTrackingState(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 137
    const-string v0, "aid_shared_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    const-string v1, "limited_tracking_ad_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    :cond_0
    return-void
.end method
