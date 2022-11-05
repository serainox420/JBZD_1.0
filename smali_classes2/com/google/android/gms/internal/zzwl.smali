.class public Lcom/google/android/gms/internal/zzwl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/awareness/SnapshotApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzvx$zzb;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/BeaconStateResult;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x2713

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/zzwl;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/util/ArrayList;)Lcom/google/android/gms/internal/zzafm$zzb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzwl$7;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzwl$7;-><init>(Lcom/google/android/gms/internal/zzwl;Lcom/google/android/gms/common/api/PendingResult;)V

    return-object v1
.end method

.method private static zza(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/internal/zzafm$zzb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzwl$8;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzwl$8;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;I)V

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/util/ArrayList;)Lcom/google/android/gms/internal/zzafm$zzb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzvx$zzb;",
            ">;)",
            "Lcom/google/android/gms/internal/zzafm$zzb;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzwl$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzwl$9;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/util/ArrayList;)V

    return-object v0
.end method

.method private static varargs zza([Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzvx$zzb;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "beaconTypes cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "beaconTypes must not be empty"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, p0, v1

    check-cast v0, Lcom/google/android/gms/internal/zzvx$zzb;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private static zze(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzvx$zzb;",
            ">;"
        }
    .end annotation

    const-string v0, "beaconTypes cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "beaconTypes must not be empty"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;

    check-cast v0, Lcom/google/android/gms/internal/zzvx$zzb;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public getBeaconState(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/Collection;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/BeaconStateResult;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/zzwl;->zze(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzwl;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public varargs getBeaconState(Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "[",
            "Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/BeaconStateResult;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/zzwl;->zza([Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzwl;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public getDetectedActivity(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/DetectedActivityResult;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x2712

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzwl;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/internal/zzafm$zzb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzwl$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzwl$2;-><init>(Lcom/google/android/gms/internal/zzwl;Lcom/google/android/gms/common/api/PendingResult;)V

    return-object v1
.end method

.method public getHeadphoneState(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/HeadphoneStateResult;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x2714

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzwl;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/internal/zzafm$zzb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzwl$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzwl$3;-><init>(Lcom/google/android/gms/internal/zzwl;Lcom/google/android/gms/common/api/PendingResult;)V

    return-object v1
.end method

.method public getLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/LocationResult;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x2715

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzwl;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/internal/zzafm$zzb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzwl$4;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzwl$4;-><init>(Lcom/google/android/gms/internal/zzwl;Lcom/google/android/gms/common/api/PendingResult;)V

    return-object v1
.end method

.method public getPlaces(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/PlacesResult;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x2716

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzwl;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/internal/zzafm$zzb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzwl$5;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzwl$5;-><init>(Lcom/google/android/gms/internal/zzwl;Lcom/google/android/gms/common/api/PendingResult;)V

    return-object v1
.end method

.method public getTimeIntervals(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/TimeIntervalsResult;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x2718

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzwl;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/internal/zzafm$zzb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzwl$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzwl$1;-><init>(Lcom/google/android/gms/internal/zzwl;Lcom/google/android/gms/common/api/PendingResult;)V

    return-object v1
.end method

.method public getWeather(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/WeatherResult;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x2717

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzwl;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/internal/zzafm$zzb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzwl$6;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzwl$6;-><init>(Lcom/google/android/gms/internal/zzwl;Lcom/google/android/gms/common/api/PendingResult;)V

    return-object v1
.end method
