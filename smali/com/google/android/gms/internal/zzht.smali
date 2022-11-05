.class public Lcom/google/android/gms/internal/zzht;
.super Lcom/google/android/gms/dynamic/zzf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzf",
        "<",
        "Lcom/google/android/gms/internal/zzhi;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzf;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected zzL(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzhi;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzhi$zza;->zzD(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzhi;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/zzhh;
    .locals 5

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {p3}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzht;->zzbl(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzhi;

    const v4, 0x9d2290

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzhi;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhh$zza;->zzC(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzhh;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/dynamic/zzf$zza; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "Could not create remote NativeAdViewDelegate."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected synthetic zzc(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzht;->zzL(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzhi;

    move-result-object v0

    return-object v0
.end method
