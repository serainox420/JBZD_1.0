.class public Lcom/google/android/exoplayer2/c/c;
.super Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/c/c$b;,
        Lcom/google/android/exoplayer2/c/c$a;
    }
.end annotation


# static fields
.field private static final c:[I


# instance fields
.field private A:F

.field private B:Z

.field private C:I

.field b:Lcom/google/android/exoplayer2/c/c$b;

.field private final d:Lcom/google/android/exoplayer2/c/d;

.field private final e:Lcom/google/android/exoplayer2/c/e$a;

.field private final f:J

.field private final g:I

.field private final h:Z

.field private i:[Lcom/google/android/exoplayer2/Format;

.field private j:Lcom/google/android/exoplayer2/c/c$a;

.field private k:Landroid/view/Surface;

.field private l:I

.field private m:Z

.field private n:J

.field private o:J

.field private p:I

.field private q:I

.field private r:I

.field private s:F

.field private t:I

.field private u:I

.field private v:I

.field private w:F

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/c/c;->c:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/b;JLcom/google/android/exoplayer2/drm/a;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/c/e;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/mediacodec/b;",
            "J",
            "Lcom/google/android/exoplayer2/drm/a",
            "<",
            "Lcom/google/android/exoplayer2/drm/c;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/c/e;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    .line 156
    const/4 v0, 0x2

    invoke-direct {p0, v0, p2, p5, p6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILcom/google/android/exoplayer2/mediacodec/b;Lcom/google/android/exoplayer2/drm/a;Z)V

    .line 157
    iput-wide p3, p0, Lcom/google/android/exoplayer2/c/c;->f:J

    .line 158
    iput p9, p0, Lcom/google/android/exoplayer2/c/c;->g:I

    .line 159
    new-instance v0, Lcom/google/android/exoplayer2/c/d;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/c/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/c;->d:Lcom/google/android/exoplayer2/c/d;

    .line 160
    new-instance v0, Lcom/google/android/exoplayer2/c/e$a;

    invoke-direct {v0, p7, p8}, Lcom/google/android/exoplayer2/c/e$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/c/e;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/c;->e:Lcom/google/android/exoplayer2/c/e$a;

    .line 161
    invoke-static {}, Lcom/google/android/exoplayer2/c/c;->H()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/c;->h:Z

    .line 162
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/c;->n:J

    .line 163
    iput v3, p0, Lcom/google/android/exoplayer2/c/c;->t:I

    .line 164
    iput v3, p0, Lcom/google/android/exoplayer2/c/c;->u:I

    .line 165
    iput v2, p0, Lcom/google/android/exoplayer2/c/c;->w:F

    .line 166
    iput v2, p0, Lcom/google/android/exoplayer2/c/c;->s:F

    .line 167
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/c/c;->l:I

    .line 168
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/c;->E()V

    .line 169
    return-void
.end method

.method private E()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 546
    iput v1, p0, Lcom/google/android/exoplayer2/c/c;->x:I

    .line 547
    iput v1, p0, Lcom/google/android/exoplayer2/c/c;->y:I

    .line 548
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/c/c;->A:F

    .line 549
    iput v1, p0, Lcom/google/android/exoplayer2/c/c;->z:I

    .line 550
    return-void
.end method

.method private F()V
    .locals 5

    .prologue
    .line 553
    iget v0, p0, Lcom/google/android/exoplayer2/c/c;->x:I

    iget v1, p0, Lcom/google/android/exoplayer2/c/c;->t:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/c/c;->y:I

    iget v1, p0, Lcom/google/android/exoplayer2/c/c;->u:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/c/c;->z:I

    iget v1, p0, Lcom/google/android/exoplayer2/c/c;->v:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/c/c;->A:F

    iget v1, p0, Lcom/google/android/exoplayer2/c/c;->w:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c;->e:Lcom/google/android/exoplayer2/c/e$a;

    iget v1, p0, Lcom/google/android/exoplayer2/c/c;->t:I

    iget v2, p0, Lcom/google/android/exoplayer2/c/c;->u:I

    iget v3, p0, Lcom/google/android/exoplayer2/c/c;->v:I

    iget v4, p0, Lcom/google/android/exoplayer2/c/c;->w:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/c/e$a;->a(IIIF)V

    .line 558
    iget v0, p0, Lcom/google/android/exoplayer2/c/c;->t:I

    iput v0, p0, Lcom/google/android/exoplayer2/c/c;->x:I

    .line 559
    iget v0, p0, Lcom/google/android/exoplayer2/c/c;->u:I

    iput v0, p0, Lcom/google/android/exoplayer2/c/c;->y:I

    .line 560
    iget v0, p0, Lcom/google/android/exoplayer2/c/c;->v:I

    iput v0, p0, Lcom/google/android/exoplayer2/c/c;->z:I

    .line 561
    iget v0, p0, Lcom/google/android/exoplayer2/c/c;->w:F

    iput v0, p0, Lcom/google/android/exoplayer2/c/c;->A:F

    .line 563
    :cond_1
    return-void
.end method

.method private G()V
    .locals 6

    .prologue
    .line 566
    iget v0, p0, Lcom/google/android/exoplayer2/c/c;->p:I

    if-lez v0, :cond_0

    .line 567
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 568
    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/c;->o:J

    sub-long v2, v0, v2

    .line 569
    iget-object v4, p0, Lcom/google/android/exoplayer2/c/c;->e:Lcom/google/android/exoplayer2/c/e$a;

    iget v5, p0, Lcom/google/android/exoplayer2/c/c;->p:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/c/e$a;->a(IJ)V

    .line 570
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer2/c/c;->p:I

    .line 571
    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/c;->o:J

    .line 573
    :cond_0
    return-void
.end method

.method private static H()Z
    .locals 2

    .prologue
    .line 779
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    const-string v0, "foster"

    sget-object v1, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NVIDIA"

    sget-object v1, Lcom/google/android/exoplayer2/util/v;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;II)I
    .locals 6

    .prologue
    const/16 v4, 0x10

    const/4 v1, 0x4

    const/4 v0, 0x2

    const/4 v2, -0x1

    .line 718
    if-eq p1, v2, :cond_0

    if-ne p2, v2, :cond_1

    :cond_0
    move v0, v2

    .line 757
    :goto_0
    return v0

    .line 726
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    move v3, v2

    :goto_1
    packed-switch v3, :pswitch_data_0

    move v0, v2

    .line 754
    goto :goto_0

    .line 726
    :sswitch_0
    const-string v3, "video/3gpp"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "video/mp4v-es"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "video/avc"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_1

    :sswitch_3
    const-string v3, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "video/hevc"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :sswitch_5
    const-string v3, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    goto :goto_1

    .line 729
    :pswitch_0
    mul-int v1, p1, p2

    .line 757
    :goto_2
    mul-int/lit8 v1, v1, 0x3

    mul-int/lit8 v0, v0, 0x2

    div-int v0, v1, v0

    goto :goto_0

    .line 733
    :pswitch_1
    const-string v1, "BRAVIA 4K 2015"

    sget-object v3, Lcom/google/android/exoplayer2/util/v;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v2

    .line 736
    goto :goto_0

    .line 739
    :cond_3
    invoke-static {p1, v4}, Lcom/google/android/exoplayer2/util/v;->a(II)I

    move-result v1

    invoke-static {p2, v4}, Lcom/google/android/exoplayer2/util/v;->a(II)I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x10

    .line 741
    goto :goto_2

    .line 744
    :pswitch_2
    mul-int v1, p1, p2

    .line 746
    goto :goto_2

    .line 749
    :pswitch_3
    mul-int v0, p1, p2

    move v5, v1

    move v1, v0

    move v0, v5

    .line 751
    goto :goto_2

    .line 726
    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_0
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_1
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_3
        0x5f50bed9 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Lcom/google/android/exoplayer2/mediacodec/a;Lcom/google/android/exoplayer2/Format;)Landroid/graphics/Point;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 664
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->k:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->j:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    move v6, v0

    .line 665
    :goto_0
    if-eqz v6, :cond_2

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->k:I

    move v5, v0

    .line 666
    :goto_1
    if-eqz v6, :cond_3

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->j:I

    .line 667
    :goto_2
    int-to-float v1, v0

    int-to-float v2, v5

    div-float v7, v1, v2

    .line 668
    sget-object v8, Lcom/google/android/exoplayer2/c/c;->c:[I

    array-length v9, v8

    const/4 v1, 0x0

    move v4, v1

    :goto_3
    if-ge v4, v9, :cond_b

    aget v1, v8, v4

    .line 669
    int-to-float v2, v1

    mul-float/2addr v2, v7

    float-to-int v2, v2

    .line 670
    if-le v1, v5, :cond_0

    if-gt v2, v0, :cond_4

    .line 672
    :cond_0
    const/4 v0, 0x0

    .line 690
    :goto_4
    return-object v0

    .line 664
    :cond_1
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    .line 665
    :cond_2
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->j:I

    move v5, v0

    goto :goto_1

    .line 666
    :cond_3
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->k:I

    goto :goto_2

    .line 673
    :cond_4
    sget v3, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v10, 0x15

    if-lt v3, v10, :cond_7

    .line 674
    if-eqz v6, :cond_5

    move v3, v2

    :goto_5
    if-eqz v6, :cond_6

    :goto_6
    invoke-virtual {p0, v3, v1}, Lcom/google/android/exoplayer2/mediacodec/a;->a(II)Landroid/graphics/Point;

    move-result-object v1

    .line 676
    iget v2, p1, Lcom/google/android/exoplayer2/Format;->l:F

    .line 677
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Point;->y:I

    float-to-double v12, v2

    invoke-virtual {p0, v3, v10, v12, v13}, Lcom/google/android/exoplayer2/mediacodec/a;->a(IID)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v0, v1

    .line 678
    goto :goto_4

    :cond_5
    move v3, v1

    .line 674
    goto :goto_5

    :cond_6
    move v1, v2

    goto :goto_6

    .line 682
    :cond_7
    const/16 v3, 0x10

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/v;->a(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    .line 683
    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/v;->a(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    .line 684
    mul-int v3, v1, v2

    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->b()I

    move-result v10

    if-gt v3, v10, :cond_a

    .line 685
    new-instance v3, Landroid/graphics/Point;

    if-eqz v6, :cond_8

    move v4, v2

    :goto_7
    if-eqz v6, :cond_9

    move v0, v1

    :goto_8
    invoke-direct {v3, v4, v0}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v3

    goto :goto_4

    :cond_8
    move v4, v1

    goto :goto_7

    :cond_9
    move v0, v2

    goto :goto_8

    .line 668
    :cond_a
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    .line 690
    :cond_b
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/c/c$a;ZI)Landroid/media/MediaFormat;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->b()Landroid/media/MediaFormat;

    move-result-object v0

    .line 580
    const-string v1, "max-width"

    iget v2, p1, Lcom/google/android/exoplayer2/c/c$a;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 581
    const-string v1, "max-height"

    iget v2, p1, Lcom/google/android/exoplayer2/c/c$a;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 583
    iget v1, p1, Lcom/google/android/exoplayer2/c/c$a;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 584
    const-string v1, "max-input-size"

    iget v2, p1, Lcom/google/android/exoplayer2/c/c$a;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 587
    :cond_0
    if-eqz p2, :cond_1

    .line 588
    const-string v1, "auto-frc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 591
    :cond_1
    if-eqz p3, :cond_2

    .line 592
    invoke-static {v0, p3}, Lcom/google/android/exoplayer2/c/c;->a(Landroid/media/MediaFormat;I)V

    .line 594
    :cond_2
    return-object v0
.end method

.method private static a(Lcom/google/android/exoplayer2/mediacodec/a;Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/c/c$a;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v10, -0x1

    const/4 v1, 0x0

    .line 620
    iget v6, p1, Lcom/google/android/exoplayer2/Format;->j:I

    .line 621
    iget v5, p1, Lcom/google/android/exoplayer2/Format;->k:I

    .line 622
    invoke-static {p1}, Lcom/google/android/exoplayer2/c/c;->c(Lcom/google/android/exoplayer2/Format;)I

    move-result v4

    .line 623
    array-length v0, p2

    if-ne v0, v2, :cond_0

    .line 626
    new-instance v0, Lcom/google/android/exoplayer2/c/c$a;

    invoke-direct {v0, v6, v5, v4}, Lcom/google/android/exoplayer2/c/c$a;-><init>(III)V

    .line 649
    :goto_0
    return-object v0

    .line 629
    :cond_0
    array-length v8, p2

    move v7, v1

    move v3, v1

    :goto_1
    if-ge v7, v8, :cond_3

    aget-object v9, p2, v7

    .line 630
    invoke-static {p1, v9}, Lcom/google/android/exoplayer2/c/c;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 631
    iget v0, v9, Lcom/google/android/exoplayer2/Format;->j:I

    if-eq v0, v10, :cond_1

    iget v0, v9, Lcom/google/android/exoplayer2/Format;->k:I

    if-ne v0, v10, :cond_2

    :cond_1
    move v0, v2

    :goto_2
    or-int/2addr v0, v3

    .line 633
    iget v3, v9, Lcom/google/android/exoplayer2/Format;->j:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 634
    iget v3, v9, Lcom/google/android/exoplayer2/Format;->k:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 635
    invoke-static {v9}, Lcom/google/android/exoplayer2/c/c;->c(Lcom/google/android/exoplayer2/Format;)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v4, v5

    move v5, v6

    .line 629
    :goto_3
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 631
    goto :goto_2

    .line 638
    :cond_3
    if-eqz v3, :cond_4

    .line 639
    const-string v0, "MediaCodecVideoRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/c/c;->a(Lcom/google/android/exoplayer2/mediacodec/a;Lcom/google/android/exoplayer2/Format;)Landroid/graphics/Point;

    move-result-object v0

    .line 641
    if-eqz v0, :cond_4

    .line 642
    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 643
    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 644
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 645
    invoke-static {v0, v6, v5}, Lcom/google/android/exoplayer2/c/c;->a(Ljava/lang/String;II)I

    move-result v0

    .line 644
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 646
    const-string v0, "MediaCodecVideoRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Codec max resolution adjusted to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_4
    new-instance v0, Lcom/google/android/exoplayer2/c/c$a;

    invoke-direct {v0, v6, v5, v4}, Lcom/google/android/exoplayer2/c/c$a;-><init>(III)V

    goto/16 :goto_0

    :cond_5
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto :goto_3
.end method

.method private a(Landroid/media/MediaCodec;I)V
    .locals 2

    .prologue
    .line 482
    const-string v0, "skipVideoBuffer"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/t;->a(Ljava/lang/String;)V

    .line 483
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 484
    invoke-static {}, Lcom/google/android/exoplayer2/util/t;->a()V

    .line 485
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c;->a:Lcom/google/android/exoplayer2/a/d;

    iget v1, v0, Lcom/google/android/exoplayer2/a/d;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/a/d;->e:I

    .line 486
    return-void
.end method

.method private a(Landroid/media/MediaCodec;IJ)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/c;->F()V

    .line 515
    const-string v0, "releaseOutputBuffer"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/t;->a(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p1, p2, p3, p4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 517
    invoke-static {}, Lcom/google/android/exoplayer2/util/t;->a()V

    .line 518
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c;->a:Lcom/google/android/exoplayer2/a/d;

    iget v1, v0, Lcom/google/android/exoplayer2/a/d;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/a/d;->d:I

    .line 519
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/c/c;->q:I

    .line 520
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c/c;->v()V

    .line 521
    return-void
.end method

.method private static a(Landroid/media/MediaCodec;Landroid/view/Surface;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 599
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    .line 600
    return-void
.end method

.method private static a(Landroid/media/MediaFormat;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 604
    const-string v0, "tunneled-playback"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    .line 605
    const-string v0, "audio-session-id"

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 606
    return-void
.end method

.method private a(Landroid/view/Surface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c;->k:Landroid/view/Surface;

    if-eq v0, p1, :cond_1

    .line 303
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/c;->k:Landroid/view/Surface;

    .line 304
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c/c;->d()I

    move-result v0

    .line 305
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c/c;->A()Landroid/media/MediaCodec;

    move-result-object v0

    .line 307
    sget v1, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 308
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/c/c;->a(Landroid/media/MediaCodec;Landroid/view/Surface;)V

    .line 317
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/c;->w()V

    .line 318
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/c;->E()V

    .line 319
    return-void

    .line 310
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c/c;->B()V

    .line 311
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c/c;->y()V

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    invoke-static {p0}, Lcom/google/android/exoplayer2/c/c;->e(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/exoplayer2/c/c;->e(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/media/MediaCodec;I)V
    .locals 3

    .prologue
    .line 489
    const-string v0, "dropVideoBuffer"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/t;->a(Ljava/lang/String;)V

    .line 490
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 491
    invoke-static {}, Lcom/google/android/exoplayer2/util/t;->a()V

    .line 492
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c;->a:Lcom/google/android/exoplayer2/a/d;

    iget v1, v0, Lcom/google/android/exoplayer2/a/d;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/a/d;->f:I

    .line 493
    iget v0, p0, Lcom/google/android/exoplayer2/c/c;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/c/c;->p:I

    .line 494
    iget v0, p0, Lcom/google/android/exoplayer2/c/c;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/c/c;->q:I

    .line 495
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c;->a:Lcom/google/android/exoplayer2/a/d;

    iget v1, p0, Lcom/google/android/exoplayer2/c/c;->q:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/c/c;->a:Lcom/google/android/exoplayer2/a/d;

    iget v2, v2, Lcom/google/android/exoplayer2/a/d;->g:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer2/a/d;->g:I

    .line 497
    iget v0, p0, Lcom/google/android/exoplayer2/c/c;->p:I

    iget v1, p0, Lcom/google/android/exoplayer2/c/c;->g:I

    if-ne v0, v1, :cond_0

    .line 498
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/c;->G()V

    .line 500
    :cond_0
    return-void
.end method

.method private static c(Lcom/google/android/exoplayer2/Format;)I
    .locals 3

    .prologue
    .line 701
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 703
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->g:I

    .line 705
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->j:I

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->k:I

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/c/c;->a(Ljava/lang/String;II)I

    move-result v0

    goto :goto_0
.end method

.method private c(Landroid/media/MediaCodec;I)V
    .locals 2

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/c;->F()V

    .line 504
    const-string v0, "releaseOutputBuffer"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/t;->a(Ljava/lang/String;)V

    .line 505
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 506
    invoke-static {}, Lcom/google/android/exoplayer2/util/t;->a()V

    .line 507
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c;->a:Lcom/google/android/exoplayer2/a/d;

    iget v1, v0, Lcom/google/android/exoplayer2/a/d;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/a/d;->d:I

    .line 508
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/c/c;->q:I

    .line 509
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c/c;->v()V

    .line 510
    return-void
.end method

.method private static d(Lcom/google/android/exoplayer2/Format;)F
    .locals 2

    .prologue
    .line 797
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->n:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->n:F

    goto :goto_0
.end method

.method private static d(Landroid/media/MediaCodec;I)V
    .locals 0

    .prologue
    .line 761
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 762
    return-void
.end method

.method private static e(Lcom/google/android/exoplayer2/Format;)I
    .locals 2

    .prologue
    .line 801
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->m:I

    goto :goto_0
.end method

.method private w()V
    .locals 3

    .prologue
    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/c;->m:Z

    .line 529
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/c;->B:Z

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c/c;->A()Landroid/media/MediaCodec;

    move-result-object v0

    .line 532
    if-eqz v0, :cond_0

    .line 533
    new-instance v1, Lcom/google/android/exoplayer2/c/c$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/exoplayer2/c/c$b;-><init>(Lcom/google/android/exoplayer2/c/c;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/c/c$1;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/c/c;->b:Lcom/google/android/exoplayer2/c/c$b;

    .line 536
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/exoplayer2/mediacodec/b;Lcom/google/android/exoplayer2/Format;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 174
    iget-object v4, p2, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 175
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/i;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return v1

    .line 179
    :cond_0
    iget-object v5, p2, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 180
    if-eqz v5, :cond_1

    move v0, v1

    move v2, v1

    .line 181
    :goto_1
    iget v6, v5, Lcom/google/android/exoplayer2/drm/DrmInitData;->a:I

    if-ge v0, v6, :cond_2

    .line 182
    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;->a(I)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v6

    iget-boolean v6, v6, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->c:Z

    or-int/2addr v2, v6

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 185
    :cond_2
    invoke-interface {p1, v4, v2}, Lcom/google/android/exoplayer2/mediacodec/b;->a(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/mediacodec/a;

    move-result-object v4

    .line 187
    if-nez v4, :cond_3

    move v1, v3

    .line 188
    goto :goto_0

    .line 191
    :cond_3
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/mediacodec/a;->b(Ljava/lang/String;)Z

    move-result v0

    .line 192
    if-eqz v0, :cond_4

    iget v2, p2, Lcom/google/android/exoplayer2/Format;->j:I

    if-lez v2, :cond_4

    iget v2, p2, Lcom/google/android/exoplayer2/Format;->k:I

    if-lez v2, :cond_4

    .line 193
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_6

    .line 194
    iget v0, p2, Lcom/google/android/exoplayer2/Format;->j:I

    iget v2, p2, Lcom/google/android/exoplayer2/Format;->k:I

    iget v3, p2, Lcom/google/android/exoplayer2/Format;->l:F

    float-to-double v6, v3

    invoke-virtual {v4, v0, v2, v6, v7}, Lcom/google/android/exoplayer2/mediacodec/a;->a(IID)Z

    move-result v0

    .line 205
    :cond_4
    :goto_2
    iget-boolean v2, v4, Lcom/google/android/exoplayer2/mediacodec/a;->b:Z

    if-eqz v2, :cond_8

    const/16 v2, 0x8

    .line 206
    :goto_3
    iget-boolean v3, v4, Lcom/google/android/exoplayer2/mediacodec/a;->c:Z

    if-eqz v3, :cond_5

    const/16 v1, 0x10

    .line 207
    :cond_5
    if-eqz v0, :cond_9

    const/4 v0, 0x3

    .line 208
    :goto_4
    or-int/2addr v1, v2

    or-int/2addr v1, v0

    goto :goto_0

    .line 197
    :cond_6
    iget v0, p2, Lcom/google/android/exoplayer2/Format;->j:I

    iget v2, p2, Lcom/google/android/exoplayer2/Format;->k:I

    mul-int/2addr v0, v2

    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->b()I

    move-result v2

    if-gt v0, v2, :cond_7

    move v0, v3

    .line 198
    :goto_5
    if-nez v0, :cond_4

    .line 199
    const-string v2, "MediaCodecVideoRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FalseCheck [legacyFrameSize, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p2, Lcom/google/android/exoplayer2/Format;->j:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p2, Lcom/google/android/exoplayer2/Format;->k:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/google/android/exoplayer2/util/v;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    move v0, v1

    .line 197
    goto :goto_5

    .line 205
    :cond_8
    const/4 v2, 0x4

    goto :goto_3

    .line 207
    :cond_9
    const/4 v0, 0x2

    goto :goto_4
.end method

.method public a(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 287
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 288
    check-cast p2, Landroid/view/Surface;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/c/c;->a(Landroid/view/Surface;)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 290
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/c/c;->l:I

    .line 291
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c/c;->A()Landroid/media/MediaCodec;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_0

    .line 293
    iget v1, p0, Lcom/google/android/exoplayer2/c/c;->l:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/c/c;->d(Landroid/media/MediaCodec;I)V

    goto :goto_0

    .line 296
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(JZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(JZ)V

    .line 229
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/c;->w()V

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/c/c;->q:I

    .line 231
    if-eqz p3, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/c;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/c;->f:J

    add-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/c;->n:J

    .line 233
    return-void

    .line 232
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method protected a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 3

    .prologue
    .line 361
    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "crop-left"

    .line 362
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "crop-top"

    .line 363
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 364
    :goto_0
    if-eqz v1, :cond_3

    const-string v0, "crop-right"

    .line 365
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v2, "crop-left"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 366
    :goto_1
    iput v0, p0, Lcom/google/android/exoplayer2/c/c;->t:I

    .line 367
    if-eqz v1, :cond_4

    const-string v0, "crop-bottom"

    .line 368
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "crop-top"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 369
    :goto_2
    iput v0, p0, Lcom/google/android/exoplayer2/c/c;->u:I

    .line 370
    iget v0, p0, Lcom/google/android/exoplayer2/c/c;->s:F

    iput v0, p0, Lcom/google/android/exoplayer2/c/c;->w:F

    .line 371
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    .line 375
    iget v0, p0, Lcom/google/android/exoplayer2/c/c;->r:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/c/c;->r:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 376
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/c/c;->t:I

    .line 377
    iget v1, p0, Lcom/google/android/exoplayer2/c/c;->u:I

    iput v1, p0, Lcom/google/android/exoplayer2/c/c;->t:I

    .line 378
    iput v0, p0, Lcom/google/android/exoplayer2/c/c;->u:I

    .line 379
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/google/android/exoplayer2/c/c;->w:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/c/c;->w:F

    .line 386
    :cond_1
    :goto_3
    iget v0, p0, Lcom/google/android/exoplayer2/c/c;->l:I

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/c/c;->d(Landroid/media/MediaCodec;I)V

    .line 387
    return-void

    .line 363
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 365
    :cond_3
    const-string v0, "width"

    .line 366
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 368
    :cond_4
    const-string v0, "height"

    .line 369
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 383
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/c/c;->r:I

    iput v0, p0, Lcom/google/android/exoplayer2/c/c;->v:I

    goto :goto_3
.end method

.method protected a(Lcom/google/android/exoplayer2/a/e;)V
    .locals 2

    .prologue
    .line 354
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/c;->B:Z

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c/c;->v()V

    .line 357
    :cond_0
    return-void
.end method

.method protected a(Lcom/google/android/exoplayer2/mediacodec/a;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c;->i:[Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, p3, v0}, Lcom/google/android/exoplayer2/c/c;->a(Lcom/google/android/exoplayer2/mediacodec/a;Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/c/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/c;->j:Lcom/google/android/exoplayer2/c/c$a;

    .line 330
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c;->j:Lcom/google/android/exoplayer2/c/c$a;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/c/c;->h:Z

    iget v2, p0, Lcom/google/android/exoplayer2/c/c;->C:I

    invoke-static {p3, v0, v1, v2}, Lcom/google/android/exoplayer2/c/c;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/c/c$a;ZI)Landroid/media/MediaFormat;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/c;->k:Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, p4, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 333
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/c;->B:Z

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Lcom/google/android/exoplayer2/c/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/exoplayer2/c/c$b;-><init>(Lcom/google/android/exoplayer2/c/c;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/c/c$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/c;->b:Lcom/google/android/exoplayer2/c/c$b;

    .line 336
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;JJ)V
    .locals 6

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c;->e:Lcom/google/android/exoplayer2/c/e$a;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/c/e$a;->a(Ljava/lang/String;JJ)V

    .line 342
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
    .line 213
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c/c;->q()Lcom/google/android/exoplayer2/l;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/l;->b:I

    iput v0, p0, Lcom/google/android/exoplayer2/c/c;->C:I

    .line 215
    iget v0, p0, Lcom/google/android/exoplayer2/c/c;->C:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/c;->B:Z

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c;->e:Lcom/google/android/exoplayer2/c/e$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/c;->a:Lcom/google/android/exoplayer2/a/d;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/c/e$a;->a(Lcom/google/android/exoplayer2/a/d;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c;->d:Lcom/google/android/exoplayer2/c/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/d;->a()V

    .line 218
    return-void

    .line 215
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a([Lcom/google/android/exoplayer2/Format;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/c;->i:[Lcom/google/android/exoplayer2/Format;

    .line 223
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a([Lcom/google/android/exoplayer2/Format;)V

    .line 224
    return-void
.end method

.method protected a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 9

    .prologue
    .line 403
    if-eqz p11, :cond_0

    .line 404
    move/from16 v0, p7

    invoke-direct {p0, p5, v0}, Lcom/google/android/exoplayer2/c/c;->a(Landroid/media/MediaCodec;I)V

    .line 405
    const/4 v2, 0x1

    .line 465
    :goto_0
    return v2

    .line 408
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/c/c;->m:Z

    if-nez v2, :cond_2

    .line 409
    sget v2, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 410
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move/from16 v0, p7

    invoke-direct {p0, p5, v0, v2, v3}, Lcom/google/android/exoplayer2/c/c;->a(Landroid/media/MediaCodec;IJ)V

    .line 414
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 412
    :cond_1
    move/from16 v0, p7

    invoke-direct {p0, p5, v0}, Lcom/google/android/exoplayer2/c/c;->c(Landroid/media/MediaCodec;I)V

    goto :goto_1

    .line 417
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c/c;->d()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 418
    const/4 v2, 0x0

    goto :goto_0

    .line 422
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sub-long/2addr v2, p3

    .line 423
    sub-long v4, p9, p1

    sub-long v2, v4, v2

    .line 426
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 427
    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    add-long/2addr v2, v4

    .line 430
    iget-object v6, p0, Lcom/google/android/exoplayer2/c/c;->d:Lcom/google/android/exoplayer2/c/d;

    move-wide/from16 v0, p9

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/c/d;->a(JJ)J

    move-result-wide v2

    .line 432
    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 434
    invoke-virtual {p0, v4, v5, p3, p4}, Lcom/google/android/exoplayer2/c/c;->b(JJ)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 436
    move/from16 v0, p7

    invoke-direct {p0, p5, v0}, Lcom/google/android/exoplayer2/c/c;->b(Landroid/media/MediaCodec;I)V

    .line 437
    const/4 v2, 0x1

    goto :goto_0

    .line 440
    :cond_4
    sget v6, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_5

    .line 442
    const-wide/32 v6, 0xc350

    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    .line 443
    move/from16 v0, p7

    invoke-direct {p0, p5, v0, v2, v3}, Lcom/google/android/exoplayer2/c/c;->a(Landroid/media/MediaCodec;IJ)V

    .line 444
    const/4 v2, 0x1

    goto :goto_0

    .line 448
    :cond_5
    const-wide/16 v2, 0x7530

    cmp-long v2, v4, v2

    if-gez v2, :cond_7

    .line 449
    const-wide/16 v2, 0x2af8

    cmp-long v2, v4, v2

    if-lez v2, :cond_6

    .line 454
    const-wide/16 v2, 0x2710

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3e8

    :try_start_0
    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :cond_6
    :goto_2
    move/from16 v0, p7

    invoke-direct {p0, p5, v0}, Lcom/google/android/exoplayer2/c/c;->c(Landroid/media/MediaCodec;I)V

    .line 460
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 455
    :catch_0
    move-exception v2

    .line 456
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 465
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method protected a(Landroid/media/MediaCodec;ZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z
    .locals 2

    .prologue
    .line 392
    invoke-static {p3, p4}, Lcom/google/android/exoplayer2/c/c;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p4, Lcom/google/android/exoplayer2/Format;->j:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/c;->j:Lcom/google/android/exoplayer2/c/c$a;

    iget v1, v1, Lcom/google/android/exoplayer2/c/c$a;->a:I

    if-gt v0, v1, :cond_1

    iget v0, p4, Lcom/google/android/exoplayer2/Format;->k:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/c;->j:Lcom/google/android/exoplayer2/c/c$a;

    iget v1, v1, Lcom/google/android/exoplayer2/c/c$a;->b:I

    if-gt v0, v1, :cond_1

    iget v0, p4, Lcom/google/android/exoplayer2/Format;->g:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/c;->j:Lcom/google/android/exoplayer2/c/c$a;

    iget v1, v1, Lcom/google/android/exoplayer2/c/c$a;->c:I

    if-gt v0, v1, :cond_1

    if-nez p2, :cond_0

    iget v0, p3, Lcom/google/android/exoplayer2/Format;->j:I

    iget v1, p4, Lcom/google/android/exoplayer2/Format;->j:I

    if-ne v0, v1, :cond_1

    iget v0, p3, Lcom/google/android/exoplayer2/Format;->k:I

    iget v1, p4, Lcom/google/android/exoplayer2/Format;->k:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Lcom/google/android/exoplayer2/Format;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 346
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 347
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c;->e:Lcom/google/android/exoplayer2/c/e$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/c/e$a;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 348
    invoke-static {p1}, Lcom/google/android/exoplayer2/c/c;->d(Lcom/google/android/exoplayer2/Format;)F

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/c/c;->s:F

    .line 349
    invoke-static {p1}, Lcom/google/android/exoplayer2/c/c;->e(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/c/c;->r:I

    .line 350
    return-void
.end method

.method protected b(JJ)Z
    .locals 3

    .prologue
    .line 478
    const-wide/16 v0, -0x7530

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected n()V
    .locals 2

    .prologue
    .line 256
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n()V

    .line 257
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/c/c;->p:I

    .line 258
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/c;->o:J

    .line 259
    return-void
.end method

.method protected o()V
    .locals 2

    .prologue
    .line 263
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/c;->n:J

    .line 264
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/c;->G()V

    .line 265
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o()V

    .line 266
    return-void
.end method

.method protected p()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/high16 v0, -0x40800000    # -1.0f

    .line 270
    iput v1, p0, Lcom/google/android/exoplayer2/c/c;->t:I

    .line 271
    iput v1, p0, Lcom/google/android/exoplayer2/c/c;->u:I

    .line 272
    iput v0, p0, Lcom/google/android/exoplayer2/c/c;->w:F

    .line 273
    iput v0, p0, Lcom/google/android/exoplayer2/c/c;->s:F

    .line 274
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/c;->E()V

    .line 275
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c;->d:Lcom/google/android/exoplayer2/c/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/d;->b()V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/c;->b:Lcom/google/android/exoplayer2/c/c$b;

    .line 278
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c;->a:Lcom/google/android/exoplayer2/a/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/d;->a()V

    .line 281
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c;->e:Lcom/google/android/exoplayer2/c/e$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/c;->a:Lcom/google/android/exoplayer2/a/d;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/c/e$a;->b(Lcom/google/android/exoplayer2/a/d;)V

    .line 283
    return-void

    .line 280
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/c;->a:Lcom/google/android/exoplayer2/a/d;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a/d;->a()V

    .line 281
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/c;->e:Lcom/google/android/exoplayer2/c/e$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/c/c;->a:Lcom/google/android/exoplayer2/a/d;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/c/e$a;->b(Lcom/google/android/exoplayer2/a/d;)V

    throw v0
.end method

.method public t()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 237
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/c/c;->m:Z

    if-nez v2, :cond_0

    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 239
    iput-wide v6, p0, Lcom/google/android/exoplayer2/c/c;->n:J

    .line 250
    :cond_1
    :goto_0
    return v0

    .line 241
    :cond_2
    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/c;->n:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    move v0, v1

    .line 243
    goto :goto_0

    .line 244
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/c/c;->n:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 249
    iput-wide v6, p0, Lcom/google/android/exoplayer2/c/c;->n:J

    move v0, v1

    .line 250
    goto :goto_0
.end method

.method v()V
    .locals 2

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/c;->m:Z

    if-nez v0, :cond_0

    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/c;->m:Z

    .line 541
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c;->e:Lcom/google/android/exoplayer2/c/e$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/c;->k:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/c/e$a;->a(Landroid/view/Surface;)V

    .line 543
    :cond_0
    return-void
.end method

.method protected z()Z
    .locals 1

    .prologue
    .line 323
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c;->k:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c;->k:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
