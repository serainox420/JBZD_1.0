.class public Lcom/google/android/exoplayer2/audio/g;
.super Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/h;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/g$a;
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/exoplayer2/audio/d$a;

.field private final c:Lcom/google/android/exoplayer2/audio/AudioTrack;

.field private d:Z

.field private e:Z

.field private f:Landroid/media/MediaFormat;

.field private g:I

.field private h:I

.field private i:J

.field private j:Z


# direct methods
.method public varargs constructor <init>(Lcom/google/android/exoplayer2/mediacodec/b;Lcom/google/android/exoplayer2/drm/a;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/d;Lcom/google/android/exoplayer2/audio/b;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/b;",
            "Lcom/google/android/exoplayer2/drm/a",
            "<",
            "Lcom/google/android/exoplayer2/drm/c;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/audio/d;",
            "Lcom/google/android/exoplayer2/audio/b;",
            "[",
            "Lcom/google/android/exoplayer2/audio/AudioProcessor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILcom/google/android/exoplayer2/mediacodec/b;Lcom/google/android/exoplayer2/drm/a;Z)V

    .line 135
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioTrack;

    new-instance v1, Lcom/google/android/exoplayer2/audio/g$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/audio/g$a;-><init>(Lcom/google/android/exoplayer2/audio/g;Lcom/google/android/exoplayer2/audio/g$1;)V

    invoke-direct {v0, p6, p7, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;-><init>(Lcom/google/android/exoplayer2/audio/b;[Lcom/google/android/exoplayer2/audio/AudioProcessor;Lcom/google/android/exoplayer2/audio/AudioTrack$d;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->c:Lcom/google/android/exoplayer2/audio/AudioTrack;

    .line 136
    new-instance v0, Lcom/google/android/exoplayer2/audio/d$a;

    invoke-direct {v0, p4, p5}, Lcom/google/android/exoplayer2/audio/d$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/d;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->b:Lcom/google/android/exoplayer2/audio/d$a;

    .line 137
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/audio/g;)Lcom/google/android/exoplayer2/audio/d$a;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->b:Lcom/google/android/exoplayer2/audio/d$a;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/audio/g;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/g;->j:Z

    return p1
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 413
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.SEC.aac.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "samsung"

    sget-object v1, Lcom/google/android/exoplayer2/util/v;->c:Ljava/lang/String;

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    const-string v1, "zeroflte"

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    const-string v1, "herolte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    const-string v1, "heroqlte"

    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/google/android/exoplayer2/mediacodec/b;Lcom/google/android/exoplayer2/Format;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x15

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 142
    iget-object v3, p2, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 143
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return v1

    .line 146
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    if-lt v0, v6, :cond_1

    const/16 v0, 0x10

    .line 147
    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/audio/g;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/mediacodec/b;->a()Lcom/google/android/exoplayer2/mediacodec/a;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 148
    or-int/lit8 v0, v0, 0x4

    or-int/lit8 v1, v0, 0x3

    goto :goto_0

    :cond_1
    move v0, v1

    .line 146
    goto :goto_1

    .line 150
    :cond_2
    invoke-interface {p1, v3, v1}, Lcom/google/android/exoplayer2/mediacodec/b;->a(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/mediacodec/a;

    move-result-object v3

    .line 151
    if-nez v3, :cond_3

    move v1, v2

    .line 152
    goto :goto_0

    .line 155
    :cond_3
    sget v4, Lcom/google/android/exoplayer2/util/v;->a:I

    if-lt v4, v6, :cond_5

    iget v4, p2, Lcom/google/android/exoplayer2/Format;->r:I

    if-eq v4, v5, :cond_4

    iget v4, p2, Lcom/google/android/exoplayer2/Format;->r:I

    .line 157
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/mediacodec/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    iget v4, p2, Lcom/google/android/exoplayer2/Format;->q:I

    if-eq v4, v5, :cond_5

    iget v4, p2, Lcom/google/android/exoplayer2/Format;->q:I

    .line 159
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/mediacodec/a;->b(I)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v1, v2

    .line 160
    :cond_6
    if-eqz v1, :cond_7

    const/4 v1, 0x3

    .line 161
    :goto_2
    or-int/lit8 v0, v0, 0x4

    or-int/2addr v1, v0

    goto :goto_0

    .line 160
    :cond_7
    const/4 v1, 0x2

    goto :goto_2
.end method

.method protected a(Lcom/google/android/exoplayer2/mediacodec/b;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/mediacodec/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {p1}, Lcom/google/android/exoplayer2/mediacodec/b;->a()Lcom/google/android/exoplayer2/mediacodec/a;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/g;->d:Z

    .line 175
    :goto_0
    return-object v0

    .line 174
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/g;->d:Z

    .line 175
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/mediacodec/b;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/mediacodec/a;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(IJJ)V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 388
    packed-switch p1, :pswitch_data_0

    .line 400
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(ILjava/lang/Object;)V

    .line 403
    :goto_0
    return-void

    .line 390
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->c:Lcom/google/android/exoplayer2/audio/AudioTrack;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->a(F)V

    goto :goto_0

    .line 393
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->c:Lcom/google/android/exoplayer2/audio/AudioTrack;

    check-cast p2, Landroid/media/PlaybackParams;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/audio/AudioTrack;->a(Landroid/media/PlaybackParams;)V

    goto :goto_0

    .line 396
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 397
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/g;->c:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->a(I)V

    goto :goto_0

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(JZ)V

    .line 296
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->c:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->h()V

    .line 297
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/g;->i:J

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/g;->j:Z

    .line 299
    return-void
.end method

.method protected a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    const/4 v0, 0x0

    .line 231
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/g;->f:Landroid/media/MediaFormat;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v2, v1

    .line 232
    :goto_0
    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/g;->f:Landroid/media/MediaFormat;

    const-string v3, "mime"

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    :goto_1
    if-eqz v2, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/g;->f:Landroid/media/MediaFormat;

    .line 235
    :cond_0
    const-string v2, "channel-count"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 236
    const-string v3, "sample-rate"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 238
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/audio/g;->e:Z

    if-eqz v4, :cond_3

    if-ne v2, v5, :cond_3

    iget v4, p0, Lcom/google/android/exoplayer2/audio/g;->h:I

    if-ge v4, v5, :cond_3

    .line 239
    iget v4, p0, Lcom/google/android/exoplayer2/audio/g;->h:I

    new-array v6, v4, [I

    .line 240
    :goto_2
    iget v4, p0, Lcom/google/android/exoplayer2/audio/g;->h:I

    if-ge v0, v4, :cond_4

    .line 241
    aput v0, v6, v0

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v2, v0

    .line 231
    goto :goto_0

    .line 232
    :cond_2
    const-string v1, "audio/raw"

    goto :goto_1

    .line 244
    :cond_3
    const/4 v6, 0x0

    .line 248
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->c:Lcom/google/android/exoplayer2/audio/AudioTrack;

    iget v4, p0, Lcom/google/android/exoplayer2/audio/g;->g:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/audio/AudioTrack;->a(Ljava/lang/String;IIII[I)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioTrack$ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/g;->r()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method protected a(Lcom/google/android/exoplayer2/mediacodec/a;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 193
    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/g;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/g;->e:Z

    .line 194
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/g;->d:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/Format;->b()Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->f:Landroid/media/MediaFormat;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->f:Landroid/media/MediaFormat;

    const-string v1, "mime"

    const-string v2, "audio/raw"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->f:Landroid/media/MediaFormat;

    invoke-virtual {p2, v0, v3, p4, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->f:Landroid/media/MediaFormat;

    const-string v1, "mime"

    iget-object v2, p3, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/Format;->b()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-virtual {p2, v0, v3, p4, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 202
    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/g;->f:Landroid/media/MediaFormat;

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;JJ)V
    .locals 6

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->b:Lcom/google/android/exoplayer2/audio/d$a;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/d$a;->a(Ljava/lang/String;JJ)V

    .line 215
    return-void
.end method

.method protected a(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Z)V

    .line 284
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->b:Lcom/google/android/exoplayer2/audio/d$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/g;->a:Lcom/google/android/exoplayer2/a/d;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/d$a;->a(Lcom/google/android/exoplayer2/a/d;)V

    .line 285
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/g;->q()Lcom/google/android/exoplayer2/l;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/l;->b:I

    .line 286
    if-eqz v0, :cond_0

    .line 287
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/g;->c:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->b(I)V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->c:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->f()V

    goto :goto_0
.end method

.method protected a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 352
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/g;->d:Z

    if-eqz v2, :cond_0

    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_0

    .line 354
    invoke-virtual {p5, p7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 374
    :goto_0
    return v0

    .line 358
    :cond_0
    if-eqz p11, :cond_1

    .line 359
    invoke-virtual {p5, p7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 360
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/g;->a:Lcom/google/android/exoplayer2/a/d;

    iget v2, v1, Lcom/google/android/exoplayer2/a/d;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/exoplayer2/a/d;->e:I

    .line 361
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/g;->c:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->b()V

    goto :goto_0

    .line 366
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/g;->c:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v2, p6, p9, p10}, Lcom/google/android/exoplayer2/audio/AudioTrack;->a(Ljava/nio/ByteBuffer;J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 367
    const/4 v1, 0x0

    invoke-virtual {p5, p7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 368
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/g;->a:Lcom/google/android/exoplayer2/a/d;

    iget v2, v1, Lcom/google/android/exoplayer2/a/d;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/exoplayer2/a/d;->d:I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/g;->r()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_2
    move v0, v1

    .line 374
    goto :goto_0

    .line 371
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->c:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected b(I)V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method protected b(Lcom/google/android/exoplayer2/Format;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->b:Lcom/google/android/exoplayer2/audio/d$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/d$a;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 223
    const-string v0, "audio/raw"

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->s:I

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/audio/g;->g:I

    .line 225
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->q:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/g;->h:I

    .line 226
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public c()Lcom/google/android/exoplayer2/util/h;
    .locals 0

    .prologue
    .line 208
    return-object p0
.end method

.method protected n()V
    .locals 1

    .prologue
    .line 303
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n()V

    .line 304
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->c:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->a()V

    .line 305
    return-void
.end method

.method protected o()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->c:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->g()V

    .line 310
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o()V

    .line 311
    return-void
.end method

.method protected p()V
    .locals 3

    .prologue
    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->c:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 319
    :try_start_1
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->a:Lcom/google/android/exoplayer2/a/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/d;->a()V

    .line 322
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->b:Lcom/google/android/exoplayer2/audio/d$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/g;->a:Lcom/google/android/exoplayer2/a/d;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/d$a;->b(Lcom/google/android/exoplayer2/a/d;)V

    .line 325
    return-void

    .line 321
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/g;->a:Lcom/google/android/exoplayer2/a/d;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a/d;->a()V

    .line 322
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/g;->b:Lcom/google/android/exoplayer2/audio/d$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/g;->a:Lcom/google/android/exoplayer2/a/d;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/d$a;->b(Lcom/google/android/exoplayer2/a/d;)V

    throw v0

    .line 318
    :catchall_1
    move-exception v0

    .line 319
    :try_start_2
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 321
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/g;->a:Lcom/google/android/exoplayer2/a/d;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a/d;->a()V

    .line 322
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/g;->b:Lcom/google/android/exoplayer2/audio/d$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/g;->a:Lcom/google/android/exoplayer2/a/d;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/d$a;->b(Lcom/google/android/exoplayer2/a/d;)V

    throw v0

    .line 321
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/g;->a:Lcom/google/android/exoplayer2/a/d;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a/d;->a()V

    .line 322
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/g;->b:Lcom/google/android/exoplayer2/audio/d$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/g;->a:Lcom/google/android/exoplayer2/a/d;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/d$a;->b(Lcom/google/android/exoplayer2/a/d;)V

    throw v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->c:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 329
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->c:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected v()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public w()J
    .locals 4

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->c:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/g;->u()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->a(Z)J

    move-result-wide v0

    .line 340
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 341
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/g;->j:Z

    if-eqz v2, :cond_1

    .line 342
    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/g;->i:J

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/g;->j:Z

    .line 345
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/g;->i:J

    return-wide v0

    .line 341
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/g;->i:J

    .line 342
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected x()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g;->c:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->c()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/g;->r()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method
