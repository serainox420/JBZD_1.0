.class public final Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$c;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$d;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$b;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/exoplayer2/mediacodec/a;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/mediacodec/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final d:Landroid/util/SparseIntArray;

.field private static final e:Landroid/util/SparseIntArray;

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x20

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 59
    const-string v0, "OMX.google.raw.decoder"

    .line 60
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/a;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/mediacodec/a;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a:Lcom/google/android/exoplayer2/mediacodec/a;

    .line 61
    const-string v0, "^\\D?(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->b:Ljava/util/regex/Pattern;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->c:Ljava/util/HashMap;

    .line 77
    const/4 v0, -0x1

    sput v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->g:I

    .line 561
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->d:Landroid/util/SparseIntArray;

    .line 562
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->d:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 563
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->d:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 564
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->d:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 565
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->d:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 567
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->e:Landroid/util/SparseIntArray;

    .line 568
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 570
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 571
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 572
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 573
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 574
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0x15

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 575
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0x16

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 576
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0x1e

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 577
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0x1f

    const/16 v2, 0x200

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 578
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0x400

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 579
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0x28

    const/16 v2, 0x800

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 580
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0x29

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 581
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0x2a

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 582
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0x32

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 583
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0x33

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 584
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0x34

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 586
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    .line 587
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "L30"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "L60"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "L63"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "L90"

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "L93"

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "L120"

    const/16 v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "L123"

    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "L150"

    const/16 v2, 0x4000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "L153"

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "L156"

    const/high16 v2, 0x40000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "L180"

    const/high16 v2, 0x100000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "L183"

    const/high16 v2, 0x400000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "L186"

    const/high16 v2, 0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "H30"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "H60"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "H63"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "H90"

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "H93"

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "H120"

    const/16 v2, 0x800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "H123"

    const/16 v2, 0x2000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "H150"

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "H153"

    const/high16 v2, 0x20000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "H156"

    const/high16 v2, 0x80000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "H180"

    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "H183"

    const/high16 v2, 0x800000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const-string v1, "H186"

    const/high16 v2, 0x2000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    return-void
.end method

