.class public Lcom/google/android/gms/internal/zzaek;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/awareness/FenceApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queryFences(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/awareness/fence/FenceQueryRequest;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/awareness/fence/FenceQueryRequest;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/awareness/fence/FenceQueryResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzaek$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzaek$2;-><init>(Lcom/google/android/gms/internal/zzaek;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/awareness/fence/FenceQueryRequest;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method

.method public updateFences(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/awareness/fence/FenceUpdateRequest;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/awareness/fence/FenceUpdateRequest;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzaek$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzaek$1;-><init>(Lcom/google/android/gms/internal/zzaek;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/awareness/fence/FenceUpdateRequest;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method
