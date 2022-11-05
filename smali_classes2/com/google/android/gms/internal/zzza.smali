.class public Lcom/google/android/gms/internal/zzza;
.super Lcom/google/android/gms/internal/zzyo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzza$zzb;,
        Lcom/google/android/gms/internal/zzza$zza;
    }
.end annotation


# static fields
.field public static final NAMESPACE:Ljava/lang/String;


# instance fields
.field private final zzavb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzzd;",
            ">;"
        }
    .end annotation
.end field

.field private zzawJ:J

.field private zzawK:Lcom/google/android/gms/cast/MediaStatus;

.field private zzawL:Lcom/google/android/gms/internal/zzza$zza;

.field private final zzawM:Lcom/google/android/gms/internal/zzzd;

.field private final zzawN:Lcom/google/android/gms/internal/zzzd;

.field private final zzawO:Lcom/google/android/gms/internal/zzzd;

.field private final zzawP:Lcom/google/android/gms/internal/zzzd;

.field private final zzawQ:Lcom/google/android/gms/internal/zzzd;

.field private final zzawR:Lcom/google/android/gms/internal/zzzd;

.field private final zzawS:Lcom/google/android/gms/internal/zzzd;

.field private final zzawT:Lcom/google/android/gms/internal/zzzd;

.field private final zzawU:Lcom/google/android/gms/internal/zzzd;

.field private final zzawV:Lcom/google/android/gms/internal/zzzd;

.field private final zzawW:Lcom/google/android/gms/internal/zzzd;

.field private final zzawX:Lcom/google/android/gms/internal/zzzd;

.field private final zzawY:Lcom/google/android/gms/internal/zzzd;

.field private final zzawZ:Lcom/google/android/gms/internal/zzzd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.google.cast.media"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzyr;->zzcR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzza;->NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 10

    const-wide/32 v8, 0x5265c00

    sget-object v2, Lcom/google/android/gms/internal/zzza;->NAMESPACE:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzzc()Lcom/google/android/gms/common/util/zze;

    move-result-object v3

    const-string v4, "MediaControlChannel"

    const-wide/16 v6, 0x3e8

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzyo;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/util/zze;Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v0, Lcom/google/android/gms/internal/zzzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawM:Lcom/google/android/gms/internal/zzzd;

    new-instance v0, Lcom/google/android/gms/internal/zzzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawN:Lcom/google/android/gms/internal/zzzd;

    new-instance v0, Lcom/google/android/gms/internal/zzzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawO:Lcom/google/android/gms/internal/zzzd;

    new-instance v0, Lcom/google/android/gms/internal/zzzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawP:Lcom/google/android/gms/internal/zzzd;

    new-instance v0, Lcom/google/android/gms/internal/zzzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawQ:Lcom/google/android/gms/internal/zzzd;

    new-instance v0, Lcom/google/android/gms/internal/zzzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawR:Lcom/google/android/gms/internal/zzzd;

    new-instance v0, Lcom/google/android/gms/internal/zzzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawS:Lcom/google/android/gms/internal/zzzd;

    new-instance v0, Lcom/google/android/gms/internal/zzzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawT:Lcom/google/android/gms/internal/zzzd;

    new-instance v0, Lcom/google/android/gms/internal/zzzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawU:Lcom/google/android/gms/internal/zzzd;

    new-instance v0, Lcom/google/android/gms/internal/zzzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawV:Lcom/google/android/gms/internal/zzzd;

    new-instance v0, Lcom/google/android/gms/internal/zzzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawW:Lcom/google/android/gms/internal/zzzd;

    new-instance v0, Lcom/google/android/gms/internal/zzzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawX:Lcom/google/android/gms/internal/zzzd;

    new-instance v0, Lcom/google/android/gms/internal/zzzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawY:Lcom/google/android/gms/internal/zzzd;

    new-instance v0, Lcom/google/android/gms/internal/zzzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawZ:Lcom/google/android/gms/internal/zzzd;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawM:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawN:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawO:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawP:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawQ:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawR:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawS:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawT:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawU:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawV:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawW:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawX:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawY:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawZ:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->zzuN()V

    return-void
.end method

.method private onAdBreakStatusUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawL:Lcom/google/android/gms/internal/zzza$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawL:Lcom/google/android/gms/internal/zzza$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzza$zza;->onAdBreakStatusUpdated()V

    :cond_0
    return-void
.end method

.method private onMetadataUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawL:Lcom/google/android/gms/internal/zzza$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawL:Lcom/google/android/gms/internal/zzza$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzza$zza;->onMetadataUpdated()V

    :cond_0
    return-void
.end method

.method private onPreloadStatusUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawL:Lcom/google/android/gms/internal/zzza$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawL:Lcom/google/android/gms/internal/zzza$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzza$zza;->onPreloadStatusUpdated()V

    :cond_0
    return-void
