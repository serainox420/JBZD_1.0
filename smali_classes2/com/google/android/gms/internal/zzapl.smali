.class public Lcom/google/android/gms/internal/zzapl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/fitness/GoalsApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readCurrentGoals(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/GoalsReadRequest;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/request/GoalsReadRequest;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/fitness/result/GoalsResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzapl$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzapl$1;-><init>(Lcom/google/android/gms/internal/zzapl;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/GoalsReadRequest;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method
