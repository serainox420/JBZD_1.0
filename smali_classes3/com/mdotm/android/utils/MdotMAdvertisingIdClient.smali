.class public final Lcom/mdotm/android/utils/MdotMAdvertisingIdClient;
.super Ljava/lang/Object;
.source "MdotMAdvertisingIdClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mdotm/android/utils/MdotMAdvertisingIdClient$AdInfo;,
        Lcom/mdotm/android/utils/MdotMAdvertisingIdClient$AdvertisingConnection;,
        Lcom/mdotm/android/utils/MdotMAdvertisingIdClient$AdvertisingInterface;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/mdotm/android/utils/MdotMAdvertisingIdClient$AdInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 36
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 38
    const-string v1, "Cannot be called from the main thread"

    .line 37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 42
    const-string v2, "com.android.vending"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    new-instance v2, Lcom/mdotm/android/utils/MdotMAdvertisingIdClient$AdvertisingConnection;

    invoke-direct {v2, v1}, Lcom/mdotm/android/utils/MdotMAdvertisingIdClient$AdvertisingConnection;-><init>(Lcom/mdotm/android/utils/MdotMAdvertisingIdClient$AdvertisingConnection;)V

    .line 49
    new-instance v0, Landroid/content/Intent;

    .line 50
    const-string v3, "com.google.android.gms.ads.identifier.service.START"

    .line 49
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    const-string v3, "com.google.android.gms"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 55
    :try_start_1
    new-instance v3, Lcom/mdotm/android/utils/MdotMAdvertisingIdClient$AdvertisingInterface;

    .line 56
    invoke-virtual {v2}, Lcom/mdotm/android/utils/MdotMAdvertisingIdClient$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 55
    invoke-direct {v3, v0}, Lcom/mdotm/android/utils/MdotMAdvertisingIdClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 57
    new-instance v0, Lcom/mdotm/android/utils/MdotMAdvertisingIdClient$AdInfo;

    invoke-virtual {v3}, Lcom/mdotm/android/utils/MdotMAdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v4

    .line 58
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/mdotm/android/utils/MdotMAdvertisingIdClient$AdvertisingInterface;->isLimitAdTrackingEnabled(Z)Z

    move-result v3

    .line 57
    invoke-direct {v0, v4, v3}, Lcom/mdotm/android/utils/MdotMAdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 68
    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 45
    goto :goto_0

    .line 60
    :catch_1
    move-exception v0

    .line 61
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    move-object v0, v1

    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 66
    throw v0

    :cond_1
    move-object v0, v1

    .line 68
    goto :goto_0
.end method
