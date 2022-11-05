.class public final Lcom/loopme/AdvertisingIdClient;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/AdvertisingIdClient$AdvertisingInterface;,
        Lcom/loopme/AdvertisingIdClient$AdvertisingConnection;,
        Lcom/loopme/AdvertisingIdClient$AdInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/loopme/AdvertisingIdClient$AdInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 43
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 48
    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    new-instance v1, Lcom/loopme/AdvertisingIdClient$AdvertisingConnection;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/loopme/AdvertisingIdClient$AdvertisingConnection;-><init>(Lcom/loopme/AdvertisingIdClient$1;)V

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :try_start_1
    new-instance v0, Lcom/loopme/AdvertisingIdClient$AdvertisingInterface;

    invoke-virtual {v1}, Lcom/loopme/AdvertisingIdClient$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/loopme/AdvertisingIdClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 60
    new-instance v2, Lcom/loopme/AdvertisingIdClient$AdInfo;

    invoke-virtual {v0}, Lcom/loopme/AdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 61
    invoke-virtual {v0, v4}, Lcom/loopme/AdvertisingIdClient$AdvertisingInterface;->isLimitAdTrackingEnabled(Z)Z

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/loopme/AdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 62
    return-object v2

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 63
    :catch_1
    move-exception v0

    .line 64
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    .line 69
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Google Play connection failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
