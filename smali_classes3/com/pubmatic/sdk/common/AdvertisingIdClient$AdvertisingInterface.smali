.class final Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdvertisingInterface;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/AdvertisingIdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AdvertisingInterface"
.end annotation


# instance fields
.field private binder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdvertisingInterface;->binder:Landroid/os/IBinder;

    .line 204
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdvertisingInterface;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 215
    :try_start_0
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdvertisingInterface;->binder:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 217
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 218
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 220
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 223
    return-object v0

    .line 220
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isLimitAdTrackingEnabled(Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 231
    :try_start_0
    const-string v2, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 232
    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget-object v2, p0, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdvertisingInterface;->binder:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 234
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 235
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    :goto_1
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 238
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 240
    return v0

    :cond_0
    move v2, v1

    .line 232
    goto :goto_0

    :cond_1
    move v0, v1

    .line 235
    goto :goto_1

    .line 237
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 238
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
