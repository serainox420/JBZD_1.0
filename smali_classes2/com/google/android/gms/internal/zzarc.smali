.class public Lcom/google/android/gms/internal/zzarc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/instantapps/InstantAppsApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzarc$zzc;,
        Lcom/google/android/gms/internal/zzarc$zzb;,
        Lcom/google/android/gms/internal/zzarc$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstantAppIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzare;->getInstantAppIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getInstantAppLaunchData(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/instantapps/InstantAppsApi$LaunchDataResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/instantapps/LaunchSettings;

    invoke-direct {v0}, Lcom/google/android/gms/instantapps/LaunchSettings;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzarc;->getInstantAppLaunchData(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/instantapps/LaunchSettings;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public getInstantAppLaunchData(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/instantapps/LaunchSettings;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/instantapps/LaunchSettings;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/instantapps/InstantAppsApi$LaunchDataResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzarc$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzarc$1;-><init>(Lcom/google/android/gms/internal/zzarc;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/instantapps/LaunchSettings;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method

.method public initializeIntentClient(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzare;->zzbD(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
