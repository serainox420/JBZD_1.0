.class final Lcom/google/android/exoplayer2/extractor/c/b;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/c/b$e;,
        Lcom/google/android/exoplayer2/extractor/c/b$d;,
        Lcom/google/android/exoplayer2/extractor/c/b$b;,
        Lcom/google/android/exoplayer2/extractor/c/b$c;,
        Lcom/google/android/exoplayer2/extractor/c/b$f;,
        Lcom/google/android/exoplayer2/extractor/c/b$a;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "vide"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/b;->a:I

    .line 47
    const-string v0, "soun"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/b;->b:I

    .line 48
    const-string v0, "text"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/b;->c:I

    .line 49
    const-string v0, "sbtl"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/b;->d:I

    .line 50
    const-string v0, "subt"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/b;->e:I

    .line 51
    const-string v0, "clcp"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/b;->f:I

    .line 52
    const-string v0, "cenc"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/b;->g:I

    .line 53
    const-string v0, "meta"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/b;->h:I

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/util/l;II)I
    .locals 4

    .prologue
    .line 912
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v1

    .line 913
    :goto_0
    sub-int v0, v1, p1

    if-ge v0, p2, :cond_2

    .line 914
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 915
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v2

    .line 916
    if-lez v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    const-string v3, "childAtomSize should be positive"

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/a;->a(ZLjava/lang/Object;)V

    .line 917
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    .line 918
    sget v3, Lcom/google/android/exoplayer2/extractor/c/a;->J:I

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 923
    :goto_2
    return v0

    .line 916
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 921
    :cond_1
    add-int/2addr v1, v2

    .line 922
    goto :goto_0

    .line 923
    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method private static a(Lcom/google/android/exoplayer2/util/l;IILcom/google/android/exoplayer2/extractor/c/b$c;I)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1008
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v0

    move v2, v0

    .line 1009
    :goto_0
    sub-int v0, v2, p1

    if-ge v0, p2, :cond_0

    .line 1010
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 1011
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v3

    .line 1012
    if-lez v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string v4, "childAtomSize should be positive"

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/a;->a(ZLjava/lang/Object;)V

    .line 1013
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    .line 1014
    sget v4, Lcom/google/android/exoplayer2/extractor/c/a;->V:I

    if-ne v0, v4, :cond_2

    .line 1015
    invoke-static {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/c/b;->b(Lcom/google/android/exoplayer2/util/l;II)Landroid/util/Pair;

    move-result-object v4

    .line 1017
    if-eqz v4, :cond_2

    .line 1018
    iget-object v1, p3, Lcom/google/android/exoplayer2/extractor/c/b$c;->a:[Lcom/google/android/exoplayer2/extractor/c/k;

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/k;

    aput-object v0, v1, p4

    .line 1019
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1025
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 1012
    goto :goto_1

    .line 1022
    :cond_2
    add-int v0, v2, v3

    move v2, v0

    .line 1023
    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/l;)J
    .locals 2

    .prologue
    const/16 v0, 0x8

    .line 467
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 468
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v1

    .line 469
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/c/a;->a(I)I

    move-result v1

    .line 470
    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 471
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->k()J

    move-result-wide v0

    return-wide v0

    .line 470
    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/c/a$a;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/c/a$a;",
            ")",
            "Landroid/util/Pair",
            "<[J[J>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 753
    if-eqz p0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->Q:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/c/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/c/a$b;

    move-result-object v0

    if-nez v0, :cond_1

    .line 754
    :cond_0
    invoke-static {v1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 774
    :goto_0
    return-object v0

    .line 756
    :cond_1
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    .line 757
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 758
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    .line 759
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/a;->a(I)I

    move-result v4

    .line 760
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v5

    .line 761
    new-array v6, v5, [J

    .line 762
    new-array v7, v5, [J

    .line 763
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_5

    .line 764
    if-ne v4, v8, :cond_2

    .line 765
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/l;->u()J

    move-result-wide v0

    :goto_2
    aput-wide v0, v6, v2

    .line 766
    if-ne v4, v8, :cond_3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/l;->o()J

    move-result-wide v0

    :goto_3
    aput-wide v0, v7, v2

    .line 767
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/l;->i()S

    move-result v0

    .line 768
    if-eq v0, v8, :cond_4

    .line 770
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 765
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/l;->k()J

    move-result-wide v0

    goto :goto_2

    .line 766
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    int-to-long v0, v0

    goto :goto_3

    .line 772
    :cond_4
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 763
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 774
    :cond_5
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/l;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/c/b$c;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 590
    const/16 v2, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 591
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v21

    .line 592
    new-instance v9, Lcom/google/android/exoplayer2/extractor/c/b$c;

    move/from16 v0, v21

    invoke-direct {v9, v0}, Lcom/google/android/exoplayer2/extractor/c/b$c;-><init>(I)V

    .line 593
    const/4 v10, 0x0

    :goto_0
    move/from16 v0, v21

    if-ge v10, v0, :cond_b

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v4

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v5

    .line 596
    if-lez v5, :cond_2

    const/4 v2, 0x1

    :goto_1
    const-string v3, "childAtomSize should be positive"

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/a;->a(ZLjava/lang/Object;)V

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v3

    .line 598
    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->b:I

    if-eq v3, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->c:I

    if-eq v3, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->Z:I

    if-eq v3, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->al:I

    if-eq v3, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->d:I

    if-eq v3, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->e:I

    if-eq v3, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->f:I

    if-eq v3, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->aK:I

    if-eq v3, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->aL:I

    if-ne v3, v2, :cond_3

    :cond_0
    move-object/from16 v2, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p4

    .line 603
    invoke-static/range {v2 .. v10}, Lcom/google/android/exoplayer2/extractor/c/b;->a(Lcom/google/android/exoplayer2/util/l;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/c/b$c;I)V

    .line 636
    :cond_1
    :goto_2
    add-int v2, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 593
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 596
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 605
    :cond_3
    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->i:I

    if-eq v3, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->aa:I

    if-eq v3, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->n:I

    if-eq v3, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->p:I

    if-eq v3, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->r:I

    if-eq v3, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->u:I

    if-eq v3, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->s:I

    if-eq v3, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->t:I

    if-eq v3, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->ay:I

    if-eq v3, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->az:I

    if-eq v3, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->l:I

    if-eq v3, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->m:I

    if-eq v3, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->j:I

    if-eq v3, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->aO:I

    if-ne v3, v2, :cond_5

    :cond_4
    move-object/from16 v11, p0

    move v12, v3

    move v13, v4

    move v14, v5

    move/from16 v15, p1

    move-object/from16 v16, p3

    move/from16 v17, p5

    move-object/from16 v18, p4

    move-object/from16 v19, v9

    move/from16 v20, v10

    .line 612
    invoke-static/range {v11 .. v20}, Lcom/google/android/exoplayer2/extractor/c/b;->a(Lcom/google/android/exoplayer2/util/l;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/c/b$c;I)V

    goto :goto_2

    .line 614
    :cond_5
    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->aj:I

    if-ne v3, v2, :cond_6

    .line 615
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "application/ttml+xml"

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    invoke-static/range {v11 .. v17}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/exoplayer2/extractor/c/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto :goto_2

    .line 617
    :cond_6
    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->au:I

    if-ne v3, v2, :cond_7

    .line 618
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "application/x-quicktime-tx3g"

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    invoke-static/range {v11 .. v17}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/exoplayer2/extractor/c/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_2

    .line 620
    :cond_7
    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->av:I

    if-ne v3, v2, :cond_8

    .line 621
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "application/x-mp4-vtt"

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    invoke-static/range {v11 .. v17}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/exoplayer2/extractor/c/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_2

    .line 623
    :cond_8
    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->aw:I

    if-ne v3, v2, :cond_9

    .line 624
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "application/ttml+xml"

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    invoke-static/range {v11 .. v19}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/exoplayer2/extractor/c/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_2

    .line 627
    :cond_9
    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->ax:I

    if-ne v3, v2, :cond_a

    .line 629
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "application/x-mp4-cea-608"

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    invoke-static/range {v11 .. v17}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/exoplayer2/extractor/c/b$c;->b:Lcom/google/android/exoplayer2/Format;

    .line 631
    const/4 v2, 0x1

    iput v2, v9, Lcom/google/android/exoplayer2/extractor/c/b$c;->d:I

    goto/16 :goto_2

    .line 632
    :cond_a
    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->aN:I

    if-ne v3, v2, :cond_1

    .line 633
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/x-camera-motion"

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object/from16 v0, p4

    invoke-static {v2, v3, v6, v7, v0}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/exoplayer2/extractor/c/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_2

    .line 638
    :cond_b
    return-object v9
.end method

.method public static a(Lcom/google/android/exoplayer2/extractor/c/a$a;Lcom/google/android/exoplayer2/extractor/c/a$b;JLcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/c/j;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 68
    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->E:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/c/a$a;->e(I)Lcom/google/android/exoplayer2/extractor/c/a$a;

    move-result-object v8

    .line 69
    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->S:I

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/extractor/c/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/c/a$b;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/c/b;->c(Lcom/google/android/exoplayer2/util/l;)I

    move-result v14

    .line 70
    const/4 v2, -0x1

    if-ne v14, v2, :cond_0

    .line 71
    const/4 v9, 0x0

    .line 93
    :goto_0
    return-object v9

    .line 74
    :cond_0
    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->O:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/c/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/c/a$b;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/c/b;->b(Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/extractor/c/b$f;

    move-result-object v15

    .line 75
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v2

    if-nez v2, :cond_3

    .line 76
    invoke-static {v15}, Lcom/google/android/exoplayer2/extractor/c/b$f;->a(Lcom/google/android/exoplayer2/extractor/c/b$f;)J

    move-result-wide v2

    .line 78
    :goto_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/c/b;->a(Lcom/google/android/exoplayer2/util/l;)J

    move-result-wide v6

    .line 80
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 81
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 85
    :goto_2
    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->F:I

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/extractor/c/a$a;->e(I)Lcom/google/android/exoplayer2/extractor/c/a$a;

    move-result-object v2

    sget v3, Lcom/google/android/exoplayer2/extractor/c/a;->G:I

    .line 86
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/extractor/c/a$a;->e(I)Lcom/google/android/exoplayer2/extractor/c/a$a;

    move-result-object v2

    .line 88
    sget v3, Lcom/google/android/exoplayer2/extractor/c/a;->R:I

    invoke-virtual {v8, v3}, Lcom/google/android/exoplayer2/extractor/c/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/c/a$b;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/c/b;->d(Lcom/google/android/exoplayer2/util/l;)Landroid/util/Pair;

    move-result-object v3

    .line 89
    sget v4, Lcom/google/android/exoplayer2/extractor/c/a;->T:I

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/extractor/c/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/c/a$b;

    move-result-object v2

    iget-object v8, v2, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    invoke-static {v15}, Lcom/google/android/exoplayer2/extractor/c/b$f;->b(Lcom/google/android/exoplayer2/extractor/c/b$f;)I

    move-result v9

    .line 90
    invoke-static {v15}, Lcom/google/android/exoplayer2/extractor/c/b$f;->c(Lcom/google/android/exoplayer2/extractor/c/b$f;)I

    move-result v10

    iget-object v11, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    move-object/from16 v12, p4

    move/from16 v13, p5

    .line 89
    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/extractor/c/b;->a(Lcom/google/android/exoplayer2/util/l;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/c/b$c;

    move-result-object v4

    .line 91
    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->P:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/c/a$a;->e(I)Lcom/google/android/exoplayer2/extractor/c/a$a;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/c/b;->a(Lcom/google/android/exoplayer2/extractor/c/a$a;)Landroid/util/Pair;

    move-result-object v5

    .line 92
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/c/b$c;->b:Lcom/google/android/exoplayer2/Format;

    if-nez v2, :cond_2

    const/4 v9, 0x0

    goto :goto_0

    .line 83
    :cond_1
    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/v;->a(JJJ)J

    move-result-wide v16

    goto :goto_2

    .line 92
    :cond_2
    new-instance v9, Lcom/google/android/exoplayer2/extractor/c/j;

    .line 93
    invoke-static {v15}, Lcom/google/android/exoplayer2/extractor/c/b$f;->b(Lcom/google/android/exoplayer2/extractor/c/b$f;)I

    move-result v10

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v0, v4, Lcom/google/android/exoplayer2/extractor/c/b$c;->b:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v18, v0

    iget v0, v4, Lcom/google/android/exoplayer2/extractor/c/b$c;->d:I

    move/from16 v19, v0

    iget-object v0, v4, Lcom/google/android/exoplayer2/extractor/c/b$c;->a:[Lcom/google/android/exoplayer2/extractor/c/k;

    move-object/from16 v20, v0

    iget v0, v4, Lcom/google/android/exoplayer2/extractor/c/b$c;->c:I

    move/from16 v21, v0

    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [J

    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [J

    move v11, v14

    move-wide v14, v6

    invoke-direct/range {v9 .. v23}, Lcom/google/android/exoplayer2/extractor/c/j;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/c/k;I[J[J)V

    goto/16 :goto_0

    :cond_3
    move-wide/from16 v2, p2

    goto/16 :goto_1
.end method

.method public static a(Lcom/google/android/exoplayer2/extractor/c/j;Lcom/google/android/exoplayer2/extractor/c/a$a;Lcom/google/android/exoplayer2/extractor/j;)Lcom/google/android/exoplayer2/extractor/c/m;
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 110
    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->aq:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/c/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/c/a$b;

    move-result-object v3

    .line 111
    if-eqz v3, :cond_0

    .line 112
    new-instance v2, Lcom/google/android/exoplayer2/extractor/c/b$d;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/extractor/c/b$d;-><init>(Lcom/google/android/exoplayer2/extractor/c/a$b;)V

    .line 121
    :goto_0
    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/c/b$b;->a()I

    move-result v28

    .line 122
    if-nez v28, :cond_2

    .line 123
    new-instance v2, Lcom/google/android/exoplayer2/extractor/c/m;

    const/4 v3, 0x0

    new-array v3, v3, [J

    const/4 v4, 0x0

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [J

    const/4 v7, 0x0

    new-array v7, v7, [I

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/extractor/c/m;-><init>([J[II[J[I)V

    .line 401
    :goto_1
    return-object v2

    .line 114
    :cond_0
    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->ar:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/c/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/c/a$b;

    move-result-object v3

    .line 115
    if-nez v3, :cond_1

    .line 116
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    const-string v3, "Track has no sample table size information"

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_1
    new-instance v2, Lcom/google/android/exoplayer2/extractor/c/b$e;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/extractor/c/b$e;-><init>(Lcom/google/android/exoplayer2/extractor/c/a$b;)V

    goto :goto_0

    .line 127
    :cond_2
    const/4 v4, 0x0

    .line 128
    sget v3, Lcom/google/android/exoplayer2/extractor/c/a;->as:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/c/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/c/a$b;

    move-result-object v3

    .line 129
    if-nez v3, :cond_3

    .line 130
    const/4 v4, 0x1

    .line 131
    sget v3, Lcom/google/android/exoplayer2/extractor/c/a;->at:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/c/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/c/a$b;

    move-result-object v3

    .line 133
    :cond_3
    iget-object v6, v3, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    .line 135
    sget v3, Lcom/google/android/exoplayer2/extractor/c/a;->ap:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/c/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/c/a$b;

    move-result-object v3

    iget-object v7, v3, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    .line 137
    sget v3, Lcom/google/android/exoplayer2/extractor/c/a;->am:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/c/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/c/a$b;

    move-result-object v3

    iget-object v0, v3, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    move-object/from16 v29, v0

    .line 139
    sget v3, Lcom/google/android/exoplayer2/extractor/c/a;->an:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/c/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/c/a$b;

    move-result-object v3

    .line 140
    if-eqz v3, :cond_5

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    .line 142
    :goto_2
    sget v5, Lcom/google/android/exoplayer2/extractor/c/a;->ao:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/extractor/c/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/c/a$b;

    move-result-object v5

    .line 143
    if-eqz v5, :cond_6

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    .line 146
    :goto_3
    new-instance v30, Lcom/google/android/exoplayer2/extractor/c/b$a;

    move-object/from16 v0, v30

    invoke-direct {v0, v7, v6, v4}, Lcom/google/android/exoplayer2/extractor/c/b$a;-><init>(Lcom/google/android/exoplayer2/util/l;Lcom/google/android/exoplayer2/util/l;Z)V

    .line 149
    const/16 v4, 0xc

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 150
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v4

    add-int/lit8 v23, v4, -0x1

    .line 151
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v22

    .line 152
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v19

    .line 155
    const/16 v18, 0x0

    .line 156
    const/4 v13, 0x0

    .line 157
    const/4 v12, 0x0

    .line 158
    if-eqz v5, :cond_4

    .line 159
    const/16 v4, 0xc

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 160
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v13

    .line 163
    :cond_4
    const/4 v6, -0x1

    .line 164
    const/4 v4, 0x0

    .line 165
    if-eqz v3, :cond_30

    .line 166
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 167
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v4

    .line 168
    if-lez v4, :cond_7

    .line 169
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move/from16 v32, v4

    move v4, v6

    move-object v6, v3

    move/from16 v3, v32

    .line 177
    :goto_4
    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/c/b$b;->c()Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "audio/raw"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/c/j;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v8, v8, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 178
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-nez v23, :cond_8

    if-nez v13, :cond_8

    if-nez v3, :cond_8

    const/4 v7, 0x1

    .line 184
    :goto_5
    const/4 v11, 0x0

    .line 187
    const-wide/16 v8, 0x0

    .line 189
    if-nez v7, :cond_16

    .line 190
    move/from16 v0, v28

    new-array v0, v0, [J

    move-object/from16 v17, v0

    .line 191
    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 192
    move/from16 v0, v28

    new-array v15, v0, [J

    .line 193
    move/from16 v0, v28

    new-array v14, v0, [I

    .line 194
    const-wide/16 v20, 0x0

    .line 195
    const/4 v10, 0x0

    .line 197
    const/4 v7, 0x0

    move/from16 v24, v7

    move/from16 v25, v22

    move/from16 v7, v18

    move/from16 v18, v3

    move v3, v12

    move/from16 v32, v4

    move v4, v13

    move-wide v12, v8

    move v8, v11

    move v9, v10

    move/from16 v10, v19

    move/from16 v11, v23

    move/from16 v19, v32

    :goto_6
    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_f

    move-wide/from16 v22, v20

    move/from16 v20, v9

    .line 199
    :goto_7
    if-nez v20, :cond_9

    .line 200
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/exoplayer2/extractor/c/b$a;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 201
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/c/b$a;->d:J

    move-wide/from16 v20, v0

    .line 202
    move-object/from16 v0, v30

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/c/b$a;->c:I

    move-wide/from16 v22, v20

    move/from16 v20, v9

    goto :goto_7

    .line 140
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 143
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 172
    :cond_7
    const/4 v3, 0x0

    move/from16 v32, v4

    move v4, v6

    move-object v6, v3

    move/from16 v3, v32

    goto :goto_4

    .line 178
    :cond_8
    const/4 v7, 0x0

    goto :goto_5

    .line 206
    :cond_9
    if-eqz v5, :cond_b

    .line 207
    :goto_8
    if-nez v7, :cond_a

    if-lez v4, :cond_a

    .line 208
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v7

    .line 214
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v3

    .line 215
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    .line 217
    :cond_a
    add-int/lit8 v7, v7, -0x1

    .line 220
    :cond_b
    aput-wide v22, v17, v24

    .line 221
    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/c/b$b;->b()I

    move-result v9

    aput v9, v16, v24

    .line 222
    aget v9, v16, v24

    if-le v9, v8, :cond_c

    .line 223
    aget v8, v16, v24

    .line 225
    :cond_c
    int-to-long v0, v3

    move-wide/from16 v26, v0

    add-long v26, v26, v12

    aput-wide v26, v15, v24

    .line 228
    if-nez v6, :cond_e

    const/4 v9, 0x1

    :goto_9
    aput v9, v14, v24

    .line 229
    move/from16 v0, v24

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 230
    const/4 v9, 0x1

    aput v9, v14, v24

    .line 231
    add-int/lit8 v9, v18, -0x1

    .line 232
    if-lez v9, :cond_2f

    .line 233
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v19, v18

    move/from16 v18, v9

    .line 238
    :cond_d
    :goto_a
    int-to-long v0, v10

    move-wide/from16 v26, v0

    add-long v26, v26, v12

    .line 239
    add-int/lit8 v9, v25, -0x1

    .line 240
    if-nez v9, :cond_2e

    if-lez v11, :cond_2e

    .line 241
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v10

    .line 242
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v9

    .line 243
    add-int/lit8 v11, v11, -0x1

    .line 246
    :goto_b
    aget v12, v16, v24

    int-to-long v12, v12

    add-long v22, v22, v12

    .line 247
    add-int/lit8 v13, v20, -0x1

    .line 197
    add-int/lit8 v12, v24, 0x1

    move/from16 v24, v12

    move-wide/from16 v20, v22

    move/from16 v25, v10

    move v10, v9

    move v9, v13

    move-wide/from16 v12, v26

    goto/16 :goto_6

    .line 228
    :cond_e
    const/4 v9, 0x0

    goto :goto_9

    .line 250
    :cond_f
    if-nez v7, :cond_10

    const/4 v2, 0x1

    :goto_c
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 252
    :goto_d
    if-lez v4, :cond_12

    .line 253
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x1

    :goto_e
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 254
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/l;->m()I

    .line 255
    add-int/lit8 v4, v4, -0x1

    goto :goto_d

    .line 250
    :cond_10
    const/4 v2, 0x0

    goto :goto_c

    .line 253
    :cond_11
    const/4 v2, 0x0

    goto :goto_e

    .line 260
    :cond_12
    if-nez v18, :cond_13

    if-nez v25, :cond_13

    if-nez v9, :cond_13

    if-eqz v11, :cond_14

    .line 262
    :cond_13
    const-string v2, "AtomParsers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inconsistent stbl box for track "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/c/j;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": remainingSynchronizationSamples "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", remainingSamplesInChunk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", remainingTimestampDeltaChanges "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move-object v7, v14

    move-object v6, v15

    move v5, v8

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move-wide v14, v12

    .line 285
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/c/j;->i:[J

    if-eqz v2, :cond_15

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/extractor/j;->a()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 288
    :cond_15
    const-wide/32 v8, 0xf4240

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/extractor/c/j;->c:J

    invoke-static {v6, v8, v9, v10, v11}, Lcom/google/android/exoplayer2/util/v;->a([JJJ)V

    .line 289
    new-instance v2, Lcom/google/android/exoplayer2/extractor/c/m;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/extractor/c/m;-><init>([J[II[J[I)V

    goto/16 :goto_1

    .line 269
    :cond_16
    move-object/from16 v0, v30

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/c/b$a;->a:I

    new-array v3, v3, [J

    .line 270
    move-object/from16 v0, v30

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/c/b$a;->a:I

    new-array v4, v4, [I

    .line 271
    :goto_10
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/exoplayer2/extractor/c/b$a;->a()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 272
    move-object/from16 v0, v30

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/c/b$a;->b:I

    move-object/from16 v0, v30

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/c/b$a;->d:J

    aput-wide v6, v3, v5

    .line 273
    move-object/from16 v0, v30

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/c/b$a;->b:I

    move-object/from16 v0, v30

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/c/b$a;->c:I

    aput v6, v4, v5

    goto :goto_10

    .line 275
    :cond_17
    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/c/b$b;->b()I

    move-result v2

    .line 276
    move/from16 v0, v19

    int-to-long v6, v0

    invoke-static {v2, v3, v4, v6, v7}, Lcom/google/android/exoplayer2/extractor/c/d;->a(I[J[IJ)Lcom/google/android/exoplayer2/extractor/c/d$a;

    move-result-object v2

    .line 278
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/c/d$a;->a:[J

    .line 279
    iget-object v4, v2, Lcom/google/android/exoplayer2/extractor/c/d$a;->b:[I

    .line 280
    iget v5, v2, Lcom/google/android/exoplayer2/extractor/c/d$a;->c:I

    .line 281
    iget-object v6, v2, Lcom/google/android/exoplayer2/extractor/c/d$a;->d:[J

    .line 282
    iget-object v7, v2, Lcom/google/android/exoplayer2/extractor/c/d$a;->e:[I

    move-wide v14, v8

    goto :goto_f

    .line 298
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/c/j;->i:[J

    array-length v2, v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/c/j;->b:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1a

    array-length v2, v6

    const/4 v8, 0x2

    if-lt v2, v8, :cond_1a

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/c/j;->j:[J

    const/4 v8, 0x0

    aget-wide v16, v2, v8

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/c/j;->i:[J

    const/4 v8, 0x0

    aget-wide v8, v2, v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/extractor/c/j;->c:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/extractor/c/j;->d:J

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/util/v;->a(JJJ)J

    move-result-wide v8

    add-long v8, v8, v16

    .line 307
    const/4 v2, 0x0

    aget-wide v10, v6, v2

    cmp-long v2, v10, v16

    if-gtz v2, :cond_1a

    const/4 v2, 0x1

    aget-wide v10, v6, v2

    cmp-long v2, v16, v10

    if-gez v2, :cond_1a

    array-length v2, v6

    add-int/lit8 v2, v2, -0x1

    aget-wide v10, v6, v2

    cmp-long v2, v10, v8

    if-gez v2, :cond_1a

    cmp-long v2, v8, v14

    if-gtz v2, :cond_1a

    .line 309
    sub-long/2addr v14, v8

    .line 310
    const/4 v2, 0x0

    aget-wide v8, v6, v2

    sub-long v8, v16, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/c/j;->f:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->r:I

    int-to-long v10, v2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/extractor/c/j;->c:J

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/util/v;->a(JJJ)J

    move-result-wide v16

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/c/j;->f:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->r:I

    int-to-long v10, v2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/extractor/c/j;->c:J

    move-wide v8, v14

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/util/v;->a(JJJ)J

    move-result-wide v8

    .line 314
    const-wide/16 v10, 0x0

    cmp-long v2, v16, v10

    if-nez v2, :cond_19

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_1a

    :cond_19
    const-wide/32 v10, 0x7fffffff

    cmp-long v2, v16, v10

    if-gtz v2, :cond_1a

    const-wide/32 v10, 0x7fffffff

    cmp-long v2, v8, v10

    if-gtz v2, :cond_1a

    .line 316
    move-wide/from16 v0, v16

    long-to-int v2, v0

    move-object/from16 v0, p2

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/j;->b:I

    .line 317
    long-to-int v2, v8

    move-object/from16 v0, p2

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/j;->c:I

    .line 318
    const-wide/32 v8, 0xf4240

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/extractor/c/j;->c:J

    invoke-static {v6, v8, v9, v10, v11}, Lcom/google/android/exoplayer2/util/v;->a([JJJ)V

    .line 319
    new-instance v2, Lcom/google/android/exoplayer2/extractor/c/m;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/extractor/c/m;-><init>([J[II[J[I)V

    goto/16 :goto_1

    .line 324
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/c/j;->i:[J

    array-length v2, v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/c/j;->i:[J

    const/4 v8, 0x0

    aget-wide v8, v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-nez v2, :cond_1c

    .line 328
    const/4 v2, 0x0

    :goto_11
    array-length v8, v6

    if-ge v2, v8, :cond_1b

    .line 329
    aget-wide v8, v6, v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/c/j;->j:[J

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/extractor/c/j;->c:J

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/util/v;->a(JJJ)J

    move-result-wide v8

    aput-wide v8, v6, v2

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 332
    :cond_1b
    new-instance v2, Lcom/google/android/exoplayer2/extractor/c/m;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/extractor/c/m;-><init>([J[II[J[I)V

    goto/16 :goto_1

    .line 336
    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/c/j;->b:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1d

    const/4 v2, 0x1

    .line 339
    :goto_12
    const/4 v11, 0x0

    .line 340
    const/4 v10, 0x0

    .line 341
    const/4 v9, 0x0

    .line 342
    const/4 v8, 0x0

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v11

    :goto_13
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/c/j;->i:[J

    array-length v8, v8

    if-ge v14, v8, :cond_1f

    .line 343
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/c/j;->j:[J

    aget-wide v18, v8, v14

    .line 344
    const-wide/16 v8, -0x1

    cmp-long v8, v18, v8

    if-eqz v8, :cond_2d

    .line 345
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/c/j;->i:[J

    aget-wide v8, v8, v14

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/extractor/c/j;->c:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/extractor/c/j;->d:J

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/util/v;->a(JJJ)J

    move-result-wide v8

    .line 347
    const/4 v10, 0x1

    const/4 v11, 0x1

    move-wide/from16 v0, v18

    invoke-static {v6, v0, v1, v10, v11}, Lcom/google/android/exoplayer2/util/v;->b([JJZZ)I

    move-result v12

    .line 348
    add-long v8, v8, v18

    const/4 v10, 0x0

    invoke-static {v6, v8, v9, v2, v10}, Lcom/google/android/exoplayer2/util/v;->b([JJZZ)I

    move-result v10

    .line 350
    sub-int v8, v10, v12

    add-int v11, v17, v8

    .line 351
    move/from16 v0, v16

    if-eq v0, v12, :cond_1e

    const/4 v8, 0x1

    :goto_14
    or-int v9, v15, v8

    .line 342
    :goto_15
    add-int/lit8 v8, v14, 0x1

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v11

    goto :goto_13

    .line 336
    :cond_1d
    const/4 v2, 0x0

    goto :goto_12

    .line 351
    :cond_1e
    const/4 v8, 0x0

    goto :goto_14

    .line 355
    :cond_1f
    move/from16 v0, v17

    move/from16 v1, v28

    if-eq v0, v1, :cond_22

    const/4 v8, 0x1

    :goto_16
    or-int v24, v15, v8

    .line 358
    if-eqz v24, :cond_23

    move/from16 v0, v17

    new-array v8, v0, [J

    move-object/from16 v23, v8

    .line 359
    :goto_17
    if-eqz v24, :cond_24

    move/from16 v0, v17

    new-array v8, v0, [I

    move-object/from16 v22, v8

    .line 360
    :goto_18
    if-eqz v24, :cond_25

    const/4 v9, 0x0

    .line 361
    :goto_19
    if-eqz v24, :cond_26

    move/from16 v0, v17

    new-array v5, v0, [I

    move-object/from16 v16, v5

    .line 362
    :goto_1a
    move/from16 v0, v17

    new-array v0, v0, [J

    move-object/from16 v25, v0

    .line 363
    const-wide/16 v10, 0x0

    .line 364
    const/4 v8, 0x0

    .line 365
    const/4 v5, 0x0

    move/from16 v17, v5

    move v14, v8

    move-wide/from16 v18, v10

    move v5, v9

    :goto_1b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/c/j;->i:[J

    array-length v8, v8

    move/from16 v0, v17

    if-ge v0, v8, :cond_28

    .line 366
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/c/j;->j:[J

    aget-wide v26, v8, v17

    .line 367
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/c/j;->i:[J

    aget-wide v8, v8, v17

    .line 368
    const-wide/16 v10, -0x1

    cmp-long v10, v26, v10

    if-eqz v10, :cond_2c

    .line 369
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/extractor/c/j;->c:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/extractor/c/j;->d:J

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/util/v;->a(JJJ)J

    move-result-wide v10

    add-long v12, v26, v10

    .line 371
    const/4 v10, 0x1

    const/4 v11, 0x1

    move-wide/from16 v0, v26

    invoke-static {v6, v0, v1, v10, v11}, Lcom/google/android/exoplayer2/util/v;->b([JJZZ)I

    move-result v10

    .line 372
    const/4 v11, 0x0

    invoke-static {v6, v12, v13, v2, v11}, Lcom/google/android/exoplayer2/util/v;->b([JJZZ)I

    move-result v28

    .line 373
    if-eqz v24, :cond_20

    .line 374
    sub-int v11, v28, v10

    .line 375
    move-object/from16 v0, v23

    invoke-static {v3, v10, v0, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    move-object/from16 v0, v22

    invoke-static {v4, v10, v0, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    move-object/from16 v0, v16

    invoke-static {v7, v10, v0, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_20
    move/from16 v21, v10

    move/from16 v20, v14

    .line 379
    :goto_1c
    move/from16 v0, v21

    move/from16 v1, v28

    if-ge v0, v1, :cond_27

    .line 380
    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/extractor/c/j;->d:J

    move-wide/from16 v10, v18

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/v;->a(JJJ)J

    move-result-wide v30

    .line 381
    aget-wide v10, v6, v21

    sub-long v10, v10, v26

    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/extractor/c/j;->c:J

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/v;->a(JJJ)J

    move-result-wide v10

    .line 383
    add-long v10, v10, v30

    aput-wide v10, v25, v20

    .line 384
    if-eqz v24, :cond_21

    aget v10, v22, v20

    if-le v10, v5, :cond_21

    .line 385
    aget v5, v4, v21

    .line 387
    :cond_21
    add-int/lit8 v20, v20, 0x1

    .line 379
    add-int/lit8 v10, v21, 0x1

    move/from16 v21, v10

    goto :goto_1c

    .line 355
    :cond_22
    const/4 v8, 0x0

    goto/16 :goto_16

    :cond_23
    move-object/from16 v23, v3

    .line 358
    goto/16 :goto_17

    :cond_24
    move-object/from16 v22, v4

    .line 359
    goto/16 :goto_18

    :cond_25
    move v9, v5

    .line 360
    goto/16 :goto_19

    :cond_26
    move-object/from16 v16, v7

    .line 361
    goto/16 :goto_1a

    :cond_27
    move/from16 v10, v20

    move v11, v5

    .line 390
    :goto_1d
    add-long v8, v8, v18

    .line 365
    add-int/lit8 v5, v17, 0x1

    move/from16 v17, v5

    move v14, v10

    move-wide/from16 v18, v8

    move v5, v11

    goto/16 :goto_1b

    .line 393
    :cond_28
    const/4 v3, 0x0

    .line 394
    const/4 v2, 0x0

    :goto_1e
    move-object/from16 v0, v16

    array-length v4, v0

    if-ge v2, v4, :cond_2a

    if-nez v3, :cond_2a

    .line 395
    aget v4, v16, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_29

    const/4 v4, 0x1

    :goto_1f
    or-int/2addr v3, v4

    .line 394
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 395
    :cond_29
    const/4 v4, 0x0

    goto :goto_1f

    .line 397
    :cond_2a
    if-nez v3, :cond_2b

    .line 398
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    const-string v3, "The edited sample sequence does not contain a sync sample."

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 401
    :cond_2b
    new-instance v2, Lcom/google/android/exoplayer2/extractor/c/m;

    move-object/from16 v3, v23

    move-object/from16 v4, v22

    move-object/from16 v6, v25

    move-object/from16 v7, v16

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/extractor/c/m;-><init>([J[II[J[I)V

    goto/16 :goto_1

    :cond_2c
    move v10, v14

    move v11, v5

    goto :goto_1d

    :cond_2d
    move v9, v15

    move/from16 v10, v16

    move/from16 v11, v17

    goto/16 :goto_15

    :cond_2e
    move/from16 v32, v10

    move v10, v9

    move/from16 v9, v32

    goto/16 :goto_b

    :cond_2f
    move/from16 v18, v9

    goto/16 :goto_a

    :cond_30
    move/from16 v32, v4

    move v4, v6

    move-object v6, v3

    move/from16 v3, v32

    goto/16 :goto_4
.end method

.method public static a(Lcom/google/android/exoplayer2/extractor/c/a$b;Z)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x8

    .line 413
    if-eqz p1, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-object v0

    .line 418
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    .line 419
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 420
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v2

    if-lt v2, v6, :cond_0

    .line 421
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v2

    .line 422
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v3

    .line 423
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v4

    .line 424
    sget v5, Lcom/google/android/exoplayer2/extractor/c/a;->aB:I

    if-ne v4, v5, :cond_2

    .line 425
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 426
    add-int v0, v2, v3

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/extractor/c/b;->a(Lcom/google/android/exoplayer2/util/l;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    goto :goto_0

    .line 428
    :cond_2
    add-int/lit8 v2, v3, -0x8

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    goto :goto_1
.end method

.method private static a(Lcom/google/android/exoplayer2/util/l;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 4

    .prologue
    .line 434
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 435
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 436
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v0

    .line 437
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v1

    .line 438
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v2

    .line 439
    sget v3, Lcom/google/android/exoplayer2/extractor/c/a;->aC:I

    if-ne v2, v3, :cond_0

    .line 440
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 441
    add-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/c/b;->b(Lcom/google/android/exoplayer2/util/l;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    .line 445
    :goto_1
    return-object v0

    .line 443
    :cond_0
    add-int/lit8 v0, v1, -0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    goto :goto_0

    .line 445
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Lcom/google/android/exoplayer2/util/l;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/c/b$c;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 644
    add-int/lit8 v5, p2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 646
    const/16 v5, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 647
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->g()I

    move-result v10

    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->g()I

    move-result v11

    .line 649
    const/4 v7, 0x0

    .line 650
    const/high16 v15, 0x3f800000    # 1.0f

    .line 651
    const/16 v5, 0x32

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v5

    .line 654
    sget v6, Lcom/google/android/exoplayer2/extractor/c/a;->Z:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_0

    .line 655
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p7

    move/from16 v4, p8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/c/b;->a(Lcom/google/android/exoplayer2/util/l;IILcom/google/android/exoplayer2/extractor/c/b$c;I)I

    move-result p1

    .line 656
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 659
    :cond_0
    const/4 v13, 0x0

    .line 660
    const/4 v6, 0x0

    .line 661
    const/16 v16, 0x0

    .line 663
    const/16 v17, -0x1

    move v8, v5

    .line 664
    :goto_0
    sub-int v5, v8, p2

    move/from16 v0, p3

    if-ge v5, v0, :cond_1

    .line 665
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 666
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v9

    .line 667
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v12

    .line 668
    if-nez v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v5

    sub-int v5, v5, p2

    move/from16 v0, p3

    if-ne v5, v0, :cond_2

    .line 735
    :cond_1
    if-nez v6, :cond_13

    .line 742
    :goto_1
    return-void

    .line 672
    :cond_2
    if-lez v12, :cond_4

    const/4 v5, 0x1

    :goto_2
    const-string v14, "childAtomSize should be positive"

    invoke-static {v5, v14}, Lcom/google/android/exoplayer2/util/a;->a(ZLjava/lang/Object;)V

    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v5

    .line 674
    sget v14, Lcom/google/android/exoplayer2/extractor/c/a;->H:I

    if-ne v5, v14, :cond_6

    .line 675
    if-nez v6, :cond_5

    const/4 v5, 0x1

    :goto_3
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 676
    const-string v6, "video/avc"

    .line 677
    add-int/lit8 v5, v9, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 678
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/c/a;->a(Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/c/a;

    move-result-object v5

    .line 679
    iget-object v13, v5, Lcom/google/android/exoplayer2/c/a;->a:Ljava/util/List;

    .line 680
    iget v9, v5, Lcom/google/android/exoplayer2/c/a;->b:I

    move-object/from16 v0, p7

    iput v9, v0, Lcom/google/android/exoplayer2/extractor/c/b$c;->c:I

    .line 681
    if-nez v7, :cond_3

    .line 682
    iget v15, v5, Lcom/google/android/exoplayer2/c/a;->e:F

    :cond_3
    move v5, v7

    .line 731
    :goto_4
    add-int v7, v8, v12

    move v8, v7

    move v7, v5

    .line 732
    goto :goto_0

    .line 672
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 675
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 684
    :cond_6
    sget v14, Lcom/google/android/exoplayer2/extractor/c/a;->I:I

    if-ne v5, v14, :cond_8

    .line 685
    if-nez v6, :cond_7

    const/4 v5, 0x1

    :goto_5
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 686
    const-string v6, "video/hevc"

    .line 687
    add-int/lit8 v5, v9, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 688
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/c/b;->a(Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/c/b;

    move-result-object v5

    .line 689
    iget-object v13, v5, Lcom/google/android/exoplayer2/c/b;->a:Ljava/util/List;

    .line 690
    iget v5, v5, Lcom/google/android/exoplayer2/c/b;->b:I

    move-object/from16 v0, p7

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/c/b$c;->c:I

    move v5, v7

    .line 691
    goto :goto_4

    .line 685
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 691
    :cond_8
    sget v14, Lcom/google/android/exoplayer2/extractor/c/a;->aM:I

    if-ne v5, v14, :cond_b

    .line 692
    if-nez v6, :cond_9

    const/4 v5, 0x1

    :goto_6
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 693
    sget v5, Lcom/google/android/exoplayer2/extractor/c/a;->aK:I

    move/from16 v0, p1

    if-ne v0, v5, :cond_a

    const-string v6, "video/x-vnd.on2.vp8"

    :goto_7
    move v5, v7

    goto :goto_4

    .line 692
    :cond_9
    const/4 v5, 0x0

    goto :goto_6

    .line 693
    :cond_a
    const-string v6, "video/x-vnd.on2.vp9"

    goto :goto_7

    .line 694
    :cond_b
    sget v14, Lcom/google/android/exoplayer2/extractor/c/a;->g:I

    if-ne v5, v14, :cond_d

    .line 695
    if-nez v6, :cond_c

    const/4 v5, 0x1

    :goto_8
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 696
    const-string v6, "video/3gpp"

    move v5, v7

    goto :goto_4

    .line 695
    :cond_c
    const/4 v5, 0x0

    goto :goto_8

    .line 697
    :cond_d
    sget v14, Lcom/google/android/exoplayer2/extractor/c/a;->J:I

    if-ne v5, v14, :cond_f

    .line 698
    if-nez v6, :cond_e

    const/4 v5, 0x1

    :goto_9
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 700
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/extractor/c/b;->d(Lcom/google/android/exoplayer2/util/l;I)Landroid/util/Pair;

    move-result-object v6

    .line 701
    iget-object v5, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 702
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    move-object v6, v5

    move v5, v7

    .line 703
    goto :goto_4

    .line 698
    :cond_e
    const/4 v5, 0x0

    goto :goto_9

    .line 703
    :cond_f
    sget v14, Lcom/google/android/exoplayer2/extractor/c/a;->ai:I

    if-ne v5, v14, :cond_10

    .line 704
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/extractor/c/b;->c(Lcom/google/android/exoplayer2/util/l;I)F

    move-result v15

    .line 705
    const/4 v5, 0x1

    goto :goto_4

    .line 706
    :cond_10
    sget v14, Lcom/google/android/exoplayer2/extractor/c/a;->aI:I

    if-ne v5, v14, :cond_11

    .line 707
    move-object/from16 v0, p0

    invoke-static {v0, v9, v12}, Lcom/google/android/exoplayer2/extractor/c/b;->d(Lcom/google/android/exoplayer2/util/l;II)[B

    move-result-object v16

    move v5, v7

    goto/16 :goto_4

    .line 708
    :cond_11
    sget v9, Lcom/google/android/exoplayer2/extractor/c/a;->aH:I

    if-ne v5, v9, :cond_12

    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v5

    .line 710
    const/4 v9, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 711
    if-nez v5, :cond_12

    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v5

    .line 713
    packed-switch v5, :pswitch_data_0

    :cond_12
    move v5, v7

    goto/16 :goto_4

    .line 715
    :pswitch_0
    const/16 v17, 0x0

    move v5, v7

    .line 716
    goto/16 :goto_4

    .line 718
    :pswitch_1
    const/16 v17, 0x1

    move v5, v7

    .line 719
    goto/16 :goto_4

    .line 721
    :pswitch_2
    const/16 v17, 0x2

    move v5, v7

    .line 722
    goto/16 :goto_4

    .line 724
    :pswitch_3
    const/16 v17, 0x3

    move v5, v7

    .line 725
    goto/16 :goto_4

    .line 739
    :cond_13
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    move/from16 v14, p5

    move-object/from16 v18, p6

    invoke-static/range {v5 .. v18}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    move-object/from16 v0, p7

    iput-object v5, v0, Lcom/google/android/exoplayer2/extractor/c/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_1

    .line 713
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Lcom/google/android/exoplayer2/util/l;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/c/b$c;I)V
    .locals 20

    .prologue
    .line 787
    add-int/lit8 v6, p2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 789
    const/4 v6, 0x0

    .line 790
    if-eqz p6, :cond_7

    .line 791
    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 792
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->g()I

    move-result v6

    .line 793
    const/4 v7, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    move v8, v6

    .line 801
    :goto_0
    if-eqz v8, :cond_0

    const/4 v6, 0x1

    if-ne v8, v6, :cond_8

    .line 802
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->g()I

    move-result v7

    .line 803
    const/4 v6, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 804
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->q()I

    move-result v6

    .line 806
    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 807
    const/16 v8, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 823
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v18

    .line 824
    sget v8, Lcom/google/android/exoplayer2/extractor/c/a;->aa:I

    move/from16 v0, p1

    if-ne v0, v8, :cond_2

    .line 825
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p8

    move/from16 v4, p9

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/c/b;->a(Lcom/google/android/exoplayer2/util/l;IILcom/google/android/exoplayer2/extractor/c/b$c;I)I

    move-result p1

    .line 826
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 830
    :cond_2
    const/4 v8, 0x0

    .line 831
    sget v9, Lcom/google/android/exoplayer2/extractor/c/a;->n:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_9

    .line 832
    const-string v8, "audio/ac3"

    .line 853
    :cond_3
    :goto_2
    const/16 v17, 0x0

    move v12, v6

    move v11, v7

    move-object v7, v8

    .line 854
    :goto_3
    sub-int v6, v18, p2

    move/from16 v0, p3

    if-ge v6, v0, :cond_1a

    .line 855
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 856
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v19

    .line 857
    if-lez v19, :cond_14

    const/4 v6, 0x1

    :goto_4
    const-string v8, "childAtomSize should be positive"

    invoke-static {v6, v8}, Lcom/google/android/exoplayer2/util/a;->a(ZLjava/lang/Object;)V

    .line 858
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v6

    .line 859
    sget v8, Lcom/google/android/exoplayer2/extractor/c/a;->J:I

    if-eq v6, v8, :cond_4

    if-eqz p6, :cond_16

    sget v8, Lcom/google/android/exoplayer2/extractor/c/a;->k:I

    if-ne v6, v8, :cond_16

    .line 860
    :cond_4
    sget v8, Lcom/google/android/exoplayer2/extractor/c/a;->J:I

    if-ne v6, v8, :cond_15

    move/from16 v6, v18

    .line 862
    :goto_5
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1e

    .line 864
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/extractor/c/b;->d(Lcom/google/android/exoplayer2/util/l;I)Landroid/util/Pair;

    move-result-object v8

    .line 865
    iget-object v6, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 866
    iget-object v6, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v6

    check-cast v8, [B

    .line 867
    const-string v6, "audio/mp4a-latm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 871
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/c;->a([B)Landroid/util/Pair;

    move-result-object v9

    .line 872
    iget-object v6, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 873
    iget-object v6, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :cond_5
    :goto_6
    move-object/from16 v17, v8

    .line 893
    :cond_6
    :goto_7
    add-int v18, v18, v19

    .line 894
    goto :goto_3

    .line 795
    :cond_7
    const/16 v7, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    move v8, v6

    goto/16 :goto_0

    .line 809
    :cond_8
    const/4 v6, 0x2

    if-ne v8, v6, :cond_1b

    .line 810
    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 812
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->v()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    .line 813
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v7

    .line 817
    const/16 v8, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    goto/16 :goto_1

    .line 833
    :cond_9
    sget v9, Lcom/google/android/exoplayer2/extractor/c/a;->p:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_a

    .line 834
    const-string v8, "audio/eac3"

    goto/16 :goto_2

    .line 835
    :cond_a
    sget v9, Lcom/google/android/exoplayer2/extractor/c/a;->r:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_b

    .line 836
    const-string v8, "audio/vnd.dts"

    goto/16 :goto_2

    .line 837
    :cond_b
    sget v9, Lcom/google/android/exoplayer2/extractor/c/a;->s:I

    move/from16 v0, p1

    if-eq v0, v9, :cond_c

    sget v9, Lcom/google/android/exoplayer2/extractor/c/a;->t:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_d

    .line 838
    :cond_c
    const-string v8, "audio/vnd.dts.hd"

    goto/16 :goto_2

    .line 839
    :cond_d
    sget v9, Lcom/google/android/exoplayer2/extractor/c/a;->u:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_e

    .line 840
    const-string v8, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_2

    .line 841
    :cond_e
    sget v9, Lcom/google/android/exoplayer2/extractor/c/a;->ay:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_f

    .line 842
    const-string v8, "audio/3gpp"

    goto/16 :goto_2

    .line 843
    :cond_f
    sget v9, Lcom/google/android/exoplayer2/extractor/c/a;->az:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_10

    .line 844
    const-string v8, "audio/amr-wb"

    goto/16 :goto_2

    .line 845
    :cond_10
    sget v9, Lcom/google/android/exoplayer2/extractor/c/a;->l:I

    move/from16 v0, p1

    if-eq v0, v9, :cond_11

    sget v9, Lcom/google/android/exoplayer2/extractor/c/a;->m:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_12

    .line 846
    :cond_11
    const-string v8, "audio/raw"

    goto/16 :goto_2

    .line 847
    :cond_12
    sget v9, Lcom/google/android/exoplayer2/extractor/c/a;->j:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_13

    .line 848
    const-string v8, "audio/mpeg"

    goto/16 :goto_2

    .line 849
    :cond_13
    sget v9, Lcom/google/android/exoplayer2/extractor/c/a;->aO:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_3

    .line 850
    const-string v8, "audio/alac"

    goto/16 :goto_2

    .line 857
    :cond_14
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 861
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/c/b;->a(Lcom/google/android/exoplayer2/util/l;II)I

    move-result v6

    goto/16 :goto_5

    .line 876
    :cond_16
    sget v8, Lcom/google/android/exoplayer2/extractor/c/a;->o:I

    if-ne v6, v8, :cond_17

    .line 877
    add-int/lit8 v6, v18, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 878
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    invoke-static {v0, v6, v1, v2}, Lcom/google/android/exoplayer2/audio/a;->a(Lcom/google/android/exoplayer2/util/l;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    move-object/from16 v0, p8

    iput-object v6, v0, Lcom/google/android/exoplayer2/extractor/c/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_7

    .line 880
    :cond_17
    sget v8, Lcom/google/android/exoplayer2/extractor/c/a;->q:I

    if-ne v6, v8, :cond_18

    .line 881
    add-int/lit8 v6, v18, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 882
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    invoke-static {v0, v6, v1, v2}, Lcom/google/android/exoplayer2/audio/a;->b(Lcom/google/android/exoplayer2/util/l;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    move-object/from16 v0, p8

    iput-object v6, v0, Lcom/google/android/exoplayer2/extractor/c/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_7

    .line 884
    :cond_18
    sget v8, Lcom/google/android/exoplayer2/extractor/c/a;->v:I

    if-ne v6, v8, :cond_19

    .line 885
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v14, p7

    move-object/from16 v16, p5

    invoke-static/range {v6 .. v16}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    move-object/from16 v0, p8

    iput-object v6, v0, Lcom/google/android/exoplayer2/extractor/c/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_7

    .line 888
    :cond_19
    sget v8, Lcom/google/android/exoplayer2/extractor/c/a;->aO:I

    if-ne v6, v8, :cond_6

    .line 889
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 890
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 891
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v6, v2}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    goto/16 :goto_7

    .line 896
    :cond_1a
    move-object/from16 v0, p8

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/c/b$c;->b:Lcom/google/android/exoplayer2/Format;

    if-nez v6, :cond_1b

    if-eqz v7, :cond_1b

    .line 898
    const-string v6, "audio/raw"

    .line 899
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    const/4 v13, 0x2

    .line 900
    :goto_8
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    if-nez v17, :cond_1d

    const/4 v14, 0x0

    .line 902
    :goto_9
    const/16 v16, 0x0

    move-object/from16 v15, p7

    move-object/from16 v17, p5

    .line 900
    invoke-static/range {v6 .. v17}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    move-object/from16 v0, p8

    iput-object v6, v0, Lcom/google/android/exoplayer2/extractor/c/b$c;->b:Lcom/google/android/exoplayer2/Format;

    .line 905
    :cond_1b
    return-void

    .line 899
    :cond_1c
    const/4 v13, -0x1

    goto :goto_8

    .line 902
    :cond_1d
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    goto :goto_9

    :cond_1e
    move-object/from16 v8, v17

    goto/16 :goto_6
.end method

.method private static b(Lcom/google/android/exoplayer2/util/l;II)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/l;",
            "II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/c/k;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1030
    add-int/lit8 v0, p1, 0x8

    move-object v1, v5

    move v2, v4

    move v6, v0

    move-object v0, v5

    .line 1035
    :goto_0
    sub-int v7, v6, p1

    if-ge v7, p2, :cond_4

    .line 1036
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 1037
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v7

    .line 1038
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v8

    .line 1039
    sget v9, Lcom/google/android/exoplayer2/extractor/c/a;->ab:I

    if-ne v8, v9, :cond_1

    .line 1040
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1047
    :cond_0
    :goto_1
    add-int/2addr v6, v7

    .line 1048
    goto :goto_0

    .line 1041
    :cond_1
    sget v9, Lcom/google/android/exoplayer2/extractor/c/a;->W:I

    if-ne v8, v9, :cond_3

    .line 1042
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 1043
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v2

    sget v8, Lcom/google/android/exoplayer2/extractor/c/b;->g:I

    if-ne v2, v8, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_1

    .line 1044
    :cond_3
    sget v9, Lcom/google/android/exoplayer2/extractor/c/a;->X:I

    if-ne v8, v9, :cond_0

    .line 1045
    invoke-static {p0, v6, v7}, Lcom/google/android/exoplayer2/extractor/c/b;->c(Lcom/google/android/exoplayer2/util/l;II)Lcom/google/android/exoplayer2/extractor/c/k;

    move-result-object v1

    goto :goto_1

    .line 1050
    :cond_4
    if-eqz v2, :cond_7

    .line 1051
    if-eqz v0, :cond_5

    move v2, v3

    :goto_2
    const-string v5, "frma atom is mandatory"

    invoke-static {v2, v5}, Lcom/google/android/exoplayer2/util/a;->a(ZLjava/lang/Object;)V

    .line 1052
    if-eqz v1, :cond_6

    :goto_3
    const-string v2, "schi->tenc atom is mandatory"

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/a;->a(ZLjava/lang/Object;)V

    .line 1053
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 1055
    :goto_4
    return-object v0

    :cond_5
    move v2, v4

    .line 1051
    goto :goto_2

    :cond_6
    move v3, v4

    .line 1052
    goto :goto_3

    :cond_7
    move-object v0, v5

    .line 1055
    goto :goto_4
.end method

.method private static b(Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/extractor/c/b$f;
    .locals 13

    .prologue
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v2, 0x10

    const/16 v1, 0x8

    const/4 v3, 0x4

    const/4 v6, 0x0

    .line 480
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 481
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    .line 482
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/a;->a(I)I

    move-result v8

    .line 484
    if-nez v8, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 485
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v9

    .line 487
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 488
    const/4 v0, 0x1

    .line 489
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v10

    .line 490
    if-nez v8, :cond_0

    move v1, v3

    :cond_0
    move v7, v6

    .line 491
    :goto_1
    if-ge v7, v1, :cond_1

    .line 492
    iget-object v11, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    add-int v12, v10, v7

    aget-byte v11, v11, v12

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    move v0, v6

    .line 498
    :cond_1
    if-eqz v0, :cond_5

    .line 499
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    move-wide v0, v4

    .line 510
    :cond_2
    :goto_2
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 511
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v2

    .line 512
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v4

    .line 513
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 514
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v3

    .line 515
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v5

    .line 518
    const/high16 v7, 0x10000

    .line 519
    if-nez v2, :cond_7

    if-ne v4, v7, :cond_7

    neg-int v8, v7

    if-ne v3, v8, :cond_7

    if-nez v5, :cond_7

    .line 520
    const/16 v2, 0x5a

    .line 530
    :goto_3
    new-instance v3, Lcom/google/android/exoplayer2/extractor/c/b$f;

    invoke-direct {v3, v9, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/c/b$f;-><init>(IJI)V

    return-object v3

    :cond_3
    move v0, v2

    .line 484
    goto :goto_0

    .line 491
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 502
    :cond_5
    if-nez v8, :cond_6

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->k()J

    move-result-wide v0

    .line 503
    :goto_4
    const-wide/16 v10, 0x0

    cmp-long v7, v0, v10

    if-nez v7, :cond_2

    move-wide v0, v4

    .line 506
    goto :goto_2

    .line 502
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->u()J

    move-result-wide v0

    goto :goto_4

    .line 521
    :cond_7
    if-nez v2, :cond_8

    neg-int v8, v7

    if-ne v4, v8, :cond_8

    if-ne v3, v7, :cond_8

    if-nez v5, :cond_8

    .line 522
    const/16 v2, 0x10e

    goto :goto_3

    .line 523
    :cond_8
    neg-int v8, v7

    if-ne v2, v8, :cond_9

    if-nez v4, :cond_9

    if-nez v3, :cond_9

    neg-int v2, v7

    if-ne v5, v2, :cond_9

    .line 524
    const/16 v2, 0xb4

    goto :goto_3

    :cond_9
    move v2, v6

    .line 527
    goto :goto_3
.end method

.method private static b(Lcom/google/android/exoplayer2/util/l;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 2

    .prologue
    .line 449
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 450
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 451
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 452
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/c/f;->a(Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v0

    .line 453
    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 457
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_1
.end method

.method private static c(Lcom/google/android/exoplayer2/util/l;I)F
    .locals 2

    .prologue
    .line 778
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 779
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v0

    .line 780
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v1

    .line 781
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private static c(Lcom/google/android/exoplayer2/util/l;)I
    .locals 2

    .prologue
    .line 540
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 541
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    .line 542
    sget v1, Lcom/google/android/exoplayer2/extractor/c/b;->b:I

    if-ne v0, v1, :cond_0

    .line 543
    const/4 v0, 0x1

    .line 552
    :goto_0
    return v0

    .line 544
    :cond_0
    sget v1, Lcom/google/android/exoplayer2/extractor/c/b;->a:I

    if-ne v0, v1, :cond_1

    .line 545
    const/4 v0, 0x2

    goto :goto_0

    .line 546
    :cond_1
    sget v1, Lcom/google/android/exoplayer2/extractor/c/b;->c:I

    if-eq v0, v1, :cond_2

    sget v1, Lcom/google/android/exoplayer2/extractor/c/b;->d:I

    if-eq v0, v1, :cond_2

    sget v1, Lcom/google/android/exoplayer2/extractor/c/b;->e:I

    if-eq v0, v1, :cond_2

    sget v1, Lcom/google/android/exoplayer2/extractor/c/b;->f:I

    if-ne v0, v1, :cond_3

    .line 548
    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    .line 549
    :cond_3
    sget v1, Lcom/google/android/exoplayer2/extractor/c/b;->h:I

    if-ne v0, v1, :cond_4

    .line 550
    const/4 v0, 0x4

    goto :goto_0

    .line 552
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static c(Lcom/google/android/exoplayer2/util/l;II)Lcom/google/android/exoplayer2/extractor/c/k;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1061
    add-int/lit8 v2, p1, 0x8

    .line 1062
    :goto_0
    sub-int v3, v2, p1

    if-ge v3, p2, :cond_2

    .line 1063
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 1064
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v3

    .line 1065
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v4

    .line 1066
    sget v5, Lcom/google/android/exoplayer2/extractor/c/a;->Y:I

    if-ne v4, v5, :cond_1

    .line 1067
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 1068
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1069
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v2

    .line 1070
    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 1071
    array-length v4, v3

    invoke-virtual {p0, v3, v1, v4}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 1072
    new-instance v1, Lcom/google/android/exoplayer2/extractor/c/k;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/c/k;-><init>(ZI[B)V

    move-object v0, v1

    .line 1076
    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    .line 1068
    goto :goto_1

    .line 1074
    :cond_1
    add-int/2addr v2, v3

    .line 1075
    goto :goto_0

    .line 1076
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static d(Lcom/google/android/exoplayer2/util/l;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/l;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 564
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 565
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    .line 566
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/a;->a(I)I

    move-result v2

    .line 567
    if-nez v2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 568
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->k()J

    move-result-wide v4

    .line 569
    if-nez v2, :cond_0

    const/4 v1, 0x4

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 570
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->g()I

    move-result v0

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, v0, 0xa

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 574
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 567
    :cond_1
    const/16 v0, 0x10

    goto :goto_0
.end method

.method private static d(Lcom/google/android/exoplayer2/util/l;I)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/l;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 930
    add-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 932
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 933
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/c/b;->e(Lcom/google/android/exoplayer2/util/l;)I

    .line 934
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 936
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v1

    .line 937
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 938
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 940
    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 941
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->g()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 943
    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 944
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 948
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 949
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/c/b;->e(Lcom/google/android/exoplayer2/util/l;)I

    .line 952
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v1

    .line 954
    sparse-switch v1, :sswitch_data_0

    .line 992
    :goto_0
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 995
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 996
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/c/b;->e(Lcom/google/android/exoplayer2/util/l;)I

    move-result v1

    .line 997
    new-array v2, v1, [B

    .line 998
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 999
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_1
    return-object v0

    .line 956
    :sswitch_0
    const-string v1, "audio/mpeg"

    .line 957
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    .line 959
    :sswitch_1
    const-string v0, "video/mp4v-es"

    goto :goto_0

    .line 962
    :sswitch_2
    const-string v0, "video/avc"

    goto :goto_0

    .line 965
    :sswitch_3
    const-string v0, "video/hevc"

    goto :goto_0

    .line 971
    :sswitch_4
    const-string v0, "audio/mp4a-latm"

    goto :goto_0

    .line 974
    :sswitch_5
    const-string v0, "audio/ac3"

    goto :goto_0

    .line 977
    :sswitch_6
    const-string v0, "audio/eac3"

    goto :goto_0

    .line 981
    :sswitch_7
    const-string v1, "audio/vnd.dts"

    .line 982
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    .line 985
    :sswitch_8
    const-string v1, "audio/vnd.dts.hd"

    .line 986
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    .line 954
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0x23 -> :sswitch_3
        0x40 -> :sswitch_4
        0x66 -> :sswitch_4
        0x67 -> :sswitch_4
        0x68 -> :sswitch_4
        0x6b -> :sswitch_0
        0xa5 -> :sswitch_5
        0xa6 -> :sswitch_6
        0xa9 -> :sswitch_7
        0xaa -> :sswitch_8
        0xab -> :sswitch_8
        0xac -> :sswitch_7
    .end sparse-switch
.end method

.method private static d(Lcom/google/android/exoplayer2/util/l;II)[B
    .locals 4

    .prologue
    .line 1083
    add-int/lit8 v0, p1, 0x8

    .line 1084
    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1

    .line 1085
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 1086
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v1

    .line 1087
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v2

    .line 1088
    sget v3, Lcom/google/android/exoplayer2/extractor/c/a;->aJ:I

    if-ne v2, v3, :cond_0

    .line 1089
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    add-int/2addr v1, v0

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 1093
    :goto_1
    return-object v0

    .line 1091
    :cond_0
    add-int/2addr v0, v1

    .line 1092
    goto :goto_0

    .line 1093
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static e(Lcom/google/android/exoplayer2/util/l;)I
    .locals 3

    .prologue
    .line 1100
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v1

    .line 1101
    and-int/lit8 v0, v1, 0x7f

    .line 1102
    :goto_0
    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    .line 1103
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v1

    .line 1104
    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    goto :goto_0

    .line 1106
    :cond_0
    return v0
.end method
