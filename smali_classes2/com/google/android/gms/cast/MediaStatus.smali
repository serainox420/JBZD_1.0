.class public Lcom/google/android/gms/cast/MediaStatus;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final COMMAND_PAUSE:J = 0x1L

.field public static final COMMAND_SEEK:J = 0x2L

.field public static final COMMAND_SET_VOLUME:J = 0x4L

.field public static final COMMAND_SKIP_BACKWARD:J = 0x20L

.field public static final COMMAND_SKIP_FORWARD:J = 0x10L

.field public static final COMMAND_TOGGLE_MUTE:J = 0x8L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/cast/MediaStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final IDLE_REASON_CANCELED:I = 0x2

.field public static final IDLE_REASON_ERROR:I = 0x4

.field public static final IDLE_REASON_FINISHED:I = 0x1

.field public static final IDLE_REASON_INTERRUPTED:I = 0x3

.field public static final IDLE_REASON_NONE:I = 0x0

.field public static final PLAYER_STATE_BUFFERING:I = 0x4

.field public static final PLAYER_STATE_IDLE:I = 0x1

.field public static final PLAYER_STATE_PAUSED:I = 0x3

.field public static final PLAYER_STATE_PLAYING:I = 0x2

.field public static final PLAYER_STATE_UNKNOWN:I = 0x0

.field public static final REPEAT_MODE_REPEAT_ALL:I = 0x1

.field public static final REPEAT_MODE_REPEAT_ALL_AND_SHUFFLE:I = 0x3

.field public static final REPEAT_MODE_REPEAT_OFF:I = 0x0

.field public static final REPEAT_MODE_REPEAT_SINGLE:I = 0x2


# instance fields
.field zzamN:Ljava/lang/String;

.field private zzamO:Lorg/json/JSONObject;

