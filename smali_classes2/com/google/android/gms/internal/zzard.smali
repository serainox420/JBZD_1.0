.class public Lcom/google/android/gms/internal/zzard;
.super Lcom/google/android/gms/common/internal/zzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzl",
        "<",
        "Lcom/google/android/gms/internal/zzaqz;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x79

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzg;->zzaS(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method


# virtual methods
.method protected zzdc(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaqz;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaqz$zza;->zzdb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaqz;

    move-result-object v0

    return-object v0
.end method

.method protected zzeA()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.instantapps.internal.IInstantAppsService"

    return-object v0
.end method

.method protected zzez()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.instantapps.START"

    return-object v0
.end method

.method protected synthetic zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzard;->zzdc(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaqz;

    move-result-object v0

    return-object v0
.end method
