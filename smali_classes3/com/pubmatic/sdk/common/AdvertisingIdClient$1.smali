.class final Lcom/pubmatic/sdk/common/AdvertisingIdClient$1;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/AdvertisingIdClient;->refreshAdvertisingInfo(Landroid/content/Context;)Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/pubmatic/sdk/common/AdvertisingIdClient$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 51
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    new-instance v1, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdvertisingConnection;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdvertisingConnection;-><init>(Lcom/pubmatic/sdk/common/AdvertisingIdClient$1;)V

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    iget-object v2, p0, Lcom/pubmatic/sdk/common/AdvertisingIdClient$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :try_start_0
    new-instance v0, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdvertisingInterface;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 61
    iget-object v2, p0, Lcom/pubmatic/sdk/common/AdvertisingIdClient$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pubmatic/sdk/common/AdvertisingIdClient;->saveAndroidAid(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    iget-object v2, p0, Lcom/pubmatic/sdk/common/AdvertisingIdClient$1;->val$context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdvertisingInterface;->isLimitAdTrackingEnabled(Z)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/pubmatic/sdk/common/AdvertisingIdClient;->saveLimitedAdTrackingState(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdvertisingIdClient$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 70
    :cond_1
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 67
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdvertisingIdClient$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/pubmatic/sdk/common/AdvertisingIdClient$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method
