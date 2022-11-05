.class Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;
.super Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;
.source "SsManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private n:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 490
    const-string v0, "StreamIndex"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->a:Ljava/lang/String;

    .line 492
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->b:Ljava/util/List;

    .line 493
    return-void
.end method

.method private e(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x1

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 510
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 511
    const-string v0, "t"

    invoke-virtual {p0, p1, v0, v8, v9}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    .line 512
    cmp-long v3, v0, v8

    if-nez v3, :cond_0

    .line 513
    if-nez v2, :cond_1

    .line 515
    const-wide/16 v0, 0x0

    .line 524
    :cond_0
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 525
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->m:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    const-string v2, "d"

    invoke-virtual {p0, p1, v2, v8, v9}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->n:J

    .line 528
    const-string v2, "r"

    invoke-virtual {p0, p1, v2, v6, v7}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 529
    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->n:J

    cmp-long v2, v6, v8

    if-nez v2, :cond_3

    .line 530
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Repeated chunk with unspecified duration"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->n:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 518
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->m:Ljava/util/ArrayList;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->n:J

    add-long/2addr v0, v4

    goto :goto_0

    .line 521
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Unable to infer start time"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_3
    const/4 v2, 0x1

    :goto_1
    int-to-long v6, v2

    cmp-long v6, v6, v4

    if-gez v6, :cond_4

    .line 533
    add-int/lit8 v3, v3, 0x1

    .line 534
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->m:Ljava/util/ArrayList;

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->n:J

    int-to-long v10, v2

    mul-long/2addr v8, v10

    add-long/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 536
    :cond_4
    return-void
.end method

.method private f(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 539
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->g(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->c:I

    .line 540
    const-string v0, "Type"

    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 541
    iget v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 542
    const-string v0, "Subtype"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->d:Ljava/lang/String;

    .line 546
    :goto_0
    const-string v0, "Name"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->f:Ljava/lang/String;

    .line 547
    const-string v0, "Url"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->g:Ljava/lang/String;

    .line 548
    const-string v0, "MaxWidth"

    invoke-virtual {p0, p1, v0, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->h:I

    .line 549
    const-string v0, "MaxHeight"

    invoke-virtual {p0, p1, v0, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->i:I

    .line 550
    const-string v0, "DisplayWidth"

    invoke-virtual {p0, p1, v0, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->j:I

    .line 551
    const-string v0, "DisplayHeight"

    invoke-virtual {p0, p1, v0, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->k:I

    .line 552
    const-string v0, "Language"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->l:Ljava/lang/String;

    .line 553
    const-string v0, "Language"

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->l:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 554
    const-string v0, "TimeScale"

    invoke-virtual {p0, p1, v0, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->e:J

    .line 555
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 556
    const-string v0, "TimeScale"

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->e:J

    .line 558
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->m:Ljava/util/ArrayList;

    .line 559
    return-void

    .line 544
    :cond_1
    const-string v0, "Subtype"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method private g(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 562
    const/4 v0, 0x0

    const-string v1, "Type"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_3

    .line 564
    const-string v1, "audio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    const/4 v0, 0x1

    .line 569
    :goto_0
    return v0

    .line 566
    :cond_0
    const-string v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 567
    const/4 v0, 0x2

    goto :goto_0

    .line 568
    :cond_1
    const-string v1, "text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 569
    const/4 v0, 0x3

    goto :goto_0

    .line 571
    :cond_2
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key value["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 574
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;

    const-string v1, "Type"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 20

    .prologue
    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Lcom/google/android/exoplayer2/Format;

    move-object/from16 v16, v0

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->b:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 588
    new-instance v3, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->c:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->e:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->h:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->i:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->j:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->k:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->m:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->n:J

    move-wide/from16 v18, v0

    invoke-direct/range {v3 .. v19}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;IIIILjava/lang/String;[Lcom/google/android/exoplayer2/Format;Ljava/util/List;J)V

    return-object v3
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 579
    instance-of v0, p1, Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->b:Ljava/util/List;

    check-cast p1, Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    :cond_0
    return-void
.end method

.method public b(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 502
    const-string v0, "c"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 507
    :goto_0
    return-void

    .line 505
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$e;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 497
    const-string v0, "c"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
