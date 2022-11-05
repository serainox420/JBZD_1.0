.class public final Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;
.super Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/games/internal/experience/ExperienceEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaXJ:Ljava/lang/String;

.field private final zzaXy:Landroid/net/Uri;

.field private final zzakD:I

.field private final zzbcA:J

.field private final zzbcB:I

.field private final zzbcu:Ljava/lang/String;

.field private final zzbcv:Lcom/google/android/gms/games/GameEntity;

.field private final zzbcw:Ljava/lang/String;

.field private final zzbcx:Ljava/lang/String;

.field private final zzbcy:J

.field private final zzbcz:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/internal/experience/ExperienceEvent;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFG()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzbcu:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/games/GameEntity;

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzbcv:Lcom/google/android/gms/games/GameEntity;

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzbcw:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzbcx:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzaXJ:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzaXy:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFJ()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzbcy:J

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFK()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzbcz:J

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFL()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzbcA:J

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->getType()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzakD:I

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFM()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzbcB:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/games/GameEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJJII)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzbcu:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzbcv:Lcom/google/android/gms/games/GameEntity;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzbcw:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzbcx:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzaXJ:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzaXy:Landroid/net/Uri;

    iput-wide p7, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzbcy:J

    iput-wide p9, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzbcz:J

    iput-wide p11, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzbcA:J

    iput p13, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzakD:I

    iput p14, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzbcB:I

    return-void
.end method

.method static zza(Lcom/google/android/gms/games/internal/experience/ExperienceEvent;)I
    .locals 4

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFG()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFH()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFI()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFJ()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFK()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFL()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFM()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static zza(Lcom/google/android/gms/games/internal/experience/ExperienceEvent;Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p0, p1, :cond_0

    check-cast p1, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFG()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFG()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFH()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFH()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->getIconImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->getIconImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFJ()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFJ()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFK()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFK()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFL()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFL()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFM()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFM()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto/16 :goto_0
.end method

.method static zzb(Lcom/google/android/gms/games/internal/experience/ExperienceEvent;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "ExperienceId"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Game"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "DisplayTitle"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "DisplayDescription"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "IconImageUrl"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "IconImageUri"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "CreatedTimestamp"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFJ()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "XpEarned"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFK()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "CurrentXp"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFL()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Type"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "NewLevel"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzFM()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zza(Lcom/google/android/gms/games/internal/experience/ExperienceEvent;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzFN()Lcom/google/android/gms/games/internal/experience/ExperienceEvent;

    move-result-object v0

    return-object v0
.end method

.method public getGame()Lcom/google/android/gms/games/Game;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzbcv:Lcom/google/android/gms/games/GameEntity;

    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzaXy:Landroid/net/Uri;

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzaXJ:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzakD:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zza(Lcom/google/android/gms/games/internal/experience/ExperienceEvent;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzb(Lcom/google/android/gms/games/internal/experience/ExperienceEvent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntityCreator;->zza(Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzFG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzbcu:Ljava/lang/String;

    return-object v0
.end method

.method public zzFH()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzbcw:Ljava/lang/String;

    return-object v0
.end method

.method public zzFI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzbcx:Ljava/lang/String;

    return-object v0
.end method

.method public zzFJ()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzbcy:J

    return-wide v0
.end method

.method public zzFK()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzbcz:J

    return-wide v0
.end method

.method public zzFL()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzbcA:J

    return-wide v0
.end method

.method public zzFM()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzbcB:I

    return v0
.end method

.method public zzFN()Lcom/google/android/gms/games/internal/experience/ExperienceEvent;
    .locals 0

    return-object p0
.end method
