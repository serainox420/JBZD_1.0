.class Lcom/google/android/gms/games/achievement/AchievementsClient$2;
.super Lcom/google/android/gms/internal/zzabv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/achievement/AchievementsClient;
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

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/achievement/AchievementsClient$2;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

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

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/games/achievement/AchievementEntity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
