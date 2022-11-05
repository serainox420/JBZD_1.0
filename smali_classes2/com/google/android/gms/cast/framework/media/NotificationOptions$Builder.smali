.class public final Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/media/NotificationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzarX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzarY:[I

.field private zzarZ:J

.field private zzasa:Ljava/lang/String;

.field private zzasb:I

.field private zzasc:I

.field private zzasd:I

.field private zzase:I

.field private zzasf:I

.field private zzasg:I

.field private zzash:I

.field private zzasi:I

.field private zzasj:I

.field private zzask:I

.field private zzasl:I

.field private zzasm:I

.field private zzasn:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zztD()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzarX:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zztE()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzarY:[I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_small_icon:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasb:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_stop_live_stream:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasc:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_pause:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasd:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_play:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzase:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_skip_next:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasf:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_skip_prev:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasg:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_forward:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzash:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_forward10:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasi:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_forward30:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasj:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_rewind:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzask:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_rewind10:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasl:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_rewind30:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasm:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_disconnect:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasn:I

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzarZ:J

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/framework/media/NotificationOptions;
    .locals 36

    new-instance v3, Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzarX:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzarY:[I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzarZ:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasa:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasb:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasc:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasd:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzase:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasf:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasg:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzash:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasi:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasj:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzask:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasl:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasm:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasn:I

    move/from16 v21, v0

    sget v22, Lcom/google/android/gms/R$dimen;->cast_notification_image_size:I

    sget v23, Lcom/google/android/gms/R$string;->cast_casting_to_device:I

    sget v24, Lcom/google/android/gms/R$string;->cast_stop_live_stream:I

    sget v25, Lcom/google/android/gms/R$string;->cast_pause:I

    sget v26, Lcom/google/android/gms/R$string;->cast_play:I

    sget v27, Lcom/google/android/gms/R$string;->cast_skip_next:I

    sget v28, Lcom/google/android/gms/R$string;->cast_skip_prev:I

    sget v29, Lcom/google/android/gms/R$string;->cast_forward:I

    sget v30, Lcom/google/android/gms/R$string;->cast_forward_10:I

    sget v31, Lcom/google/android/gms/R$string;->cast_forward_30:I

    sget v32, Lcom/google/android/gms/R$string;->cast_rewind:I

    sget v33, Lcom/google/android/gms/R$string;->cast_rewind_10:I

    sget v34, Lcom/google/android/gms/R$string;->cast_rewind_30:I

    sget v35, Lcom/google/android/gms/R$string;->cast_disconnect:I

    invoke-direct/range {v3 .. v35}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;-><init>(Ljava/util/List;[IJLjava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIII)V

    return-object v3
.end method

.method public setActions(Ljava/util/List;[I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[I)",
            "Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;"
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "When setting actions to null, you must also set compatActionIndices to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "When setting compatActionIndices to null, you must also set actions to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    array-length v0, p2

    if-le v0, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "Invalid number of compat actions: %d > %d."

    new-array v5, v6, [Ljava/lang/Object;

    array-length v6, p2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    array-length v3, p2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_5

    aget v4, p2, v0

    if-ltz v4, :cond_3

    if-lt v4, v2, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "Index %d in compatActionIndices out of range: [0, %d]"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v1

    add-int/lit8 v1, v2, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzarX:Ljava/util/List;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzarY:[I

    :goto_1
    return-object p0

    :cond_6
    invoke-static {}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zztD()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzarX:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zztE()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzarY:[I

    goto :goto_1
.end method

.method public setDisconnectDrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasn:I

    return-object p0
.end method

.method public setForward10DrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasi:I

    return-object p0
.end method

.method public setForward30DrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasj:I

    return-object p0
.end method

.method public setForwardDrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzash:I

    return-object p0
.end method

.method public setPauseDrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasd:I

    return-object p0
.end method

.method public setPlayDrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzase:I

    return-object p0
.end method

.method public setRewind10DrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasl:I

    return-object p0
.end method

.method public setRewind30DrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasm:I

    return-object p0
.end method

.method public setRewindDrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzask:I

    return-object p0
.end method

.method public setSkipNextDrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasf:I

    return-object p0
.end method

.method public setSkipPrevDrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasg:I

    return-object p0
.end method

.method public setSkipStepMs(J)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "skipStepMs must be positive."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzarZ:J

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSmallIconDrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasb:I

    return-object p0
.end method

.method public setStopLiveStreamDrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasc:I

    return-object p0
.end method

.method public setTargetActivityClassName(Ljava/lang/String;)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzasa:Ljava/lang/String;

    return-object p0
.end method
