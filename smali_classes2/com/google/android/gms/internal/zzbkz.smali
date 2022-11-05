.class public Lcom/google/android/gms/internal/zzbkz;
.super Lcom/google/android/gms/dynamic/zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzf",
        "<",
        "Lcom/google/android/gms/internal/zzbkv;",
        ">;"
    }
.end annotation


# static fields
.field private static zzbSt:Lcom/google/android/gms/internal/zzbkz;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.wallet.dynamite.WalletDynamiteCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzf;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static zzUb()Lcom/google/android/gms/internal/zzbkz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbkz;->zzbSt:Lcom/google/android/gms/internal/zzbkz;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbkz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbkz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbkz;->zzbSt:Lcom/google/android/gms/internal/zzbkz;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzbkz;->zzbSt:Lcom/google/android/gms/internal/zzbkz;

    return-object v0
.end method

.method public static zza(Landroid/app/Activity;Lcom/google/android/gms/dynamic/zzc;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/internal/zzbkt;)Lcom/google/android/gms/internal/zzbks;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/zzbkz;->zzUb()Lcom/google/android/gms/internal/zzbkz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzbkz;->zzbl(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbkv;

    invoke-static {p0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/zzbkv;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/zzc;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/internal/zzbkt;)Lcom/google/android/gms/internal/zzbks;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/dynamic/zzf$zza; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected synthetic zzc(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbkz;->zzfz(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbkv;

    move-result-object v0

    return-object v0
.end method

.method protected zzfz(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbkv;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbkv$zza;->zzfw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbkv;

    move-result-object v0

    return-object v0
.end method
