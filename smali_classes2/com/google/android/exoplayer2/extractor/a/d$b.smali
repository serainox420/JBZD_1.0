.class final Lcom/google/android/exoplayer2/extractor/a/d$b;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:[B

.field public g:[B

.field public h:[B

.field public i:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:[B

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:J

.field public u:J

.field public v:Z

.field public w:Z

.field public x:Lcom/google/android/exoplayer2/extractor/n;

.field public y:I

.field private z:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 1303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1319
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/a/d$b;->j:I

    .line 1320
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/a/d$b;->k:I

    .line 1321
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/a/d$b;->l:I

    .line 1322
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/a/d$b;->m:I

    .line 1323
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/d$b;->n:I

    .line 1324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d$b;->o:[B

    .line 1325
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/a/d$b;->p:I

    .line 1329
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/a/d$b;->q:I

    .line 1330
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/a/d$b;->r:I

    .line 1331
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/d$b;->s:I

    .line 1332
    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/a/d$b;->t:J

    .line 1333
    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/a/d$b;->u:J

    .line 1337
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/a/d$b;->w:Z

    .line 1338
    const-string v0, "eng"

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d$b;->z:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/a/d$1;)V
    .locals 0

    .prologue
    .line 1303
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/a/d$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/a/d$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/a/d$b;->z:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Lcom/google/android/exoplayer2/util/l;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/l;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 1522
    const/16 v0, 0x10

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 1523
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->l()J

    move-result-wide v0

    .line 1524
    const-wide/32 v2, 0x31435657

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1525
    const/4 v0, 0x0

    .line 1537
    :goto_0
    return-object v0

    .line 1530
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    .line 1531
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    .line 1532
    :goto_1
    array-length v2, v1

    add-int/lit8 v2, v2, -0x4

    if-ge v0, v2, :cond_2

    .line 1533
    aget-byte v2, v1, v0

    if-nez v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v1, v2

    if-nez v2, :cond_1

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    .line 1536
    array-length v2, v1

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 1537
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1532
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1541
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Failed to find FourCC VC1 initialization data"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1542
    :catch_0
    move-exception v0

    .line 1543
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Error parsing FourCC VC1 codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a([B)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v0, 0x0

    .line 1556
    const/4 v1, 0x0

    :try_start_0
    aget-byte v1, p0, v1

    if-eq v1, v2, :cond_0

    .line 1557
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1593
    :catch_0
    move-exception v0

    .line 1594
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v0

    move v3, v4

    .line 1561
    :goto_0
    :try_start_1
    aget-byte v1, p0, v3

    if-ne v1, v5, :cond_1

    .line 1562
    add-int/lit16 v1, v2, 0xff

    .line 1563
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 1565
    :cond_1
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, p0, v3

    add-int/2addr v2, v3

    .line 1568
    :goto_1
    aget-byte v3, p0, v1

    if-ne v3, v5, :cond_2

    .line 1569
    add-int/lit16 v0, v0, 0xff

    .line 1570
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1572
    :cond_2
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    add-int/2addr v0, v1

    .line 1574
    aget-byte v1, p0, v3

    if-eq v1, v4, :cond_3

    .line 1575
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1577
    :cond_3
    new-array v1, v2, [B

    .line 1578
    const/4 v4, 0x0

    invoke-static {p0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1579
    add-int/2addr v2, v3

    .line 1580
    aget-byte v3, p0, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    .line 1581
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1583
    :cond_4
    add-int/2addr v0, v2

    .line 1584
    aget-byte v2, p0, v0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    .line 1585
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1587
    :cond_5
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [B

    .line 1588
    const/4 v3, 0x0

    array-length v4, p0

    sub-int/2addr v4, v0

    invoke-static {p0, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1589
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1590
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1591
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1592
    return-object v0
.end method

.method private static b(Lcom/google/android/exoplayer2/util/l;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1606
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->h()I

    move-result v2

    .line 1607
    if-ne v2, v0, :cond_1

    .line 1614
    :cond_0
    :goto_0
    return v0

    .line 1609
    :cond_1
    const v3, 0xfffe

    if-ne v2, v3, :cond_3

    .line 1610
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 1611
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->o()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/a/d;->a()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1612
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->o()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/a/d;->a()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1614
    goto :goto_0

    .line 1616
    :catch_0
    move-exception v0

    .line 1617
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Error parsing MS/ACM codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/extractor/h;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 1349
    const/4 v6, -0x1

    .line 1350
    const/4 v9, -0x1

    .line 1351
    const/4 v10, 0x0

    .line 1352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->a:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 1465
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    const-string v3, "Unrecognized codec identifier."

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1352
    :sswitch_0
    const-string v4, "V_VP8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "V_VP9"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v4, "V_MPEG2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "V_MPEG4/ISO/SP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v4, "V_MPEG4/ISO/ASP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v4, "V_MPEG4/ISO/AP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string v4, "V_MPEG4/ISO/AVC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const-string v4, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_8
    const-string v4, "V_MS/VFW/FOURCC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :sswitch_9
    const-string v4, "V_THEORA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x9

    goto :goto_0

    :sswitch_a
    const-string v4, "A_VORBIS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xa

    goto :goto_0

    :sswitch_b
    const-string v4, "A_OPUS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v4, "A_AAC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v4, "A_MPEG/L2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v4, "A_MPEG/L3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v4, "A_AC3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v4, "A_EAC3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v4, "A_TRUEHD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v4, "A_DTS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v4, "A_DTS/EXPRESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v4, "A_DTS/LOSSLESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v4, "A_FLAC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v4, "A_MS/ACM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v4, "A_PCM/INT/LIT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string v4, "S_TEXT/UTF8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string v4, "S_VOBSUB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string v4, "S_HDMV/PGS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x1a

    goto/16 :goto_0

    .line 1354
    :pswitch_0
    const-string v3, "video/x-vnd.on2.vp8"

    .line 1470
    :cond_1
    :goto_1
    const/4 v4, 0x0

    .line 1471
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->w:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_2
    or-int/2addr v4, v2

    .line 1472
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->v:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    :goto_3
    or-int v12, v4, v2

    .line 1475
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1476
    const/4 v14, 0x1

    .line 1477
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->q:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->s:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->z:Ljava/lang/String;

    invoke-static/range {v2 .. v13}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    move v3, v14

    .line 1506
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->b:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v3}, Lcom/google/android/exoplayer2/extractor/h;->a(II)Lcom/google/android/exoplayer2/extractor/n;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->x:Lcom/google/android/exoplayer2/extractor/n;

    .line 1507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->x:Lcom/google/android/exoplayer2/extractor/n;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 1508
    return-void

    .line 1357
    :pswitch_1
    const-string v3, "video/x-vnd.on2.vp9"

    goto :goto_1

    .line 1360
    :pswitch_2
    const-string v3, "video/mpeg2"

    goto :goto_1

    .line 1365
    :pswitch_3
    const-string v3, "video/mp4v-es"

    .line 1366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->h:[B

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_5
    move-object v10, v2

    .line 1368
    goto :goto_1

    .line 1366
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->h:[B

    .line 1367
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_5

    .line 1370
    :pswitch_4
    const-string v3, "video/avc"

    .line 1371
    new-instance v2, Lcom/google/android/exoplayer2/util/l;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->h:[B

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/util/l;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/exoplayer2/c/a;->a(Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/c/a;

    move-result-object v2

    .line 1372
    iget-object v10, v2, Lcom/google/android/exoplayer2/c/a;->a:Ljava/util/List;

    .line 1373
    iget v2, v2, Lcom/google/android/exoplayer2/c/a;->b:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->y:I

    goto :goto_1

    .line 1376
    :pswitch_5
    const-string v3, "video/hevc"

    .line 1377
    new-instance v2, Lcom/google/android/exoplayer2/util/l;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->h:[B

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/util/l;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/exoplayer2/c/b;->a(Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/c/b;

    move-result-object v2

    .line 1378
    iget-object v10, v2, Lcom/google/android/exoplayer2/c/b;->a:Ljava/util/List;

    .line 1379
    iget v2, v2, Lcom/google/android/exoplayer2/c/b;->b:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->y:I

    goto/16 :goto_1

    .line 1382
    :pswitch_6
    new-instance v2, Lcom/google/android/exoplayer2/util/l;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->h:[B

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/util/l;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/a/d$b;->a(Lcom/google/android/exoplayer2/util/l;)Ljava/util/List;

    move-result-object v10

    .line 1383
    if-nez v10, :cond_3

    const-string v2, "video/x-unknown"

    :goto_6
    move-object v3, v2

    .line 1384
    goto/16 :goto_1

    .line 1383
    :cond_3
    const-string v2, "video/wvc1"

    goto :goto_6

    .line 1388
    :pswitch_7
    const-string v3, "video/x-unknown"

    goto/16 :goto_1

    .line 1391
    :pswitch_8
    const-string v3, "audio/vorbis"

    .line 1392
    const/16 v6, 0x2000

    .line 1393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->h:[B

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/a/d$b;->a([B)Ljava/util/List;

    move-result-object v10

    goto/16 :goto_1

    .line 1396
    :pswitch_9
    const-string v3, "audio/opus"

    .line 1397
    const/16 v6, 0x1680

    .line 1398
    new-instance v10, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->h:[B

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1400
    const/16 v2, 0x8

    .line 1401
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->t:J

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 1400
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1402
    const/16 v2, 0x8

    .line 1403
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->u:J

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 1402
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1406
    :pswitch_a
    const-string v3, "audio/mp4a-latm"

    .line 1407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->h:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    goto/16 :goto_1

    .line 1410
    :pswitch_b
    const-string v3, "audio/mpeg-L2"

    .line 1411
    const/16 v6, 0x1000

    .line 1412
    goto/16 :goto_1

    .line 1414
    :pswitch_c
    const-string v3, "audio/mpeg"

    .line 1415
    const/16 v6, 0x1000

    .line 1416
    goto/16 :goto_1

    .line 1418
    :pswitch_d
    const-string v3, "audio/ac3"

    goto/16 :goto_1

    .line 1421
    :pswitch_e
    const-string v3, "audio/eac3"

    goto/16 :goto_1

    .line 1424
    :pswitch_f
    const-string v3, "audio/true-hd"

    goto/16 :goto_1

    .line 1428
    :pswitch_10
    const-string v3, "audio/vnd.dts"

    goto/16 :goto_1

    .line 1431
    :pswitch_11
    const-string v3, "audio/vnd.dts.hd"

    goto/16 :goto_1

    .line 1434
    :pswitch_12
    const-string v3, "audio/x-flac"

    .line 1435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->h:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    goto/16 :goto_1

    .line 1438
    :pswitch_13
    const-string v3, "audio/raw"

    .line 1439
    new-instance v2, Lcom/google/android/exoplayer2/util/l;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->h:[B

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/util/l;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/a/d$b;->b(Lcom/google/android/exoplayer2/util/l;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1440
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    const-string v3, "Non-PCM MS/ACM is unsupported"

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1442
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->r:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->b(I)I

    move-result v9

    .line 1443
    if-nez v9, :cond_1

    .line 1444
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported PCM bit depth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->r:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1448
    :pswitch_14
    const-string v3, "audio/raw"

    .line 1449
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->r:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->b(I)I

    move-result v9

    .line 1450
    if-nez v9, :cond_1

    .line 1451
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported PCM bit depth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->r:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1455
    :pswitch_15
    const-string v3, "application/x-subrip"

    goto/16 :goto_1

    .line 1458
    :pswitch_16
    const-string v3, "application/vobsub"

    .line 1459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->h:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    goto/16 :goto_1

    .line 1462
    :pswitch_17
    const-string v3, "application/pgs"

    goto/16 :goto_1

    .line 1471
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1472
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1480
    :cond_7
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/i;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1481
    const/16 v16, 0x2

    .line 1482
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->n:I

    if-nez v2, :cond_8

    .line 1483
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->l:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->j:I

    :goto_7
    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->l:I

    .line 1484
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->m:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->k:I

    :goto_8
    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->m:I

    .line 1486
    :cond_8
    const/high16 v12, -0x40800000    # -1.0f

    .line 1487
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->l:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->m:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    .line 1488
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->k:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->l:I

    mul-int/2addr v2, v4

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->j:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->m:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    div-float v12, v2, v4

    .line 1490
    :cond_9
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->j:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->k:I

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v11, -0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->o:[B

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->p:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static/range {v2 .. v15}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    move/from16 v3, v16

    .line 1493
    goto/16 :goto_4

    .line 1483
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->l:I

    goto :goto_7

    .line 1484
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->m:I

    goto :goto_8

    .line 1493
    :cond_c
    const-string v2, "application/x-subrip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1494
    const/4 v9, 0x3

    .line 1495
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->z:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move v6, v12

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    move v3, v9

    goto/16 :goto_4

    .line 1497
    :cond_d
    const-string v2, "application/vobsub"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "application/pgs"

    .line 1498
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1499
    :cond_e
    const/4 v9, 0x3

    .line 1500
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->z:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object v6, v10

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    move v3, v9

    goto/16 :goto_4

    .line 1503
    :cond_f
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    const-string v3, "Unexpected MIME type."

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1352
    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_5
        -0x7ce7f3b0 -> :sswitch_3
        -0x76567dc0 -> :sswitch_16
        -0x6a615338 -> :sswitch_11
        -0x672350af -> :sswitch_a
        -0x585f4fce -> :sswitch_d
        -0x585f4fcd -> :sswitch_e
        -0x51dc40b2 -> :sswitch_8
        -0x2016c535 -> :sswitch_4
        -0x2016c4e5 -> :sswitch_6
        -0x19552dbd -> :sswitch_19
        -0x1538b2ba -> :sswitch_14
        0x3c02325 -> :sswitch_c
        0x3c02353 -> :sswitch_f
        0x3c030c5 -> :sswitch_12
        0x4e86155 -> :sswitch_0
        0x4e86156 -> :sswitch_1
        0x5e8da3e -> :sswitch_1a
        0x1a8350d6 -> :sswitch_9
        0x2056f406 -> :sswitch_13
        0x2b453ce4 -> :sswitch_17
        0x32fdf009 -> :sswitch_7
        0x54c61e47 -> :sswitch_18
        0x6bd6c624 -> :sswitch_2
        0x7446132a -> :sswitch_10
        0x7446b0a6 -> :sswitch_15
        0x744ad97d -> :sswitch_b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method
