.class public final Lcom/google/android/gms/internal/zzawc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/nearby/connection/Connections;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzawc$zzc;,
        Lcom/google/android/gms/internal/zzawc$zzb;,
        Lcom/google/android/gms/internal/zzawc$zza;
    }
.end annotation


# static fields
.field public static final zzaid:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/internal/zzawb;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzaie:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/zzawb;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzawc;->zzaid:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/internal/zzawc$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzawc$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzawc;->zzaie:Lcom/google/android/gms/common/api/Api$zza;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/nearby/connection/Connections$MessageListener;)Lcom/google/android/gms/nearby/connection/Connections$zza;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzawc$7;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzawc$7;-><init>(Lcom/google/android/gms/nearby/connection/Connections$MessageListener;)V

    return-object v0
.end method

.method private static zzk(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/zzawb;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "GoogleApiClient parameter is required."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    const-string v1, "GoogleApiClient must be connected."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/nearby/Nearby;->CONNECTIONS_API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api;)Z

    move-result v0

    const-string v1, "GoogleApiClient is not configured to use the Nearby Connections Api. Pass Nearby.CONNECTIONS_API into GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/nearby/Nearby;->CONNECTIONS_API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient has an optional Nearby.CONNECTIONS_API and is not connected to Nearby Connections. Use GoogleApiClient.hasConnectedApi(Nearby.CONNECTIONS_API) to guard this call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzawc;->zzaid:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzawb;

    return-object v0
.end method


# virtual methods
.method public acceptConnectionRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLcom/google/android/gms/nearby/connection/Connections$MessageListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "[B",
            "Lcom/google/android/gms/nearby/connection/Connections$MessageListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {p4}, Lcom/google/android/gms/internal/zzawc;->zza(Lcom/google/android/gms/nearby/connection/Connections$MessageListener;)Lcom/google/android/gms/nearby/connection/Connections$zza;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzawc;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLcom/google/android/gms/nearby/connection/Connections$zza;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public disconnectFromEndpoint(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzawc$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzawc$5;-><init>(Lcom/google/android/gms/internal/zzawc;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    return-void
.end method

.method public getLocalDeviceId(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzawc;->zzk(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/zzawb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzawb;->zzOi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalEndpointId(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzawc;->zzk(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/zzawb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzawb;->zzOh()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rejectConnectionRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzawc$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzawc$14;-><init>(Lcom/google/android/gms/internal/zzawc;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method

.method public sendConnectionRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;Lcom/google/android/gms/nearby/connection/Connections$MessageListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;",
            "Lcom/google/android/gms/nearby/connection/Connections$MessageListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {p6}, Lcom/google/android/gms/internal/zzawc;->zza(Lcom/google/android/gms/nearby/connection/Connections$MessageListener;)Lcom/google/android/gms/nearby/connection/Connections$zza;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzawc;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;Lcom/google/android/gms/nearby/connection/Connections$zza;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public sendReliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[B)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzawc$15;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzawc$15;-><init>(Lcom/google/android/gms/internal/zzawc;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[B)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    return-void
.end method

.method public sendReliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzawc$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzawc$2;-><init>(Lcom/google/android/gms/internal/zzawc;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;[B)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    return-void
.end method

.method public sendUnreliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[B)V
    .locals 1

    invoke-static {p3}, Lcom/google/android/gms/nearby/connection/zzg;->zzB([B)Lcom/google/android/gms/nearby/connection/zzg;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzawc;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/zzg;)Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method

.method public sendUnreliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    invoke-static {p3}, Lcom/google/android/gms/nearby/connection/zzg;->zzB([B)Lcom/google/android/gms/nearby/connection/zzg;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzawc;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;Lcom/google/android/gms/nearby/connection/zzg;)Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method

.method public startAdvertising(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/AppMetadata;JLcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/nearby/connection/AppMetadata;",
            "J",
            "Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$StartAdvertisingResult;",
            ">;"
        }
    .end annotation

    const-string v3, "__LEGACY_SERVICE_ID__"

    new-instance v7, Lcom/google/android/gms/nearby/connection/zza;

    sget-object v0, Lcom/google/android/gms/nearby/connection/zzj;->zzbyj:Lcom/google/android/gms/nearby/connection/zzj;

    invoke-direct {v7, v0}, Lcom/google/android/gms/nearby/connection/zza;-><init>(Lcom/google/android/gms/nearby/connection/zzj;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/zzawc;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;Lcom/google/android/gms/nearby/connection/zza;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public startDiscovery(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v7, Lcom/google/android/gms/nearby/connection/zze;

    sget-object v0, Lcom/google/android/gms/nearby/connection/zzj;->zzbyj:Lcom/google/android/gms/nearby/connection/zzj;

    invoke-direct {v7, v0}, Lcom/google/android/gms/nearby/connection/zze;-><init>(Lcom/google/android/gms/nearby/connection/zzj;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/zzawc;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;Lcom/google/android/gms/nearby/connection/zze;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public stopAdvertising(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzawc$9;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzawc$9;-><init>(Lcom/google/android/gms/internal/zzawc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    return-void
.end method

.method public stopAllEndpoints(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzawc$6;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzawc$6;-><init>(Lcom/google/android/gms/internal/zzawc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    return-void
.end method

.method public stopDiscovery(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzawc;->zzl(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;Lcom/google/android/gms/nearby/connection/zze;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;",
            "Lcom/google/android/gms/nearby/connection/zze;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1, p5}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzr(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzabh;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/zzawc$10;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzawc$10;-><init>(Lcom/google/android/gms/internal/zzawc;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/zze;Lcom/google/android/gms/internal/zzabh;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/zzg;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/nearby/connection/zzg;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzawc$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzawc$3;-><init>(Lcom/google/android/gms/internal/zzawc;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/zzg;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;Lcom/google/android/gms/nearby/connection/zza;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;",
            "Lcom/google/android/gms/nearby/connection/zza;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$StartAdvertisingResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p6

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzr(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzabh;

    move-result-object v11

    new-instance v3, Lcom/google/android/gms/internal/zzawc$8;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/zzawc$8;-><init>(Lcom/google/android/gms/internal/zzawc;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/zza;Lcom/google/android/gms/internal/zzabh;)V

    invoke-virtual {p1, v3}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v2

    return-object v2
.end method

.method public zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;Lcom/google/android/gms/nearby/connection/Connections$zza;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;",
            "Lcom/google/android/gms/nearby/connection/Connections$zza;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1, p5}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzr(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzabh;

    move-result-object v6

    invoke-virtual {p1, p6}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzr(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzabh;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/zzawc$12;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzawc$12;-><init>(Lcom/google/android/gms/internal/zzawc;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/internal/zzabh;Lcom/google/android/gms/internal/zzabh;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLcom/google/android/gms/nearby/connection/Connections$zza;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "[B",
            "Lcom/google/android/gms/nearby/connection/Connections$zza;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1, p4}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzr(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzabh;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/internal/zzawc$13;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzawc$13;-><init>(Lcom/google/android/gms/internal/zzawc;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLcom/google/android/gms/internal/zzabh;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;Lcom/google/android/gms/nearby/connection/zzg;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/nearby/connection/zzg;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzawc$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzawc$4;-><init>(Lcom/google/android/gms/internal/zzawc;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;Lcom/google/android/gms/nearby/connection/zzg;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzl(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzawc$11;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzawc$11;-><init>(Lcom/google/android/gms/internal/zzawc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    return-void
.end method
