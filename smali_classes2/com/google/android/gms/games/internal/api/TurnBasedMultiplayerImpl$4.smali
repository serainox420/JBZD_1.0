.class Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$4;
.super Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$UpdateMatchImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;->takeTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbca:Ljava/lang/String;

.field final synthetic zzbcc:[B

.field final synthetic zzbcd:Ljava/lang/String;

.field final synthetic zzbce:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$4;->zzbca:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$4;->zzbcc:[B

    iput-object p5, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$4;->zzbcd:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$4;->zzbce:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$UpdateMatchImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$4;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$4;->zzbca:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$4;->zzbcc:[B

    iget-object v4, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$4;->zzbcd:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$4;->zzbce:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V

    return-void
.end method
