.class public Lcom/google/android/gms/safetynet/SafetyNetClient;
.super Lcom/google/android/gms/common/api/zzc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/zzc",
        "<",
        "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
        ">;"
    }
.end annotation


# virtual methods
.method public attest([BLjava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/safetynet/SafetyNetApi$zza;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/safetynet/SafetyNetClient;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/zzazv;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;[BLjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/safetynet/SafetyNetApi$zza;

    invoke-direct {v1}, Lcom/google/android/gms/safetynet/SafetyNetApi$zza;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/api/zze;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public initSafeBrowsing()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/safetynet/SafetyNetClient$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/safetynet/SafetyNetClient$2;-><init>(Lcom/google/android/gms/safetynet/SafetyNetClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/safetynet/SafetyNetClient;->doRead(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public isAdmEnabled()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/safetynet/SafetyNetClient$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/safetynet/SafetyNetClient$1;-><init>(Lcom/google/android/gms/safetynet/SafetyNetClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/safetynet/SafetyNetClient;->doRead(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public listHarmfulApps()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/safetynet/SafetyNetApi$zzb;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/safetynet/SafetyNet;->SafetyNetApi:Lcom/google/android/gms/safetynet/SafetyNetApi;

    invoke-virtual {p0}, Lcom/google/android/gms/safetynet/SafetyNetClient;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/safetynet/SafetyNetApi;->listHarmfulApps(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/safetynet/SafetyNetApi$zzb;

    invoke-direct {v1}, Lcom/google/android/gms/safetynet/SafetyNetApi$zzb;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/api/zze;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public varargs lookupUri(Ljava/lang/String;Ljava/lang/String;[I)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/safetynet/SafetyNetApi$zze;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/safetynet/SafetyNetClient;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, p1, v1, p2, p3}, Lcom/google/android/gms/internal/zzazv;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;ILjava/lang/String;[I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/safetynet/SafetyNetApi$zze;

    invoke-direct {v1}, Lcom/google/android/gms/safetynet/SafetyNetApi$zze;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/api/zze;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public shutdownSafeBrowsing()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/safetynet/SafetyNetClient$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/safetynet/SafetyNetClient$3;-><init>(Lcom/google/android/gms/safetynet/SafetyNetClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/safetynet/SafetyNetClient;->doRead(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
