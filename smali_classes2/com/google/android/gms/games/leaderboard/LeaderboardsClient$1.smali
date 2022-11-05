.class Lcom/google/android/gms/games/leaderboard/LeaderboardsClient$1;
.super Lcom/google/android/gms/internal/zzabv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/leaderboard/LeaderboardsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzabv",
        "<",
        "Lcom/google/android/gms/games/internal/GamesClientImpl;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardsClient$1;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/internal/GamesClientImpl;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzES()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
