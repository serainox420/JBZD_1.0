.class public final Lcom/google/android/gms/games/PlayerRef;
.super Lcom/google/android/gms/common/data/zzc;

# interfaces
.implements Lcom/google/android/gms/games/Player;


# instance fields
.field private final zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

.field private final zzaYE:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;

.field private final zzaYm:Lcom/google/android/gms/games/PlayerLevelInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
    .locals 9

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    new-instance v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    invoke-direct {v0, p3}, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    new-instance v0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;

    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILcom/google/android/gms/games/internal/player/PlayerColumnNames;)V

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYE:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;

    invoke-direct {p0}, Lcom/google/android/gms/games/PlayerRef;->zzDX()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcU:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getInteger(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcX:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getInteger(Ljava/lang/String;)I

    move-result v8

    new-instance v0, Lcom/google/android/gms/games/PlayerLevel;

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v2, v2, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcV:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v4, v4, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcW:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/PlayerLevel;-><init>(IJJ)V

    if-eq v1, v8, :cond_1

    new-instance v2, Lcom/google/android/gms/games/PlayerLevel;

    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v1, v1, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcW:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v1, v1, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    move v3, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/games/PlayerLevel;-><init>(IJJ)V

    move-object v7, v2

    :goto_0
    new-instance v1, Lcom/google/android/gms/games/PlayerLevelInfo;

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v2, v2, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcT:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v4, v4, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcZ:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/games/PlayerLevelInfo;-><init>(JJLcom/google/android/gms/games/PlayerLevel;Lcom/google/android/gms/games/PlayerLevel;)V

    iput-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYm:Lcom/google/android/gms/games/PlayerLevelInfo;

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYm:Lcom/google/android/gms/games/PlayerLevelInfo;

    goto :goto_1

    :cond_1
    move-object v7, v0

    goto :goto_0
.end method

.method private zzDX()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v1, v1, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcT:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/PlayerRef;->zzdh(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v1, v1, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcT:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/PlayerEntity;->zza(Lcom/google/android/gms/games/Player;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/Player;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/PlayerEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->freeze()Lcom/google/android/gms/games/Player;

    move-result-object v0

    return-object v0
.end method

.method public getBannerImageLandscapeUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbdk:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->zzdg(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getBannerImageLandscapeUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbdl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBannerImagePortraitUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbdm:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->zzdg(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getBannerImagePortraitUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbdn:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Landroid/database/CharArrayBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcL:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/PlayerRef;->zza(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getHiResImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcO:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->zzdg(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getHiResImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcM:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->zzdg(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastPlayedWithTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->zzdf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->zzdh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYm:Lcom/google/android/gms/games/PlayerLevelInfo;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcK:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRetrievedTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcQ:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(Landroid/database/CharArrayBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->title:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/PlayerRef;->zza(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public hasHiResImage()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIconImage()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zza(Lcom/google/android/gms/games/Player;)I

    move-result v0

    return v0
.end method

.method public isMuted()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbdq:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zzb(Lcom/google/android/gms/games/Player;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/Player;

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/PlayerEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzDQ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbdj:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzDR()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbdi:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public zzDS()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public zzDT()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbdb:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public zzDU()Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbdc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->zzdh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYE:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;

    goto :goto_0
.end method

.method public zzDV()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbdo:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public zzDW()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzaYD:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbdp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
