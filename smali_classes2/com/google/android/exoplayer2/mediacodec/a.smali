.class public final Lcom/google/android/exoplayer2/mediacodec/a;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Landroid/media/MediaCodecInfo$CodecCapabilities;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->a:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/a;->d:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/a;->e:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 98
    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/google/android/exoplayer2/mediacodec/a;->a(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->b:Z

    .line 99
    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/google/android/exoplayer2/mediacodec/a;->c(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/a;->c:Z

    .line 100
    return-void

    :cond_0
    move v0, v2

    .line 98
    goto :goto_0

    :cond_1
    move v1, v2

    .line 99
    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/exoplayer2/mediacodec/a;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/a;

    invoke-direct {v0, p0, v1, v1}, Lcom/google/android/exoplayer2/mediacodec/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Lcom/google/android/exoplayer2/mediacodec/a;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    return-object v0
.end method

.method private static a(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    .prologue
    .line 274
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/a;->b(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 285
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_1

    .line 286
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v0

    .line 287
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v0

    goto :goto_0
.end method

.method private static b(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 279
    const-string v0, "adaptive-playback"

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 264
    const-string v0, "MediaCodecInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoSupport ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/util/v;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void
.end method

.method private static c(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    .prologue
    .line 291
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/a;->d(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 269
    const-string v0, "MediaCodecInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AssumedSupport ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/util/v;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void
.end method

.method private static d(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 296
    const-string v0, "tunneled-playback"

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(II)Landroid/graphics/Point;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 196
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/a;->e:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v1, :cond_0

    .line 197
    const-string v1, "align.caps"

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/a;->c(Ljava/lang/String;)V

    .line 208
    :goto_0
    return-object v0

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/a;->e:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    .line 201
    if-nez v1, :cond_1

    .line 202
    const-string v1, "align.vCaps"

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v2

    .line 206
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v1

    .line 207
    new-instance v0, Landroid/graphics/Point;

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/v;->a(II)I

    move-result v3

    mul-int/2addr v2, v3

    .line 208
    invoke-static {p2, v1}, Lcom/google/android/exoplayer2/util/v;->a(II)I

    move-result v3

    mul-int/2addr v1, v3

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method public a(I)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 221
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/a;->e:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v1, :cond_0

    .line 222
    const-string v1, "sampleRate.caps"

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/a;->c(Ljava/lang/String;)V

    .line 234
    :goto_0
    return v0

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/a;->e:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v1

    .line 226
    if-nez v1, :cond_1

    .line 227
    const-string v1, "sampleRate.aCaps"

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_1
    invoke-virtual {v1, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sampleRate.support, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(IID)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 159
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/a;->e:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v1, :cond_0

    .line 160
    const-string v1, "sizeAndRate.caps"

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/a;->c(Ljava/lang/String;)V

    .line 179
    :goto_0
    return v0

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/a;->e:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    .line 164
    if-nez v1, :cond_1

    .line 165
    const-string v1, "sizeAndRate.vCaps"

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_1
    invoke-static {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/a;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v2

    if-nez v2, :cond_4

    .line 172
    if-ge p1, p2, :cond_2

    .line 173
    invoke-static {v1, p2, p1, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/a;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v1

    if-nez v1, :cond_3

    .line 174
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sizeAndRate.support, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sizeAndRate.rotated, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/a;->d(Ljava/lang/String;)V

    .line 179
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->e:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->e:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->e:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    goto :goto_0
.end method

.method public b(I)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 247
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/a;->e:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v1, :cond_0

    .line 248
    const-string v1, "channelCount.caps"

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/a;->c(Ljava/lang/String;)V

    .line 260
    :goto_0
    return v0

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/a;->e:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v1

    .line 252
    if-nez v1, :cond_1

    .line 253
    const-string v1, "channelCount.aCaps"

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v1

    if-ge v1, p1, :cond_2

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channelCount.support, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 120
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 143
    :goto_0
    return v0

    .line 123
    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/i;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 124
    if-nez v4, :cond_2

    move v0, v1

    .line 125
    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "codec.mime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/a;->c(Ljava/lang/String;)V

    move v0, v2

    .line 129
    goto :goto_0

    .line 131
    :cond_3
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 132
    if-nez v5, :cond_4

    move v0, v1

    .line 134
    goto :goto_0

    .line 136
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/a;->a()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v6

    array-length v7, v6

    move v3, v2

    :goto_1
    if-ge v3, v7, :cond_6

    aget-object v8, v6, v3

    .line 137
    iget v9, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v9, v0, :cond_5

    iget v8, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 138
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v8, v0, :cond_5

    move v0, v1

    .line 139
    goto :goto_0

    .line 136
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 142
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "codec.profileLevel, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/a;->c(Ljava/lang/String;)V

    move v0, v2

    .line 143
    goto/16 :goto_0
.end method