.end method

.method private onQueueStatusUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawL:Lcom/google/android/gms/internal/zzza$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawL:Lcom/google/android/gms/internal/zzza$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzza$zza;->onQueueStatusUpdated()V

    :cond_0
    return-void
.end method

.method private onStatusUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawL:Lcom/google/android/gms/internal/zzza$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawL:Lcom/google/android/gms/internal/zzza$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzza$zza;->onStatusUpdated()V

    :cond_0
    return-void
.end method

.method private zza(DJJ)J
    .locals 7

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzza;->zzawJ:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    move-wide v2, v0

    :cond_0
    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    :goto_0
    return-wide p3

    :cond_1
    long-to-double v2, v2

    mul-double/2addr v2, p1

    double-to-long v2, v2

    add-long/2addr v2, p3

    cmp-long v4, p5, v0

    if-lez v4, :cond_2

    cmp-long v4, v2, p5

    if-lez v4, :cond_2

    :goto_1
    move-wide p3, p5

    goto :goto_0

    :cond_2
    cmp-long v4, v2, v0

    if-gez v4, :cond_3

    move-wide p5, v0

    goto :goto_1

    :cond_3
    move-wide p5, v2

    goto :goto_1
.end method

.method private zza(JLorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawM:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzzd;->test(J)Z

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawQ:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzzd;->zzuP()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawQ:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzzd;->test(J)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzza;->zzawR:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzzd;->zzuP()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzza;->zzawR:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/zzzd;->test(J)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzza;->zzawS:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzzd;->zzuP()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/google/android/gms/internal/zzza;->zzawS:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/zzzd;->test(J)Z

    move-result v4

    if-nez v4, :cond_c

    :cond_1
    :goto_1
    if-eqz v0, :cond_f

    const/4 v0, 0x2

    :goto_2
    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v1, :cond_d

    :cond_3
    new-instance v0, Lcom/google/android/gms/cast/MediaStatus;

    invoke-direct {v0, p3}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzza;->zzawJ:J

    const/16 v0, 0x7f

    :goto_3
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzza;->zzawJ:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->onStatusUpdated()V

    :cond_4
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzza;->zzawJ:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->onStatusUpdated()V

    :cond_5
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->onMetadataUpdated()V

    :cond_6
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->onQueueStatusUpdated()V

    :cond_7
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->onPreloadStatusUpdated()V

    :cond_8
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzza;->zzawJ:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->onAdBreakStatusUpdated()V

    :cond_9
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzza;->zzawJ:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->onStatusUpdated()V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/gms/internal/zzzd;->zzc(JI)Z

    goto :goto_4

    :cond_b
    move v0, v2

    goto/16 :goto_0

    :cond_c
    move v1, v2

    goto/16 :goto_1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1, p3, v0}, Lcom/google/android/gms/cast/MediaStatus;->zza(Lorg/json/JSONObject;I)I

    move-result v0

    goto :goto_3

    :cond_e
    return-void

    :cond_f
    move v0, v2

    goto/16 :goto_2
.end method

.method private zzuN()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzza;->zzawJ:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzzd;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getApproximateStreamPosition()J
    .locals 8

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-wide v4

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzza;->zzawJ:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getStreamPosition()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v1

    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    if-ne v1, v6, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzza;->zza(DJJ)J

    move-result-wide v4

    goto :goto_0
.end method

.method public getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    return-object v0
.end method

