.class public Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;
.super Ljava/lang/Object;
.source "AudioTriggerer.java"


# static fields
.field static a:Z

.field public static audioRecorder:Landroid/media/AudioRecord;

.field static b:Z

.field static c:Ljava/util/Timer;

.field public static callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/re/container/mraidimpl/AudioTriggerCallback;",
            ">;"
        }
    .end annotation
.end field

.field static d:J

.field static e:J

.field private static f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->d:J

    const-wide/16 v0, 0x32

    sput-wide v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->e:J

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->audioRecorder:Landroid/media/AudioRecord;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->callbacks:Ljava/util/List;

    .line 162
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->f:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1f40
        0x2b11
        0x5622
        0xac44
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()V
    .locals 0

    .prologue
    .line 21
    invoke-static {}, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->d()V

    return-void
.end method

.method private static a(D)V
    .locals 4

    .prologue
    .line 51
    sget-object v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerCallback;

    .line 53
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/inmobi/re/container/mraidimpl/AudioTriggerCallback;->audioLevel(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v2, "AudioTriggerer: One of the mic listeners has a problem."

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method public static addEventListener(Lcom/inmobi/re/container/mraidimpl/AudioTriggerCallback;)V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->callbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 37
    invoke-static {}, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->b()V

    .line 39
    :cond_0
    return-void
.end method

.method private static b()V
    .locals 6

    .prologue
    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->a:Z

    .line 63
    invoke-static {}, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->h()Landroid/media/AudioRecord;

    move-result-object v0

    sput-object v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->audioRecorder:Landroid/media/AudioRecord;

    .line 64
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->c:Ljava/util/Timer;

    .line 65
    sget-object v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->c:Ljava/util/Timer;

    new-instance v1, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer$1;

    invoke-direct {v1}, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer$1;-><init>()V

    sget-wide v2, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->d:J

    sget-wide v4, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->e:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 70
    return-void
.end method

.method private static c()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->a:Z

    .line 75
    sget-object v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->audioRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 76
    invoke-static {}, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->g()V

    .line 80
    :cond_0
    :try_start_0
    sget-object v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 81
    sget-object v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 82
    sget-object v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 83
    sget-object v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 86
    :catch_1
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private static d()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 94
    const/16 v0, 0x200

    .line 95
    sget-object v2, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->audioRecorder:Landroid/media/AudioRecord;

    if-nez v2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    sget-object v2, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 98
    new-array v4, v0, [S

    .line 100
    new-array v5, v9, [F

    .line 102
    sput-boolean v6, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->b:Z

    .line 106
    :try_start_0
    sget-object v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_1
    invoke-static {}, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 113
    sget-object v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->audioRecorder:Landroid/media/AudioRecord;

    array-length v2, v4

    invoke-virtual {v0, v4, v1, v2}, Landroid/media/AudioRecord;->read([SII)I

    move-result v6

    move v2, v1

    move v0, v3

    .line 117
    :goto_2
    if-ge v2, v6, :cond_3

    .line 118
    aget-short v7, v4, v2

    add-int/lit8 v8, v2, 0x1

    aget-short v8, v4, v8

    or-int/2addr v7, v8

    int-to-short v7, v7

    .line 119
    if-eqz v7, :cond_2

    .line 120
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    div-int/2addr v7, v6

    int-to-float v7, v7

    add-float/2addr v0, v7

    .line 117
    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 125
    :cond_3
    aput v0, v5, v1

    move v0, v1

    move v2, v3

    .line 127
    :goto_3
    if-ge v0, v9, :cond_4

    .line 128
    aget v7, v5, v0

    add-float/2addr v2, v7

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 130
    :cond_4
    int-to-float v0, v6

    div-float v0, v2, v0

    const/high16 v2, 0x42000000    # 32.0f

    div-float/2addr v0, v2

    float-to-double v6, v0

    invoke-static {v6, v7}, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->a(D)V

    goto :goto_1

    .line 132
    :cond_5
    invoke-static {}, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->e()V

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static e()V
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->audioRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 138
    invoke-static {}, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->g()V

    .line 142
    :cond_0
    :try_start_0
    sget-object v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 143
    sget-object v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    :cond_1
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 147
    :catch_1
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private static f()Z
    .locals 1

    .prologue
    .line 154
    sget-boolean v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->b:Z

    return v0
.end method

.method private static g()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->b:Z

    .line 159
    return-void
.end method

.method private static h()Landroid/media/AudioRecord;
    .locals 15

    .prologue
    .line 166
    sget-object v9, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->f:[I

    array-length v10, v9

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v10, :cond_3

    aget v2, v9, v8

    .line 167
    const/4 v0, 0x2

    new-array v11, v0, [S

    fill-array-data v11, :array_0

    array-length v12, v11

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-ge v7, v12, :cond_2

    aget-short v4, v11, v7

    .line 170
    const/4 v0, 0x2

    new-array v13, v0, [S

    fill-array-data v13, :array_1

    array-length v14, v13

    const/4 v0, 0x0

    move v6, v0

    :goto_2
    if-ge v6, v14, :cond_1

    aget-short v3, v13, v6

    .line 174
    :try_start_0
    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 177
    const/4 v0, -0x2

    if-eq v5, v0, :cond_0

    .line 179
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 183
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 191
    :goto_3
    return-object v0

    .line 186
    :catch_0
    move-exception v0

    .line 170
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 167
    :cond_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 166
    :cond_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 191
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 167
    nop

    :array_0
    .array-data 2
        0x3s
        0x2s
    .end array-data

    .line 170
    :array_1
    .array-data 2
        0x10s
        0xcs
    .end array-data
.end method

.method public static removeEventListener(Lcom/inmobi/re/container/mraidimpl/AudioTriggerCallback;)V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->callbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->c()V

    .line 47
    :cond_0
    return-void
.end method