.field private zzaoE:[J

.field private zzaoG:J

.field private zzaoH:I

.field private zzaoI:D

.field private zzaoJ:I

.field private zzaoK:I

.field private zzaoL:J

.field zzaoM:J

.field private zzaoN:D

.field private zzaoO:Z

.field private zzaoP:I

.field private zzaoQ:I

.field zzaoR:I

.field final zzaoS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private zzaoT:Z

.field private zzaoU:Lcom/google/android/gms/cast/AdBreakStatus;

.field private zzaoV:Lcom/google/android/gms/cast/VideoInfo;

.field private final zzaoW:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzaoq:Lcom/google/android/gms/cast/MediaInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/MediaStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/List;ZLcom/google/android/gms/cast/AdBreakStatus;Lcom/google/android/gms/cast/VideoInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/MediaInfo;",
            "JIDIIJJDZ[JII",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;Z",
            "Lcom/google/android/gms/cast/AdBreakStatus;",
            "Lcom/google/android/gms/cast/VideoInfo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoW:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    iput-wide p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoG:J

    iput p4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoH:I

    iput-wide p5, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoI:D

    iput p7, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoJ:I

    iput p8, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoK:I

    iput-wide p9, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoL:J

    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoM:J

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoN:D

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoO:Z

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoE:[J

    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoP:I

    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoQ:I

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamN:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamN:Ljava/lang/String;

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamN:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move/from16 v0, p20

    iput v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoR:I

    if-eqz p21, :cond_0

    invoke-interface/range {p21 .. p21}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface/range {p21 .. p21}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/cast/MediaQueueItem;

    move-object/from16 v0, p21

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-direct {p0, v2}, Lcom/google/android/gms/cast/MediaStatus;->zza([Lcom/google/android/gms/cast/MediaQueueItem;)V

    :cond_0
    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoT:Z

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoU:Lcom/google/android/gms/cast/AdBreakStatus;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoV:Lcom/google/android/gms/cast/VideoInfo;

    return-void

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamN:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v27}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/List;ZLcom/google/android/gms/cast/AdBreakStatus;Lcom/google/android/gms/cast/VideoInfo;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/MediaStatus;->zza(Lorg/json/JSONObject;I)I

    return-void
.end method

.method private zza([Lcom/google/android/gms/cast/MediaQueueItem;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoW:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoW:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaQueueItem;->getItemId()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private zza(Lcom/google/android/gms/cast/MediaStatus;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/zzq;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private zzf(IIII)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x2

    if-ne p4, v2, :cond_0

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private zzsz()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoR:I

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoW:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/cast/MediaStatus;

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    if-nez v3, :cond_4

    move v3, v1

    :goto_2
    if-eq v0, v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    :cond_5
    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoG:J

    iget-wide v6, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoG:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_6

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoH:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoH:I

    if-ne v0, v3, :cond_6

    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoI:D

    iget-wide v6, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoI:D

    cmpl-double v0, v4, v6

    if-nez v0, :cond_6

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoJ:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoJ:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoK:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoK:I

    if-ne v0, v3, :cond_6

    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoL:J

    iget-wide v6, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoL:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_6

    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoN:D

    iget-wide v6, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoN:D

    cmpl-double v0, v4, v6

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoO:Z

    iget-boolean v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoO:Z

    if-ne v0, v3, :cond_6

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoP:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoP:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoQ:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoQ:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoR:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoR:I

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoE:[J

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoE:[J

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoM:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v4, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoM:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaStatus;->zza(Lcom/google/android/gms/cast/MediaStatus;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoT:Z

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaStatus;->isPlayingAd()Z

    move-result v3

    if-eq v0, v3, :cond_0

    :cond_6
    move v1, v2

    goto/16 :goto_0
.end method

.method public getActiveTrackIds()[J
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoE:[J

    return-object v0
.end method

.method public getAdBreakStatus()Lcom/google/android/gms/cast/AdBreakStatus;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoU:Lcom/google/android/gms/cast/AdBreakStatus;

    return-object v0
.end method

.method public getCurrentAdBreak()Lcom/google/android/gms/cast/AdBreakInfo;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoU:Lcom/google/android/gms/cast/AdBreakStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoU:Lcom/google/android/gms/cast/AdBreakStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/AdBreakStatus;->getBreakId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getAdBreaks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/AdBreakInfo;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/AdBreakInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method public getCurrentAdBreakClip()Lcom/google/android/gms/cast/AdBreakClipInfo;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoU:Lcom/google/android/gms/cast/AdBreakStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoU:Lcom/google/android/gms/cast/AdBreakStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/AdBreakStatus;->getBreakClipId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getAdBreakClips()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/AdBreakClipInfo;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/AdBreakClipInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method public getCurrentItemId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoH:I

    return v0
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getIdleReason()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoK:I

    return v0
.end method

.method public getIndexById(I)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoW:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoW:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/MediaQueueItem;

    goto :goto_0
.end method

.method public getItemByIndex(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/MediaQueueItem;

    goto :goto_0
.end method

.method public getLoadingItemId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoP:I

    return v0
.end method

.method public getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    return-object v0
.end method

.method public getPlaybackRate()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoI:D

    return-wide v0
.end method

.method public getPlayerState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoJ:I

    return v0
.end method

.method public getPreloadedItemId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoQ:I

    return v0
.end method

.method public getQueueItem(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/MediaStatus;->getItemByIndex(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v0

    return-object v0
.end method

.method public getQueueItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/MediaStatus;->getItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v0

    return-object v0
.end method

.method public getQueueItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getQueueItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getQueueRepeatMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoR:I

    return v0
.end method

.method public getStreamPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoL:J

    return-wide v0
.end method

.method public getStreamVolume()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoN:D

    return-wide v0
.end method

.method public getVideoInfo()Lcom/google/android/gms/cast/VideoInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoV:Lcom/google/android/gms/cast/VideoInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoG:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoI:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoJ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoK:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoL:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoM:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoN:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoO:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoE:[J

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoP:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoQ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-boolean v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoT:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMediaCommandSupported(J)Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoM:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoO:Z

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoT:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamN:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/zzl;->zza(Lcom/google/android/gms/cast/MediaStatus;Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public zza(Lorg/json/JSONObject;I)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "mediaSessionId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iget-wide v10, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoG:J

    cmp-long v0, v8, v10

    if-eqz v0, :cond_2a

    iput-wide v8, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoG:J

    move v0, v1

    :goto_0
    const-string v3, "playerState"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "playerState"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "IDLE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v3, v1

    :goto_1
    iget v7, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoJ:I

    if-eq v3, v7, :cond_0

    iput v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoJ:I

    or-int/lit8 v0, v0, 0x2

    :cond_0
    if-ne v3, v1, :cond_1

    const-string v3, "idleReason"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "idleReason"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "CANCELLED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    :goto_2
    iget v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoK:I

    if-eq v4, v3, :cond_1

    iput v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoK:I

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const-string v3, "playbackRate"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "playbackRate"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoI:D

    cmpl-double v3, v6, v4

    if-eqz v3, :cond_2

    iput-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoI:D

    or-int/lit8 v0, v0, 0x2

    :cond_2
    const-string v3, "currentTime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_3

    const-string v3, "currentTime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzyr;->zzf(D)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoL:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    iput-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoL:J

    or-int/lit8 v0, v0, 0x2

    :cond_3
    const-string v3, "supportedMediaCommands"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "supportedMediaCommands"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoM:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    iput-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoM:J

    or-int/lit8 v0, v0, 0x2

    :cond_4
    const-string v3, "volume"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    and-int/lit8 v3, p2, 0x1

    if-nez v3, :cond_6

    const-string v3, "volume"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "level"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoN:D

    cmpl-double v6, v4, v6

    if-eqz v6, :cond_5

    iput-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoN:D

    or-int/lit8 v0, v0, 0x2

    :cond_5
    const-string v4, "muted"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-boolean v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoO:Z

    if-eq v3, v4, :cond_6

    iput-boolean v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoO:Z

    or-int/lit8 v0, v0, 0x2

    :cond_6
    const/4 v3, 0x0

    const-string v4, "activeTrackIds"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string v3, "activeTrackIds"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v3, v6, [J

    move v4, v2

    :goto_3
    if-ge v4, v6, :cond_d

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    aput-wide v8, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    const-string v7, "PLAYING"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v3, v4

    goto/16 :goto_1

    :cond_8
    const-string v7, "PAUSED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move v3, v5

    goto/16 :goto_1

    :cond_9
    const-string v7, "BUFFERING"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    move v3, v6

    goto/16 :goto_1

    :cond_a
    const-string v4, "INTERRUPTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v5

    goto/16 :goto_2

    :cond_b
    const-string v4, "FINISHED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v1

    goto/16 :goto_2

    :cond_c
    const-string v4, "ERROR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    move v4, v6

    goto/16 :goto_2

    :cond_d
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoE:[J

    if-nez v4, :cond_1f

    move v4, v1

    :goto_4
    if-eqz v4, :cond_e

    iput-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoE:[J

    :cond_e
    :goto_5
    if-eqz v4, :cond_f

    iput-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoE:[J

    or-int/lit8 v0, v0, 0x2

    :cond_f
    const-string v3, "customData"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "customData"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamN:Ljava/lang/String;

    or-int/lit8 v0, v0, 0x2

    :cond_10
    const-string v3, "media"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "media"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/cast/MediaInfo;

    invoke-direct {v4, v3}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Lorg/json/JSONObject;)V

    iget-object v5, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/cast/MediaInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    :cond_11
    iput-object v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    or-int/lit8 v0, v0, 0x2

    :cond_12
    const-string v4, "metadata"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    or-int/lit8 v0, v0, 0x4

    :cond_13
    const-string v3, "currentItemId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "currentItemId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoH:I

    if-eq v4, v3, :cond_14

    iput v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoH:I

    or-int/lit8 v0, v0, 0x2

    :cond_14
    const-string v3, "preloadedItemId"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoQ:I

    if-eq v4, v3, :cond_15

    iput v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoQ:I

    or-int/lit8 v0, v0, 0x10

    :cond_15
    const-string v3, "loadingItemId"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoP:I

    if-eq v4, v3, :cond_16

    iput v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoP:I

    or-int/lit8 v0, v0, 0x2

    :cond_16
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    if-nez v3, :cond_23

    const/4 v3, -0x1

    :goto_6
    iget v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoJ:I

    iget v5, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoK:I

    iget v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoP:I

    invoke-direct {p0, v4, v5, v6, v3}, Lcom/google/android/gms/cast/MediaStatus;->zzf(IIII)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/MediaStatus;->zzp(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_17

    or-int/lit8 v0, v0, 0x8

    :cond_17
    :goto_7
    const-string v3, "breakStatus"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/cast/AdBreakStatus;->zzl(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/AdBreakStatus;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoU:Lcom/google/android/gms/cast/AdBreakStatus;

    if-nez v4, :cond_18

    if-nez v3, :cond_19

    :cond_18
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoU:Lcom/google/android/gms/cast/AdBreakStatus;

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoU:Lcom/google/android/gms/cast/AdBreakStatus;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/cast/AdBreakStatus;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    :cond_19
    if-eqz v3, :cond_25

    :goto_8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/MediaStatus;->zzam(Z)V

    iput-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoU:Lcom/google/android/gms/cast/AdBreakStatus;

    or-int/lit8 v0, v0, 0x20

    :cond_1a
    const-string v1, "videoInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/cast/VideoInfo;->zzq(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/VideoInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoV:Lcom/google/android/gms/cast/VideoInfo;

    if-nez v2, :cond_1b

    if-nez v1, :cond_1c

    :cond_1b
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoV:Lcom/google/android/gms/cast/VideoInfo;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoV:Lcom/google/android/gms/cast/VideoInfo;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/VideoInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1c
    iput-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoV:Lcom/google/android/gms/cast/VideoInfo;

    or-int/lit8 v0, v0, 0x40

    :cond_1d
    const-string v1, "breakInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    const-string v2, "breakInfo"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/MediaInfo;->zzm(Lorg/json/JSONObject;)V

    or-int/lit8 v0, v0, 0x2

    :cond_1e
    return v0

    :cond_1f
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoE:[J

    array-length v4, v4

    if-eq v4, v6, :cond_20

    move v4, v1

    goto/16 :goto_4

    :cond_20
    move v4, v2

    :goto_9
    if-ge v4, v6, :cond_27

    iget-object v5, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoE:[J

    aget-wide v8, v5, v4

    aget-wide v10, v3, v4

    cmp-long v5, v8, v10

    if-eqz v5, :cond_21

    move v4, v1

    goto/16 :goto_4

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_22
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoE:[J

    if-eqz v4, :cond_26

    move v4, v1

    goto/16 :goto_5

    :cond_23
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result v3

    goto/16 :goto_6

    :cond_24
    iput v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoH:I

    iput v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoP:I

    iput v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoQ:I

    iget-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-direct {p0}, Lcom/google/android/gms/cast/MediaStatus;->zzsz()V

    or-int/lit8 v0, v0, 0x8

    goto/16 :goto_7

    :cond_25
    move v1, v2

    goto/16 :goto_8

    :cond_26
    move v4, v2

    goto/16 :goto_5

    :cond_27
    move v4, v2

    goto/16 :goto_4

    :cond_28
    move v4, v2

    goto/16 :goto_2

    :cond_29
    move v3, v2

    goto/16 :goto_1

    :cond_2a
    move v0, v2

    goto/16 :goto_0
.end method

.method public zzam(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoT:Z

    return-void
.end method

.method zzp(Lorg/json/JSONObject;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v3, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v4, "repeatMode"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoR:I

    const-string v5, "repeatMode"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    move v0, v4

    :goto_1
    :pswitch_0
    iget v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoR:I

    if-eq v3, v0, :cond_8

    iput v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoR:I

    move v0, v2

    :goto_2
    const-string v3, "items"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "items"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    move v3, v1

    :goto_3
    if-ge v3, v5, :cond_1

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "itemId"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :sswitch_0
    const-string v7, "REPEAT_OFF"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v1

    goto :goto_0

    :sswitch_1
    const-string v7, "REPEAT_ALL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v2

    goto :goto_0

    :sswitch_2
    const-string v7, "REPEAT_SINGLE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v0

    goto :goto_0

    :sswitch_3
    const-string v7, "REPEAT_ALL_AND_SHUFFLE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v3

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_1

    :pswitch_2
    move v0, v2

    goto :goto_1

    :pswitch_3
    move v0, v3

    goto :goto_1

    :cond_1
    new-array v7, v5, [Lcom/google/android/gms/cast/MediaQueueItem;

    move v3, v1

    move v1, v0

    :goto_4
    if-ge v3, v5, :cond_4

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/google/android/gms/cast/MediaStatus;->getItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9, v8}, Lcom/google/android/gms/cast/MediaQueueItem;->zzo(Lorg/json/JSONObject;)Z

    move-result v8

    or-int/2addr v1, v8

    aput-object v9, v7, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/MediaStatus;->getIndexById(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v3, v0, :cond_6

    move v0, v2

    :goto_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_4

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoH:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;-><init>(Lcom/google/android/gms/cast/MediaInfo;)V

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->build()Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v0

    aput-object v0, v7, v3

    aget-object v0, v7, v3

    invoke-virtual {v0, v8}, Lcom/google/android/gms/cast/MediaQueueItem;->zzo(Lorg/json/JSONObject;)Z

    move v0, v2

    goto :goto_5

    :cond_3
    new-instance v0, Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-direct {v0, v8}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lorg/json/JSONObject;)V

    aput-object v0, v7, v3

    move v0, v2

    goto :goto_5

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v5, :cond_5

    :goto_6
    invoke-direct {p0, v7}, Lcom/google/android/gms/cast/MediaStatus;->zza([Lcom/google/android/gms/cast/MediaQueueItem;)V

    :goto_7
    return v2

    :cond_5
    move v2, v1

    goto :goto_6

    :cond_6
    move v0, v1

    goto :goto_5

    :cond_7
    move v2, v0

    goto :goto_7

    :cond_8
    move v0, v1

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x42a82c11 -> :sswitch_3
        -0x3964a094 -> :sswitch_2
        0x621b08dd -> :sswitch_1
        0x621b3cab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public zzsy()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoG:J

    return-wide v0
.end method
