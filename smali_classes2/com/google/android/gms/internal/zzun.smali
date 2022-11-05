.class public Lcom/google/android/gms/internal/zzun;
.super Lcom/google/android/gms/common/internal/zzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzl",
        "<",
        "Lcom/google/android/gms/internal/zzuq;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaiq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzg;)V
    .locals 7

    const/16 v3, 0x4d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    invoke-virtual {p5}, Lcom/google/android/gms/common/internal/zzg;->zzxO()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun;->zzaiq:Ljava/lang/String;

    return-void
.end method

.method private zzqM()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "authPackage"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun;->zzaiq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzup;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzun;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzuq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzuq;->zza(Lcom/google/android/gms/internal/zzup;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzup;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzun;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzuq;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzuq;->zza(Lcom/google/android/gms/internal/zzup;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected zzaq(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuq;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzuq$zza;->zzas(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuq;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzup;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzun;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzuq;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzuq;->zzb(Lcom/google/android/gms/internal/zzup;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected zzeA()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.appinvite.internal.IAppInviteService"

    return-object v0
.end method

.method protected zzez()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.appinvite.service.START"

    return-object v0
.end method

.method protected synthetic zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzun;->zzaq(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuq;

    move-result-object v0

    return-object v0
.end method

.method protected zzqL()Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzun;->zzqM()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
