.class Lcom/google/android/gms/games/leaderboard/LeaderboardsClient$5;
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

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardsClient$5;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3
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

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-virtual {p1, v2, v0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzl(Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.google.android.gms.games.GAME_PACKAGE_NAME"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
