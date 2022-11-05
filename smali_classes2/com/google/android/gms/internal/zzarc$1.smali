.class Lcom/google/android/gms/internal/zzarc$1;
.super Lcom/google/android/gms/internal/zzarc$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzarc;->getInstantAppLaunchData(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/instantapps/LaunchSettings;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzarc$zzb",
        "<",
        "Lcom/google/android/gms/instantapps/InstantAppsApi$LaunchDataResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbiF:Lcom/google/android/gms/instantapps/LaunchSettings;

.field final synthetic zzsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzarc;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/instantapps/LaunchSettings;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzarc$1;->zzsg:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzarc$1;->zzbiF:Lcom/google/android/gms/instantapps/LaunchSettings;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzarc$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaqz;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzarc$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzarc$1$1;-><init>(Lcom/google/android/gms/internal/zzarc$1;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarc$1;->zzsg:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarc$1;->zzbiF:Lcom/google/android/gms/instantapps/LaunchSettings;

    invoke-interface {p2, v0, v1, v2}, Lcom/google/android/gms/internal/zzaqz;->zza(Lcom/google/android/gms/internal/zzaqy;Ljava/lang/String;Lcom/google/android/gms/instantapps/LaunchSettings;)V

    return-void
.end method

.method protected zzbo(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/instantapps/InstantAppsApi$LaunchDataResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzarc$zzc;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzarc$zzc;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/instantapps/LaunchData;)V

    return-object v0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzarc$1;->zzbo(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/instantapps/InstantAppsApi$LaunchDataResult;

    move-result-object v0

    return-object v0
.end method
