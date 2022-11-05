.class public final Lcom/google/android/gms/games/PlayerLevelInfo;
.super Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/PlayerLevelInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaYA:J

.field private final zzaYB:Lcom/google/android/gms/games/PlayerLevel;

.field private final zzaYC:Lcom/google/android/gms/games/PlayerLevel;

.field private final zzaYz:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/PlayerLevelInfoCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/PlayerLevelInfoCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/PlayerLevelInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJLcom/google/android/gms/games/PlayerLevel;Lcom/google/android/gms/games/PlayerLevel;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;-><init>()V

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzaw(Z)V

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-wide p1, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzaYz:J

    iput-wide p3, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzaYA:J

    iput-object p5, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzaYB:Lcom/google/android/gms/games/PlayerLevel;

    iput-object p6, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzaYC:Lcom/google/android/gms/games/PlayerLevel;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/PlayerLevelInfo;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p1, p0, :cond_0

    check-cast p1, Lcom/google/android/gms/games/PlayerLevelInfo;

    iget-wide v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzaYz:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/android/gms/games/PlayerLevelInfo;->zzaYz:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzaYA:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/android/gms/games/PlayerLevelInfo;->zzaYA:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzaYB:Lcom/google/android/gms/games/PlayerLevel;

    iget-object v3, p1, Lcom/google/android/gms/games/PlayerLevelInfo;->zzaYB:Lcom/google/android/gms/games/PlayerLevel;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzaYC:Lcom/google/android/gms/games/PlayerLevel;

    iget-object v3, p1, Lcom/google/android/gms/games/PlayerLevelInfo;->zzaYC:Lcom/google/android/gms/games/PlayerLevel;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getCurrentLevel()Lcom/google/android/gms/games/PlayerLevel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzaYB:Lcom/google/android/gms/games/PlayerLevel;

    return-object v0
.end method

.method public getCurrentXpTotal()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzaYz:J

    return-wide v0
.end method

.method public getLastLevelUpTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzaYA:J

    return-wide v0
.end method

.method public getNextLevel()Lcom/google/android/gms/games/PlayerLevel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzaYC:Lcom/google/android/gms/games/PlayerLevel;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzaYz:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzaYA:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzaYB:Lcom/google/android/gms/games/PlayerLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzaYC:Lcom/google/android/gms/games/PlayerLevel;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMaxLevel()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzaYB:Lcom/google/android/gms/games/PlayerLevel;

    iget-object v1, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzaYC:Lcom/google/android/gms/games/PlayerLevel;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/PlayerLevel;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/PlayerLevelInfoCreator;->zza(Lcom/google/android/gms/games/PlayerLevelInfo;Landroid/os/Parcel;I)V

    return-void
.end method