.method public getStreamDuration()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected zzF(J)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzd;

    const/16 v2, 0x836

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/gms/internal/zzzd;->zzd(JI)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/internal/zzzd;->zzqS:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzzd;->zzuP()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawT:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "GET_STATUS"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz v1, :cond_0

    const-string v1, "mediaSessionId"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/MediaStatus;->zzsy()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;DLorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzza$zzb;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Volume cannot be "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawR:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "SET_VOLUME"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzsy()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "level"

    invoke-virtual {v1, v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "volume"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_2

    const-string v1, "customData"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;IJ[Lcom/google/android/gms/cast/MediaQueueItem;ILjava/lang/Integer;Lorg/json/JSONObject;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzza$zzb;
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x35

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "playPosition cannot be negative: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawX:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string v0, "requestId"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v4, "QUEUE_UPDATE"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzsy()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    const-string v0, "currentItemId"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    if-eqz p6, :cond_2

    const-string v0, "jump"

    invoke-virtual {v1, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    if-eqz p5, :cond_4

    array-length v0, p5

    if-lez v0, :cond_4

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v5, p5

    if-ge v0, v5, :cond_3

    aget-object v5, p5, v0

    invoke-virtual {v5}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "items"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    if-eqz p7, :cond_5

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_1
    const-wide/16 v4, -0x1

    cmp-long v0, p3, v4

    if-eqz v0, :cond_6

    const-string v0, "currentTime"

    invoke-static {p3, p4}, Lcom/google/android/gms/internal/zzyr;->zzG(J)D

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_6
    if-eqz p8, :cond_7

    const-string v0, "customData"

    invoke-virtual {v1, v0, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :pswitch_0
    :try_start_1
    const-string v0, "repeatMode"

    const-string v4, "REPEAT_OFF"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :pswitch_1
    const-string v0, "repeatMode"

    const-string v4, "REPEAT_ALL"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :pswitch_2
    const-string v0, "repeatMode"

    const-string v4, "REPEAT_SINGLE"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :pswitch_3
    const-string v0, "repeatMode"

    const-string v4, "REPEAT_ALL_AND_SHUFFLE"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;JILorg/json/JSONObject;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzza$zzb;
        }
    .end annotation

    const/4 v6, 0x1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawQ:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "SEEK"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzsy()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "currentTime"

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/zzyr;->zzG(J)D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    if-ne p4, v6, :cond_2

    const-string v1, "resumeState"

    const-string v4, "PLAYBACK_START"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    const-string v1, "customData"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :cond_2
    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    :try_start_1
    const-string v1, "resumeState"

    const-string v4, "PLAYBACK_PAUSE"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;Lcom/google/android/gms/cast/MediaInfo;ZJ[JLorg/json/JSONObject;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawM:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string v0, "requestId"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v4, "LOAD"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "media"

    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "autoplay"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "currentTime"

    invoke-static {p4, p5}, Lcom/google/android/gms/internal/zzyr;->zzG(J)D

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    if-eqz p6, :cond_1

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v5, p6

    if-ge v0, v5, :cond_0

    aget-wide v6, p6, v0

    invoke-virtual {v4, v0, v6, v7}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "activeTrackIds"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p7, :cond_2

    const-string v0, "customData"

    invoke-virtual {v1, v0, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;Lcom/google/android/gms/cast/TextTrackStyle;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzza$zzb;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawV:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "EDIT_TRACKS_INFO"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v1, "textTrackStyle"

    invoke-virtual {p2}, Lcom/google/android/gms/cast/TextTrackStyle;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzsy()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;Lorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzza$zzb;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawN:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "PAUSE"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzsy()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v1, "customData"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;ZLorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzza$zzb;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawS:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "SET_VOLUME"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzsy()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "muted"

    invoke-virtual {v1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "volume"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string v1, "customData"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;[IILorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzza$zzb;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemIdsToReorder must not be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawZ:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string v0, "requestId"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v4, "QUEUE_REORDER"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzsy()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v5, p2

    if-ge v0, v5, :cond_2

    aget v5, p2, v0

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "itemIds"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_3

    const-string v0, "insertBefore"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    if-eqz p4, :cond_4

    const-string v0, "customData"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;[ILorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzza$zzb;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemIdsToRemove must not be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawY:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string v0, "requestId"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v4, "QUEUE_REMOVE"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzsy()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v5, p2

    if-ge v0, v5, :cond_2

    aget v5, p2, v0

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "itemIds"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_3

    const-string v0, "customData"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;[J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzza$zzb;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawU:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string v0, "requestId"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v4, "EDIT_TRACKS_INFO"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzsy()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v5, p2

    if-ge v0, v5, :cond_0

    aget-wide v6, p2, v0

    invoke-virtual {v4, v0, v6, v7}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "activeTrackIds"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;[Lcom/google/android/gms/cast/MediaQueueItem;IIIJLorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzza$zzb;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemsToInsert must not be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p4, :cond_2

    const/4 v0, -0x1

    if-eq p5, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not set both currentItemId and currentItemIndexInItemsToInsert"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, -0x1

    if-eq p5, v0, :cond_4

    if-ltz p5, :cond_3

    array-length v0, p2

    if-lt p5, v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "currentItemIndexInItemsToInsert %d out of range [0, %d)."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    array-length v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-wide/16 v0, -0x1

    cmp-long v0, p6, v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-gez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "playPosition can not be negative: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawW:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string v0, "requestId"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v4, "QUEUE_INSERT"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzsy()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v5, p2

    if-ge v0, v5, :cond_6

    aget-object v5, p2, v0

    invoke-virtual {v5}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    const-string v0, "items"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_7

    const-string v0, "insertBefore"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_7
    if-eqz p4, :cond_8

    const-string v0, "currentItemId"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_8
    const/4 v0, -0x1

    if-eq p5, v0, :cond_9

    const-string v0, "currentItemIndex"

    invoke-virtual {v1, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_9
    const-wide/16 v4, -0x1

    cmp-long v0, p6, v4

    if-eqz v0, :cond_a

    const-string v0, "currentTime"

    invoke-static {p6, p7}, Lcom/google/android/gms/internal/zzyr;->zzG(J)D

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_a
    if-eqz p8, :cond_b

    const-string v0, "customData"

    invoke-virtual {v1, v0, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;[Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v8, -0x1

    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "items must not be null or empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-ltz p3, :cond_2

    array-length v2, p2

    if-lt p3, v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/16 v3, 0x1f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid startIndex: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    cmp-long v2, p5, v8

    if-eqz v2, :cond_4

    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-gez v2, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/16 v3, 0x36

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "playPosition can not be negative: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzza;->zzawM:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v2, v4, v5, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string v2, "requestId"

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "type"

    const-string v6, "QUEUE_LOAD"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v7, p2

    if-ge v2, v7, :cond_5

    aget-object v7, p2, v2

    invoke-virtual {v7}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const-string v2, "items"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    packed-switch p4, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/16 v6, 0x20

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Invalid repeat mode: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    :cond_6
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v4

    :pswitch_0
    :try_start_1
    const-string v2, "repeatMode"

    const-string v6, "REPEAT_OFF"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    const-string v2, "startIndex"

    invoke-virtual {v3, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    cmp-long v2, p5, v8

    if-eqz v2, :cond_7

    const-string v2, "currentTime"

    invoke-static/range {p5 .. p6}, Lcom/google/android/gms/internal/zzyr;->zzG(J)D

    move-result-wide v6

    invoke-virtual {v3, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_7
    if-eqz p7, :cond_6

    const-string v2, "customData"

    move-object/from16 v0, p7

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :pswitch_1
    const-string v2, "repeatMode"

    const-string v6, "REPEAT_ALL"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :pswitch_2
    const-string v2, "repeatMode"

    const-string v6, "REPEAT_SINGLE"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :pswitch_3
    const-string v2, "repeatMode"

    const-string v6, "REPEAT_ALL_AND_SHUFFLE"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzza$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzawL:Lcom/google/android/gms/internal/zzza$zza;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzzc;Lorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzza$zzb;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawP:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "STOP"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzsy()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v1, "customData"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public zzb(JI)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzzd;->zzc(JI)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzzc;Lorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzza$zzb;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawO:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "PLAY"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzsy()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v1, "customData"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final zzcP(Ljava/lang/String;)V
    .locals 9

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string v4, "message received: %s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "type"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "requestId"

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v0, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    const/4 v0, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    const-string v8, "MEDIA_STATUS"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v8, "INVALID_PLAYER_STATE"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v8, "LOAD_FAILED"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_3
    const-string v8, "LOAD_CANCELLED"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v8, "INVALID_REQUEST"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :pswitch_0
    const-string v0, "status"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v6, v7, v0}, Lcom/google/android/gms/internal/zzza;->zza(JLorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzza;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string v5, "Message is malformed (%s); ignoring: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    aput-object p1, v3, v2

    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/internal/zzyz;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->onStatusUpdated()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->onMetadataUpdated()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->onQueueStatusUpdated()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->onPreloadStatusUpdated()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawT:Lcom/google/android/gms/internal/zzzd;

    const/4 v4, 0x0

    invoke-virtual {v0, v6, v7, v4}, Lcom/google/android/gms/internal/zzzd;->zzc(JI)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string v5, "received unexpected error: Invalid Player State."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v8}, Lcom/google/android/gms/internal/zzyz;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "customData"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzd;

    const/16 v8, 0x834

    invoke-virtual {v0, v6, v7, v8, v4}, Lcom/google/android/gms/internal/zzzd;->zzc(JILjava/lang/Object;)Z

    goto :goto_2

    :pswitch_2
    const-string v0, "customData"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzza;->zzawM:Lcom/google/android/gms/internal/zzzd;

    const/16 v5, 0x834

    invoke-virtual {v4, v6, v7, v5, v0}, Lcom/google/android/gms/internal/zzzd;->zzc(JILjava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_3
    const-string v0, "customData"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzza;->zzawM:Lcom/google/android/gms/internal/zzzd;

    const/16 v5, 0x835

    invoke-virtual {v4, v6, v7, v5, v0}, Lcom/google/android/gms/internal/zzzd;->zzc(JILjava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string v5, "received unexpected error: Invalid Request."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v8}, Lcom/google/android/gms/internal/zzyz;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "customData"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzd;

    const/16 v8, 0x834

    invoke-virtual {v0, v6, v7, v8, v4}, Lcom/google/android/gms/internal/zzzd;->zzc(JILjava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d1d76e8 -> :sswitch_3
        -0x430e23f9 -> :sswitch_4
        -0xfa7664a -> :sswitch_2
        0x19b9b2fb -> :sswitch_1
        0x3115c4cd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public zzsy()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzza$zzb;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzza$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzza$zzb;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->zzsy()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzuz()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzyo;->zzuz()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->zzuN()V

    return-void
.end method
