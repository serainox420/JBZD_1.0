.class public Lcom/google/android/gms/internal/zzzg;
.super Lcom/google/android/gms/common/internal/zzl;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzl",
        "<",
        "Lcom/google/android/gms/internal/zzzi;",
        ">;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# static fields
.field private static final zzanA:Lcom/google/android/gms/internal/zzyz;


# instance fields
.field private zzani:Lcom/google/android/gms/cast/CastDevice;

.field private zzaxl:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

.field private zzaxm:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzyz;

    const-string v1, "CastRemoteDisplayClientImpl"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzyz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzzg;->zzanA:Lcom/google/android/gms/internal/zzyz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/cast/CastDevice;Landroid/os/Bundle;Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x53

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    sget-object v0, Lcom/google/android/gms/internal/zzzg;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v1, "instance created"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p6, p0, Lcom/google/android/gms/internal/zzzg;->zzaxl:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzzg;->zzani:Lcom/google/android/gms/cast/CastDevice;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzzg;->zzaxm:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzzg;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzg;->zzaxl:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    return-object v0
.end method

.method static synthetic zzuR()Lcom/google/android/gms/internal/zzyz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzzg;->zzanA:Lcom/google/android/gms/internal/zzyz;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    return-void
.end method

.method public disconnect()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzzg;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v1, "disconnect"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzzg;->zzaxl:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    iput-object v3, p0, Lcom/google/android/gms/internal/zzzg;->zzani:Lcom/google/android/gms/cast/CastDevice;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzzg;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzzi;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzl;->disconnect()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzl;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzl;->disconnect()V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/internal/zzzh;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzzg;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v1, "stopRemoteDisplay"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzzg;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzzi;->zza(Lcom/google/android/gms/internal/zzzh;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzzh;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzzg;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzi;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzzi;->zza(Lcom/google/android/gms/internal/zzzh;I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzzh;Lcom/google/android/gms/internal/zzzj;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzzg;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v1, "startRemoteDisplay"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/zzzg$1;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/zzzg$1;-><init>(Lcom/google/android/gms/internal/zzzg;Lcom/google/android/gms/internal/zzzj;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzzg;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzg;->zzani:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gms/internal/zzzg;->zzaxm:Landroid/os/Bundle;

    move-object v1, p1

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzzi;->zza(Lcom/google/android/gms/internal/zzzh;Lcom/google/android/gms/internal/zzzj;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public zzbi(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzzi;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzzi$zza;->zzbk(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzzi;

    move-result-object v0

    return-object v0
.end method

.method protected zzeA()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService"

    return-object v0
.end method

.method protected zzez()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.remote_display.service.START"

    return-object v0
.end method

.method public synthetic zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzzg;->zzbi(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzzi;

    move-result-object v0

    return-object v0
.end method
