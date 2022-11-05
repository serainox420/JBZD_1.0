.class abstract Landroid/support/v7/media/e;
.super Ljava/lang/Object;
.source "MediaRouteProviderProtocol.java"


# direct methods
.method public static a(Landroid/os/Messenger;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 223
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 227
    :cond_0
    :goto_0
    return v0

    .line 224
    :catch_0
    move-exception v1

    goto :goto_0
.end method
