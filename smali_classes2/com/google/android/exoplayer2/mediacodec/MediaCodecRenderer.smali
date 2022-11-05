.class public abstract Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.super Lcom/google/android/exoplayer2/a;
.source "MediaCodecRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    }
.end annotation


# static fields
.field private static final b:[B


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Z

.field private E:I

.field private F:I

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field protected a:Lcom/google/android/exoplayer2/a/d;

.field private final c:Lcom/google/android/exoplayer2/mediacodec/b;

.field private final d:Lcom/google/android/exoplayer2/drm/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/a",
            "<",
            "Lcom/google/android/exoplayer2/drm/c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Z

.field private final f:Lcom/google/android/exoplayer2/a/e;

.field private final g:Lcom/google/android/exoplayer2/h;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/media/MediaCodec$BufferInfo;

.field private j:Lcom/google/android/exoplayer2/Format;

.field private k:Landroid/media/MediaCodec;

.field private l:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSession",
            "<",
            "Lcom/google/android/exoplayer2/drm/c;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSession",
            "<",
            "Lcom/google/android/exoplayer2/drm/c;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:[Ljava/nio/ByteBuffer;

.field private y:[Ljava/nio/ByteBuffer;

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    const-string v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->h(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b:[B

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/mediacodec/b;Lcom/google/android/exoplayer2/drm/a;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/mediacodec/b;",
            "Lcom/google/android/exoplayer2/drm/a",
            "<",
            "Lcom/google/android/exoplayer2/drm/c;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 224
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/a;-><init>(I)V

    .line 225
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 226
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/b;

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c:Lcom/google/android/exoplayer2/mediacodec/b;

    .line 227
    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/a;

    .line 228
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->e:Z

    .line 229
    new-instance v0, Lcom/google/android/exoplayer2/a/e;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/a/e;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/a/e;

    .line 230
    new-instance v0, Lcom/google/android/exoplayer2/h;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g:Lcom/google/android/exoplayer2/h;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h:Ljava/util/List;

    .line 232
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i:Landroid/media/MediaCodec$BufferInfo;

    .line 233
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:I

    .line 234
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:I

    .line 235
    return-void

    :cond_0
    move v0, v1

    .line 225
    goto :goto_0
.end method

.method private E()V
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y:[Ljava/nio/ByteBuffer;

    .line 976
    return-void
.end method

.method private F()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1028
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1030
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B()V

    .line 1031
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y()V

    .line 1036
    :goto_0
    return-void

    .line 1033
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J:Z

    .line 1034
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x()V

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/a/e;I)Landroid/media/MediaCodec$CryptoInfo;
    .locals 4

    .prologue
    .line 698
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/e;->a:Lcom/google/android/exoplayer2/a/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/b;->a()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    .line 699
    if-nez p1, :cond_0

    .line 709
    :goto_0
    return-object v0

    .line 705
    :cond_0
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v1, :cond_1

    .line 706
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 708
    :cond_1
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/2addr v3, p1

    aput v3, v1, v2

    goto :goto_0
.end method

.method private a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/16 v1, 0x12

    .line 1063
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    if-lt v0, v1, :cond_1

    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.SEC.avc.dec"

    .line 1065
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/google/android/exoplayer2/util/v;->d:Ljava/lang/String;

    const-string v1, "SM-G800"

    .line 1066
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OMX.Exynos.avc.dec"

    .line 1067
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)Z
    .locals 2

    .prologue
    .line 1100
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 1101
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(JJ)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 868
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    if-gez v0, :cond_5

    .line 869
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:Z

    if-eqz v0, :cond_1

    .line 871
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i:Landroid/media/MediaCodec$BufferInfo;

    .line 872
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D()J

    move-result-wide v2

    .line 871
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    if-ltz v0, :cond_6

    .line 887
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Z

    if-eqz v0, :cond_2

    .line 888
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Z

    .line 889
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 890
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    .line 891
    const/4 v0, 0x1

    .line 949
    :goto_1
    return v0

    .line 873
    :catch_0
    move-exception v0

    .line 874
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F()V

    .line 875
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J:Z

    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B()V

    .line 879
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 882
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i:Landroid/media/MediaCodec$BufferInfo;

    .line 883
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D()J

    move-result-wide v2

    .line 882
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    goto :goto_0

    .line 893
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 895
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F()V

    .line 896
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    .line 897
    const/4 v0, 0x0

    goto :goto_1

    .line 901
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    aget-object v0, v0, v1

    .line 902
    if-eqz v0, :cond_4

    .line 903
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 904
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 906
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Z

    .line 924
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:Z

    if-eqz v0, :cond_c

    .line 926
    :try_start_1
    iget-object v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    aget-object v7, v0, v1

    iget v8, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Z

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 943
    :goto_2
    if-eqz v0, :cond_d

    .line 944
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c(J)V

    .line 945
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    .line 946
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 908
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_7

    .line 909
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w()V

    .line 910
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 911
    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_8

    .line 912
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E()V

    .line 913
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 915
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 917
    :cond_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F()V

    .line 919
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 929
    :catch_1
    move-exception v0

    .line 930
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F()V

    .line 931
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J:Z

    if-eqz v0, :cond_b

    .line 933
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B()V

    .line 935
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 938
    :cond_c
    iget-object v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    aget-object v7, v0, v1

    iget v8, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Z

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0

    goto :goto_2

    .line 949
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1083
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_2

    const-string v0, "OMX.Nvidia.h264.decode"

    .line 1084
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "flounder"

    sget-object v1, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    .line 1085
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "flounder_lte"

    sget-object v1, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "grouper"

    sget-object v1, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    .line 1086
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tilapia"

    sget-object v1, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1170
    sget v1, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_0

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->q:I

    if-ne v1, v0, :cond_0

    const-string v1, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 1171
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 713
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-nez v1, :cond_1

    .line 720
    :cond_0
    :goto_0
    return v0

    .line 716
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->a()I

    move-result v1

    .line 717
    if-nez v1, :cond_2

    .line 718
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->c()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 720
    :cond_2
    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    if-nez p1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->e:Z

    if-nez v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1117
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_1

    const-string v0, "OMX.rk.video_decoder.avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OMX.allwinner.video.decoder.avc"

    .line 1118
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private d(J)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1041
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 1042
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1043
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-nez v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1045
    const/4 v0, 0x1

    .line 1048
    :goto_1
    return v0

    .line 1042
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1048
    goto :goto_1
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1135
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const-string v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_2

    const-string v0, "hb2000"

    sget-object v1, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    .line 1136
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OMX.amlogic.avc.decoder.awesome"

    .line 1137
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 1138
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1153
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.google.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:I

    if-eq v0, v8, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I:Z

    if-eqz v0, :cond_1

    .line 693
    :cond_0
    :goto_0
    return v2

    .line 556
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:I

    if-gez v0, :cond_2

    .line 557
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:I

    .line 558
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:I

    if-ltz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/a/e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:[Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:I

    aget-object v1, v1, v3

    iput-object v1, v0, Lcom/google/android/exoplayer2/a/e;->b:Ljava/nio/ByteBuffer;

    .line 562
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/a/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/e;->a()V

    .line 565
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:I

    if-ne v0, v7, :cond_4

    .line 568
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r:Z

    if-eqz v0, :cond_3

    .line 575
    :goto_1
    iput v8, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:I

    goto :goto_0

    .line 571
    :cond_3
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:Z

    .line 572
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:I

    const/4 v6, 0x4

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 573
    iput v9, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:I

    goto :goto_1

    .line 579
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v:Z

    if-eqz v0, :cond_5

    .line 580
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v:Z

    .line 581
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/a/e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/a/e;->b:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 582
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:I

    sget-object v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b:[B

    array-length v3, v3

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 583
    iput v9, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:I

    .line 584
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:Z

    move v2, v7

    .line 585
    goto :goto_0

    .line 590
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Z

    if-eqz v0, :cond_7

    .line 592
    const/4 v0, -0x4

    move v1, v0

    move v0, v2

    .line 607
    :goto_2
    const/4 v3, -0x3

    if-eq v1, v3, :cond_0

    .line 610
    const/4 v3, -0x5

    if-ne v1, v3, :cond_a

    .line 611
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:I

    if-ne v0, v8, :cond_6

    .line 614
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/a/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/e;->a()V

    .line 615
    iput v7, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:I

    .line 617
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g:Lcom/google/android/exoplayer2/h;

    iget-object v0, v0, Lcom/google/android/exoplayer2/h;->a:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(Lcom/google/android/exoplayer2/Format;)V

    move v2, v7

    .line 618
    goto :goto_0

    .line 596
    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:I

    if-ne v0, v7, :cond_9

    move v1, v2

    .line 597
    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 598
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 599
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/a/e;

    iget-object v3, v3, Lcom/google/android/exoplayer2/a/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 597
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 601
    :cond_8
    iput v8, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:I

    .line 603
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/a/e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/a/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 604
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g:Lcom/google/android/exoplayer2/h;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/a/e;

    invoke-virtual {p0, v1, v3, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/a/e;Z)I

    move-result v1

    goto :goto_2

    .line 622
    :cond_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/a/e;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a/e;->c()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 623
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:I

    if-ne v0, v8, :cond_b

    .line 627
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/a/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/e;->a()V

    .line 628
    iput v7, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:I

    .line 630
    :cond_b
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I:Z

    .line 631
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:Z

    if-nez v0, :cond_c

    .line 632
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F()V

    goto/16 :goto_0

    .line 636
    :cond_c
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r:Z

    if-nez v0, :cond_0

    .line 639
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:Z

    .line 640
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    iget v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 641
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:I
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 643
    :catch_0
    move-exception v0

    .line 644
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 648
    :cond_d
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/a/e;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a/e;->d()Z

    move-result v1

    if-nez v1, :cond_f

    .line 649
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/a/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/e;->a()V

    .line 650
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:I

    if-ne v0, v8, :cond_e

    .line 653
    iput v7, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:I

    :cond_e
    move v2, v7

    .line 655
    goto/16 :goto_0

    .line 657
    :cond_f
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Z

    .line 658
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/a/e;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a/e;->e()Z

    move-result v1

    .line 659
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Z

    .line 660
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Z

    if-nez v3, :cond_0

    .line 663
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Z

    if-eqz v3, :cond_11

    if-nez v1, :cond_11

    .line 664
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/a/e;

    iget-object v3, v3, Lcom/google/android/exoplayer2/a/e;->b:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/j;->a(Ljava/nio/ByteBuffer;)V

    .line 665
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/a/e;

    iget-object v3, v3, Lcom/google/android/exoplayer2/a/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-nez v3, :cond_10

    move v2, v7

    .line 666
    goto/16 :goto_0

    .line 668
    :cond_10
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Z

    .line 671
    :cond_11
    :try_start_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/a/e;

    iget-wide v4, v2, Lcom/google/android/exoplayer2/a/e;->c:J

    .line 672
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/a/e;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/a/e;->c_()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 673
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    :cond_12
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/a/e;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/a/e;->f()V

    .line 677
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/a/e;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/a/e;)V

    .line 679
    if-eqz v1, :cond_13

    .line 680
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/a/e;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/a/e;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v3

    .line 682
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:I

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 686
    :goto_4
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:I

    .line 687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:Z

    .line 688
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:I

    .line 689
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a:Lcom/google/android/exoplayer2/a/d;

    iget v1, v0, Lcom/google/android/exoplayer2/a/d;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/a/d;->c:I

    move v2, v7

    .line 693
    goto/16 :goto_0

    .line 684
    :cond_13
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/a/e;

    iget-object v3, v3, Lcom/google/android/exoplayer2/a/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 690
    :catch_1
    move-exception v0

    .line 691
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method private w()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x1

    .line 956
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 957
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q:Z

    if-eqz v1, :cond_0

    const-string v1, "width"

    .line 958
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "height"

    .line 959
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 961
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Z

    .line 968
    :goto_0
    return-void

    .line 964
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Z

    if-eqz v1, :cond_1

    .line 965
    const-string v1, "channel-count"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 967
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    goto :goto_0
.end method


# virtual methods
.method protected final A()Landroid/media/MediaCodec;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    return-object v0
.end method

.method protected B()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 427
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 428
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z:J

    .line 429
    iput v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:I

    .line 430
    iput v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    .line 431
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Z

    .line 432
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Z

    .line 433
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 434
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:[Ljava/nio/ByteBuffer;

    .line 435
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y:[Ljava/nio/ByteBuffer;

    .line 436
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Z

    .line 437
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:Z

    .line 438
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Z

    .line 439
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Z

    .line 440
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Z

    .line 441
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q:Z

    .line 442
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r:Z

    .line 443
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Z

    .line 444
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Z

    .line 445
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v:Z

    .line 446
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Z

    .line 447
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:Z

    .line 448
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:I

    .line 449
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:I

    .line 450
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a:Lcom/google/android/exoplayer2/a/d;

    iget v1, v0, Lcom/google/android/exoplayer2/a/d;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/a/d;->b:I

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 455
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 457
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    .line 458
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v0, v1, :cond_0

    .line 460
    :try_start_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/a;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 462
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 468
    :cond_0
    return-void

    .line 462
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0

    .line 457
    :catchall_1
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    .line 458
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_1

    .line 460
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/a;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 462
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    :cond_1
    throw v0

    :catchall_2
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0

    .line 454
    :catchall_3
    move-exception v0

    .line 455
    :try_start_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 457
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    .line 458
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_2

    .line 460
    :try_start_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/a;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 462
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    :cond_2
    throw v0

    :catchall_4
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0

    .line 457
    :catchall_5
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    .line 458
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_3

    .line 460
    :try_start_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/a;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 462
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    :cond_3
    throw v0

    :catchall_6
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0
.end method

.method protected C()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 516
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z:J

    .line 517
    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:I

    .line 518
    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    .line 519
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Z

    .line 520
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Z

    .line 521
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Z

    .line 522
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 523
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v:Z

    .line 524
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Z

    .line 525
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:Z

    if-eqz v0, :cond_2

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B()V

    .line 527
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y()V

    .line 538
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_1

    .line 541
    iput v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:I

    .line 543
    :cond_1
    return-void

    .line 528
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:I

    if-eqz v0, :cond_3

    .line 531
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B()V

    .line 532
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y()V

    goto :goto_0

    .line 535
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 536
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:Z

    goto :goto_0
.end method

.method protected D()J
    .locals 2

    .prologue
    .line 858
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final a(Lcom/google/android/exoplayer2/Format;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c:Lcom/google/android/exoplayer2/mediacodec/b;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/mediacodec/b;Lcom/google/android/exoplayer2/Format;)I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method protected abstract a(Lcom/google/android/exoplayer2/mediacodec/b;Lcom/google/android/exoplayer2/Format;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method protected a(Lcom/google/android/exoplayer2/mediacodec/b;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/mediacodec/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-interface {p1, v0, p3}, Lcom/google/android/exoplayer2/mediacodec/b;->a(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/mediacodec/a;

    move-result-object v0

    return-object v0
.end method

.method public a(JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 482
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J:Z

    if-eqz v0, :cond_1

    .line 483
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x()V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_2

    .line 488
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/a/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/e;->a()V

    .line 489
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g:Lcom/google/android/exoplayer2/h;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/a/e;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/a/e;Z)I

    move-result v0

    .line 490
    const/4 v1, -0x5

    if-ne v0, v1, :cond_6

    .line 491
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g:Lcom/google/android/exoplayer2/h;

    iget-object v0, v0, Lcom/google/android/exoplayer2/h;->a:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 503
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y()V

    .line 504
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    if-eqz v0, :cond_7

    .line 505
    const-string v0, "drainAndFeed"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/t;->a(Ljava/lang/String;)V

    .line 506
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(JJ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 507
    :cond_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v()Z

    move-result v0

    if-nez v0, :cond_4

    .line 508
    invoke-static {}, Lcom/google/android/exoplayer2/util/t;->a()V

    .line 512
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a:Lcom/google/android/exoplayer2/a/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/d;->a()V

    goto :goto_0

    .line 492
    :cond_6
    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    .line 494
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/a/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/e;->c()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 495
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I:Z

    .line 496
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F()V

    goto :goto_0

    .line 509
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_5

    .line 510
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(J)V

    goto :goto_1
.end method

.method protected a(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 396
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I:Z

    .line 397
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J:Z

    .line 398
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C()V

    .line 401
    :cond_0
    return-void
.end method

.method protected a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 796
    return-void
.end method

.method protected a(Lcom/google/android/exoplayer2/a/e;)V
    .locals 0

    .prologue
    .line 807
    return-void
.end method

.method protected abstract a(Lcom/google/android/exoplayer2/mediacodec/a;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method protected a(Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 737
    return-void
.end method

.method protected a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 391
    new-instance v0, Lcom/google/android/exoplayer2/a/d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a:Lcom/google/android/exoplayer2/a/d;

    .line 392
    return-void
.end method

.method protected abstract a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected a(Landroid/media/MediaCodec;ZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z
    .locals 1

    .prologue
    .line 837
    const/4 v0, 0x0

    return v0
.end method

.method protected b(Lcom/google/android/exoplayer2/Format;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 746
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    .line 747
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    .line 749
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-nez v4, :cond_0

    move-object v0, v1

    :goto_0
    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 751
    :goto_1
    if-eqz v0, :cond_3

    .line 752
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v0, :cond_4

    .line 753
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/a;

    if-nez v0, :cond_2

    .line 754
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Media requires a DrmSessionManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r()I

    move-result v1

    .line 754
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 749
    :cond_0
    iget-object v0, v4, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    .line 757
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/a;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    iget-object v5, v5, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-interface {v0, v1, v5}, Lcom/google/android/exoplayer2/drm/a;->a(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 758
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-ne v0, v1, :cond_3

    .line 759
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/a;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 766
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Z

    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    .line 767
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Landroid/media/MediaCodec;ZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 768
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Z

    .line 769
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:I

    .line 770
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->j:I

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->j:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->k:I

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->k:I

    if-ne v0, v1, :cond_5

    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v:Z

    .line 782
    :goto_4
    return-void

    .line 762
    :cond_4
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    goto :goto_2

    :cond_5
    move v0, v3

    .line 770
    goto :goto_3

    .line 773
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:Z

    if-eqz v0, :cond_7

    .line 775
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:I

    goto :goto_4

    .line 778
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B()V

    .line 779
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y()V

    goto :goto_4
.end method

.method protected c(J)V
    .locals 0

    .prologue
    .line 818
    return-void
.end method

.method public final m()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 239
    const/4 v0, 0x4

    return v0
.end method

.method protected n()V
    .locals 0

    .prologue
    .line 473
    return-void
.end method

.method protected o()V
    .locals 0

    .prologue
    .line 478
    return-void
.end method

.method protected p()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 405
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    .line 407
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 410
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/a;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 415
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v0, v1, :cond_1

    .line 416
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/a;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 419
    :cond_1
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 420
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 424
    return-void

    .line 419
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 420
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0

    .line 414
    :catchall_1
    move-exception v0

    .line 415
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_2

    .line 416
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/a;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 419
    :cond_2
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 420
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0

    .line 419
    :catchall_2
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 420
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0

    .line 409
    :catchall_3
    move-exception v0

    .line 410
    :try_start_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_3

    .line 411
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/a;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 415
    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_4

    .line 416
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/a;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 419
    :cond_4
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 420
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0

    .line 419
    :catchall_4
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 420
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0

    .line 414
    :catchall_5
    move-exception v0

    .line 415
    :try_start_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_5

    .line 416
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/a;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 419
    :cond_5
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 420
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0

    .line 419
    :catchall_6
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 420
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0
.end method

.method public t()Z
    .locals 4

    .prologue
    .line 847
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 849
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

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
    .line 842
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J:Z

    return v0
.end method

.method protected x()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1020
    return-void
.end method

.method protected final y()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v8, -0x1

    const/4 v2, 0x0

    .line 292
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z()Z

    move-result v1

    if-nez v1, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 297
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    iget-object v3, v1, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 300
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_7

    .line 301
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->a()I

    move-result v0

    .line 302
    if-nez v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->c()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 304
    :cond_2
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 306
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->b()Lcom/google/android/exoplayer2/drm/b;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/drm/c;->a()Landroid/media/MediaCrypto;

    move-result-object v1

    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/drm/DrmSession;->a(Ljava/lang/String;)Z

    move-result v0

    move v6, v0

    move-object v0, v1

    .line 316
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c:Lcom/google/android/exoplayer2/mediacodec/b;

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v1, v4, v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/mediacodec/b;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/mediacodec/a;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 317
    if-nez v1, :cond_4

    if-eqz v6, :cond_4

    .line 322
    :try_start_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c:Lcom/google/android/exoplayer2/mediacodec/b;

    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v5, v7}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/mediacodec/b;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/mediacodec/a;

    move-result-object v1

    .line 323
    if-eqz v1, :cond_4

    .line 324
    const-string v4, "MediaCodecRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Drm session requires secure decoder for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", but "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "no secure decoder available. Trying to proceed with "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/google/android/exoplayer2/mediacodec/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_4
    move-object v3, v1

    .line 333
    :goto_2
    if-nez v3, :cond_5

    .line 334
    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    const v5, -0xc34f

    invoke-direct {v1, v4, v2, v6, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    .line 339
    :cond_5
    iget-object v1, v3, Lcom/google/android/exoplayer2/mediacodec/a;->a:Ljava/lang/String;

    .line 340
    iget-boolean v2, v3, Lcom/google/android/exoplayer2/mediacodec/a;->b:Z

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Z

    .line 341
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Z

    .line 342
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Z

    .line 343
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q:Z

    .line 344
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r:Z

    .line 345
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Z

    .line 346
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->e(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Z

    .line 347
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Z

    .line 349
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createCodec:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/t;->a(Ljava/lang/String;)V

    .line 351
    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    .line 352
    invoke-static {}, Lcom/google/android/exoplayer2/util/t;->a()V

    .line 353
    const-string v2, "configureCodec"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/t;->a(Ljava/lang/String;)V

    .line 354
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    iget-object v7, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v3, v2, v7, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/mediacodec/a;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;)V

    .line 355
    invoke-static {}, Lcom/google/android/exoplayer2/util/t;->a()V

    .line 356
    const-string v0, "startCodec"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/t;->a(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 358
    invoke-static {}, Lcom/google/android/exoplayer2/util/t;->a()V

    .line 359
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 360
    sub-long v4, v2, v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Ljava/lang/String;JJ)V

    .line 362
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:[Ljava/nio/ByteBuffer;

    .line 363
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y:[Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 368
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 369
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    :goto_4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z:J

    .line 370
    iput v8, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:I

    .line 371
    iput v8, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Z

    .line 373
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a:Lcom/google/android/exoplayer2/a/d;

    iget v1, v0, Lcom/google/android/exoplayer2/a/d;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/a/d;->a:I

    goto/16 :goto_0

    .line 328
    :catch_0
    move-exception v1

    move-object v3, v2

    .line 329
    :goto_5
    new-instance v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    const v7, -0xc34e

    invoke-direct {v4, v5, v1, v6, v7}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    goto/16 :goto_2

    .line 364
    :catch_1
    move-exception v0

    .line 365
    new-instance v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    invoke-direct {v2, v3, v0, v6, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZLjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    goto :goto_3

    .line 369
    :cond_6
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_4

    .line 328
    :catch_2
    move-exception v3

    move-object v9, v3

    move-object v3, v1

    move-object v1, v9

    goto :goto_5

    :cond_7
    move v6, v0

    move-object v0, v2

    goto/16 :goto_1
.end method

.method protected z()Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
