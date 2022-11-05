.class public Lcom/google/android/gms/internal/zzazw;
.super Lcom/google/android/gms/common/internal/zzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzl",
        "<",
        "Lcom/google/android/gms/internal/zzazu;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x2d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazw;->mContext:Landroid/content/Context;

    return-void
.end method

.method private zzgu(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzazw;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzazw;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzazt;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzazw;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzazu;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzazu;->zza(Lcom/google/android/gms/internal/zzazt;Ljava/lang/String;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzazt;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzazt;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p5, :cond_1

    const-string v0, "com.google.android.safetynet.API_KEY"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzazw;->zzgu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [I

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzazw;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzazu;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzazu;->zza(Lcom/google/android/gms/internal/zzazt;Ljava/lang/String;[IILjava/lang/String;)V

    return-void

    :cond_1
    move-object v2, p5

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzazt;[BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.safetynet.ATTEST_API_KEY"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzazw;->zzgu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzazw;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzazu;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzazu;->zza(Lcom/google/android/gms/internal/zzazt;[BLjava/lang/String;)V

    return-void
.end method

.method public zzd(Lcom/google/android/gms/internal/zzazt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzazw;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzazu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzazu;->zzd(Lcom/google/android/gms/internal/zzazt;)V

    return-void
.end method

.method public zze(Lcom/google/android/gms/internal/zzazt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzazw;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzazu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzazu;->zze(Lcom/google/android/gms/internal/zzazt;)V

    return-void
.end method

.method protected zzeA()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.safetynet.internal.ISafetyNetService"

    return-object v0
.end method

.method protected zzez()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.safetynet.service.START"

    return-object v0
.end method

.method protected zzfa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzazu;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzazu$zza;->zzeZ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzazu;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzazw;->zzfa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzazu;

    move-result-object v0

    return-object v0
.end method
