.class final Lcom/google/android/gms/games/internal/game/GameBadgeEntity$GameBadgeEntityCreatorCompat;
.super Lcom/google/android/gms/games/internal/game/GameBadgeEntityCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/game/GameBadgeEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GameBadgeEntityCreatorCompat"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntityCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity$GameBadgeEntityCreatorCompat;->zzfL(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    move-result-object v0

    return-object v0
.end method

.method public zzfL(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/GameBadgeEntity;
    .locals 5

    invoke-static {}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzDO()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zze(Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/games/internal/game/GameBadgeEntityCreator;->zzfL(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    new-instance v1, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method