.method private static a(I)I
    .locals 4

    .prologue
    const/high16 v3, 0x200000

    const v2, 0x65400

    const/16 v0, 0x6300

    const v1, 0x18c00

    .line 412
    sparse-switch p0, :sswitch_data_0

    .line 428
    const/4 v0, -0x1

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v1

    .line 415
    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 416
    goto :goto_0

    :sswitch_3
    move v0, v1

    .line 417
    goto :goto_0

    .line 418
    :sswitch_4
    const v0, 0x31800

    goto :goto_0

    :sswitch_5
    move v0, v2

    .line 419
    goto :goto_0

    :sswitch_6
    move v0, v2

    .line 420
    goto :goto_0

    .line 421
    :sswitch_7
    const v0, 0xe1000

    goto :goto_0

    .line 422
    :sswitch_8
    const/high16 v0, 0x140000

    goto :goto_0

    :sswitch_9
    move v0, v3

    .line 423
    goto :goto_0

    :sswitch_a
    move v0, v3

    .line 424
    goto :goto_0

    .line 425
    :sswitch_b
    const/high16 v0, 0x220000

    goto :goto_0

    .line 426
    :sswitch_c
    const v0, 0x564000

    goto :goto_0

    .line 427
    :sswitch_d
    const/high16 v0, 0x900000

    goto :goto_0

    .line 412
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_5
        0x100 -> :sswitch_6
        0x200 -> :sswitch_7
        0x400 -> :sswitch_8
        0x800 -> :sswitch_9
        0x1000 -> :sswitch_a
        0x2000 -> :sswitch_b
        0x4000 -> :sswitch_c
        0x8000 -> :sswitch_d
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 318
    if-nez p0, :cond_0

    .line 330
    :goto_0
    return-object v0

    .line 321
    :cond_0
    const-string v2, "\\."

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 322
    aget-object v4, v3, v1

    const/4 v2, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 325
    :pswitch_0
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    .line 322
    :sswitch_0
    const-string v5, "hev1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :sswitch_1
    const-string v1, "hvc1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "avc1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "avc2"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    .line 328
    :pswitch_1
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->b(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    .line 322
    nop

    :sswitch_data_0
    .sparse-switch
        0x2ddf23 -> :sswitch_2
        0x2ddf24 -> :sswitch_3
        0x30d038 -> :sswitch_0
        0x310dbc -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 335
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 337
    const-string v0, "MediaCodecUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring malformed HEVC codec string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 361
    :goto_0
    return-object v0

    .line 341
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->b:Ljava/util/regex/Pattern;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 342
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 343
    const-string v0, "MediaCodecUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring malformed HEVC codec string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 344
    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 348
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 356
    :goto_1
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->f:Ljava/util/Map;

    const/4 v5, 0x3

    aget-object v5, p1, v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 357
    if-nez v0, :cond_4

    .line 358
    const-string v0, "MediaCodecUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown HEVC level string: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 359
    goto :goto_0

    .line 350
    :cond_2
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 351
    const/4 v0, 0x2

    move v1, v0

    goto :goto_1

    .line 353
    :cond_3
    const-string v1, "MediaCodecUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown HEVC profile string: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 354
    goto/16 :goto_0

    .line 361
    :cond_4
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    goto/16 :goto_0
.end method

.method public static a()Lcom/google/android/exoplayer2/mediacodec/a;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a:Lcom/google/android/exoplayer2/mediacodec/a;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/mediacodec/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->b(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/a;

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$b;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$b;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/mediacodec/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 166
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;->a:Ljava/lang/String;

    .line 168
    invoke-interface {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$b;->a()I

    move-result v5

    .line 169
    invoke-interface {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$b;->b()Z

    move-result v6

    .line 171
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_4

    .line 172
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$b;->a(I)Landroid/media/MediaCodecInfo;

    move-result-object v7

    .line 173
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    .line 174
    invoke-static {v7, v8, v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Landroid/media/MediaCodecInfo;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 175
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v10, :cond_6

    aget-object v11, v9, v2

    .line 176
    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    :try_start_1
    invoke-virtual {v7, v11}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1

    .line 179
    invoke-interface {p1, v4, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$b;->a(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v12

    .line 180
    if-eqz v6, :cond_0

    iget-boolean v13, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;->b:Z

    if-eq v13, v12, :cond_1

    :cond_0
    if-nez v6, :cond_3

    iget-boolean v13, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;->b:Z

    if-nez v13, :cond_3

    .line 182
    :cond_1
    invoke-static {v8, v4, v1}, Lcom/google/android/exoplayer2/mediacodec/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Lcom/google/android/exoplayer2/mediacodec/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_2
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 183
    :cond_3
    if-nez v6, :cond_2

    if-eqz v12, :cond_2

    .line 184
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".secure"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v4, v1}, Lcom/google/android/exoplayer2/mediacodec/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Lcom/google/android/exoplayer2/mediacodec/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 204
    :cond_4
    return-object v0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    :try_start_2
    sget v12, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v13, 0x17

    if-gt v12, v13, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 192
    const-string v1, "MediaCodecUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping codec "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (failed to query capabilities)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 205
    :catch_1
    move-exception v0

    .line 208
    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$1;)V

    throw v1

    .line 196
    :cond_5
    :try_start_3
    const-string v0, "MediaCodecUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query codec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 171
    :cond_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0
.end method

.method private static a(Landroid/media/MediaCodecInfo;Ljava/lang/String;Z)Z
    .locals 6

    .prologue
    const/16 v5, 0x13

    const/16 v4, 0x12

    const/16 v3, 0x10

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    const-string v1, ".secure"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    sget v1, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_2

    const-string v1, "CIPAACDecoder"

    .line 223
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CIPMP3Decoder"

    .line 224
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CIPVorbisDecoder"

    .line 225
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CIPAMRNBDecoder"

    .line 226
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AACDecoder"

    .line 227
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MP3Decoder"

    .line 228
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    :cond_2
    sget v1, Lcom/google/android/exoplayer2/util/v;->a:I

    if-ge v1, v4, :cond_3

    const-string v1, "OMX.SEC.MP3.Decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    :cond_3
    sget v1, Lcom/google/android/exoplayer2/util/v;->a:I

    if-ge v1, v4, :cond_4

    const-string v1, "OMX.MTK.AUDIO.DECODER.AAC"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "a70"

    sget-object v2, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    :cond_4
    sget v1, Lcom/google/android/exoplayer2/util/v;->a:I

    if-ne v1, v3, :cond_5

    const-string v1, "OMX.qcom.audio.decoder.mp3"

    .line 244
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "dlxu"

    sget-object v2, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "protou"

    sget-object v2, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ville"

    sget-object v2, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "villeplus"

    sget-object v2, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "villec2"

    sget-object v2, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    const-string v2, "gee"

    .line 250
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "C6602"

    sget-object v2, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "C6603"

    sget-object v2, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "C6606"

    sget-object v2, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "C6616"

    sget-object v2, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "L36h"

    sget-object v2, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SO-02E"

    sget-object v2, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    :cond_5
    sget v1, Lcom/google/android/exoplayer2/util/v;->a:I

    if-ne v1, v3, :cond_6

    const-string v1, "OMX.qcom.audio.decoder.aac"

    .line 262
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "C1504"

    sget-object v2, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "C1505"

    sget-object v2, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    .line 264
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "C1604"

    sget-object v2, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "C1605"

    sget-object v2, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    .line 266
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    :cond_6
    sget v1, Lcom/google/android/exoplayer2/util/v;->a:I

    if-gt v1, v5, :cond_8

    sget-object v1, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    const-string v2, "d2"

    .line 273
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    const-string v2, "serrano"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    const-string v2, "jflte"

    .line 274
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    const-string v2, "santos"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const-string v1, "samsung"

    sget-object v2, Lcom/google/android/exoplayer2/util/v;->c:Ljava/lang/String;

    .line 275
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "OMX.SEC.vp8.dec"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    :cond_8
    sget v1, Lcom/google/android/exoplayer2/util/v;->a:I

    if-gt v1, v5, :cond_9

    sget-object v1, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    const-string v2, "jflte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "OMX.qcom.video.decoder.vp8"

    .line 280
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static b()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 293
    sget v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->g:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 295
    const-string v1, "video/avc"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/mediacodec/a;

    move-result-object v1

    .line 296
    if-eqz v1, :cond_1

    .line 297
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/a;->a()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 298
    iget v4, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(I)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_3

    const v0, 0x54600

    :goto_1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 304
    :cond_1
    sput v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->g:I

    .line 306
    :cond_2
    sget v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->g:I

    return v0

    .line 302
    :cond_3
    const v0, 0x2a300

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 365
    array-length v0, p1

    if-ge v0, v1, :cond_0

    .line 367
    const-string v0, "MediaCodecUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring malformed AVC codec string: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 401
    :goto_0
    return-object v0

    .line 373
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 375
    const/4 v0, 0x1

    aget-object v0, p1, v0

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 376
    const/4 v0, 0x1

    aget-object v0, p1, v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 391
    :goto_1
    sget-object v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 392
    if-nez v3, :cond_3

    .line 393
    const-string v0, "MediaCodecUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown AVC profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 394
    goto :goto_0

    .line 377
    :cond_1
    :try_start_1
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 379
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 380
    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 383
    :cond_2
    const-string v0, "MediaCodecUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring malformed AVC codec string: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    .line 384
    goto/16 :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    const-string v0, "MediaCodecUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring malformed AVC codec string: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 388
    goto/16 :goto_0

    .line 396
    :cond_3
    sget-object v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 397
    if-nez v1, :cond_4

    .line 398
    const-string v1, "MediaCodecUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown AVC level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 399
    goto/16 :goto_0

    .line 401
    :cond_4
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static declared-synchronized b(Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/mediacodec/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x15

    .line 140
    const-class v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;

    invoke-direct {v3, p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;-><init>(Ljava/lang/String;Z)V

    .line 141
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    if-eqz v0, :cond_0

    .line 160
    :goto_0
    monitor-exit v2

    return-object v0

    .line 145
    :cond_0
    :try_start_1
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    if-lt v0, v4, :cond_3

    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$d;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$d;-><init>(Z)V

    .line 147
    :goto_1
    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$b;)Ljava/util/List;

    move-result-object v0

    .line 148
    if-eqz p1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/google/android/exoplayer2/util/v;->a:I

    if-gt v4, v1, :cond_2

    sget v1, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v4, 0x17

    if-gt v1, v4, :cond_2

    .line 151
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$c;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$1;)V

    .line 152
    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$b;)Ljava/util/List;

    move-result-object v1

    .line 153
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    const-string v4, "MediaCodecUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ". Assuming: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v0, 0x0

    .line 155
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/mediacodec/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v1

    .line 158
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 159
    sget-object v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 145
    :cond_3
    :try_start_2
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$c;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
