.class public Lcom/google/android/gms/games/achievement/LoadAchievementsResponse;
.super Lcom/google/android/gms/common/api/zze;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/zze",
        "<",
        "Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;",
        ">;",
        "Lcom/google/android/gms/common/api/Releasable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zze;-><init>()V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/LoadAchievementsResponse;->zzvs()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;->release()V

    return-void
.end method
