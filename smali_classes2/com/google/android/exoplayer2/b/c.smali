.class public Lcom/google/android/exoplayer2/b/c;
.super Lcom/google/android/exoplayer2/b/e;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/b/c$a;
    }
.end annotation


# static fields
.field private static final a:[I


# instance fields
.field private final b:Lcom/google/android/exoplayer2/b/f$a;

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/exoplayer2/b/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/exoplayer2/b/c;->a:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/b/c;-><init>(Lcom/google/android/exoplayer2/b/f$a;)V

    .line 383
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/b/f$a;)V
    .locals 2

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/google/android/exoplayer2/b/e;-><init>()V

    .line 392
    iput-object p1, p0, Lcom/google/android/exoplayer2/b/c;->b:Lcom/google/android/exoplayer2/b/f$a;

    .line 393
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/exoplayer2/b/c$a;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/b/c$a;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/b/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 394
    return-void
.end method

.method private static a(II)I
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 657
    if-ne p0, v0, :cond_1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sub-int v0, p0, p1

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/source/l;[IILjava/lang/String;IIILjava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/l;",
            "[II",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 554
    const/4 v2, 0x0

    .line 555
    const/4 v1, 0x0

    move v8, v1

    move v9, v2

    :goto_0
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_0

    .line 556
    move-object/from16 v0, p7

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 557
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/l;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    aget v3, p1, v2

    move-object v2, p3

    move v4, p2

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/b/c;->a(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    add-int/lit8 v2, v9, 0x1

    .line 555
    :goto_1
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v9, v2

    goto :goto_0

    .line 563
    :cond_0
    return v9

    :cond_1
    move v2, v9

    goto :goto_1
.end method

.method private static a(ZIIII)Landroid/graphics/Point;
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 852
    if-eqz p0, :cond_0

    if-le p3, p4, :cond_1

    move v2, v0

    :goto_0
    if-le p1, p2, :cond_2

    :goto_1
    if-eq v2, v0, :cond_0

    move v3, p1

    move p1, p2

    move p2, v3

    .line 859
    :cond_0
    mul-int v0, p3, p2

    mul-int v1, p4, p1

    if-lt v0, v1, :cond_3

    .line 861
    new-instance v0, Landroid/graphics/Point;

    mul-int v1, p1, p4

    invoke-static {v1, p3}, Lcom/google/android/exoplayer2/util/v;->a(II)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 864
    :goto_2
    return-object v0

    :cond_1
    move v2, v1

    .line 852
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 864
    :cond_3
    new-instance v0, Landroid/graphics/Point;

    mul-int v1, p2, p3

    invoke-static {v1, p4}, Lcom/google/android/exoplayer2/util/v;->a(II)I

    move-result v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2
.end method

.method private static a(Lcom/google/android/exoplayer2/k;Lcom/google/android/exoplayer2/source/m;[[IIIIZZIIZLcom/google/android/exoplayer2/b/f$a;)Lcom/google/android/exoplayer2/b/f;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 493
    if-eqz p6, :cond_0

    const/16 v4, 0xc

    .line 496
    :goto_0
    if-eqz p7, :cond_1

    .line 497
    invoke-interface {p0}, Lcom/google/android/exoplayer2/k;->m()I

    move-result v1

    and-int/2addr v1, v4

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    .line 498
    :goto_1
    const/4 v1, 0x0

    move v11, v1

    :goto_2
    iget v1, p1, Lcom/google/android/exoplayer2/source/m;->b:I

    if-ge v11, v1, :cond_3

    .line 499
    invoke-virtual {p1, v11}, Lcom/google/android/exoplayer2/source/m;->a(I)Lcom/google/android/exoplayer2/source/l;

    move-result-object v1

    .line 500
    aget-object v2, p2, v11

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-static/range {v1 .. v10}, Lcom/google/android/exoplayer2/b/c;->a(Lcom/google/android/exoplayer2/source/l;[IZIIIIIIZ)[I

    move-result-object v2

    .line 503
    array-length v5, v2

    if-lez v5, :cond_2

    .line 504
    move-object/from16 v0, p11

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/b/f$a;->b(Lcom/google/android/exoplayer2/source/l;[I)Lcom/google/android/exoplayer2/b/f;

    move-result-object v1

    .line 507
    :goto_3
    return-object v1

    .line 493
    :cond_0
    const/16 v4, 0x8

    goto :goto_0

    .line 497
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 498
    :cond_2
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_2

    .line 507
    :cond_3
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private static a(Lcom/google/android/exoplayer2/source/m;[[IIIIIIZZZ)Lcom/google/android/exoplayer2/b/f;
    .locals 18

    .prologue
    .line 593
    const/4 v9, 0x0

    .line 594
    const/4 v7, 0x0

    .line 595
    const/4 v6, 0x0

    .line 596
    const/4 v5, -0x1

    .line 597
    const/4 v4, -0x1

    .line 598
    const/4 v3, 0x0

    move v12, v3

    move v3, v4

    move v4, v5

    move v5, v6

    :goto_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/m;->b:I

    if-ge v12, v6, :cond_e

    .line 599
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/source/m;->a(I)Lcom/google/android/exoplayer2/source/l;

    move-result-object v10

    .line 600
    move/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p7

    invoke-static {v10, v0, v1, v2}, Lcom/google/android/exoplayer2/b/c;->a(Lcom/google/android/exoplayer2/source/l;IIZ)Ljava/util/List;

    move-result-object v14

    .line 602
    aget-object v15, p1, v12

    .line 603
    const/4 v8, 0x0

    :goto_1
    iget v6, v10, Lcom/google/android/exoplayer2/source/l;->a:I

    if-ge v8, v6, :cond_d

    .line 604
    aget v6, v15, v8

    move/from16 v0, p9

    invoke-static {v6, v0}, Lcom/google/android/exoplayer2/b/c;->a(IZ)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 605
    invoke-virtual {v10, v8}, Lcom/google/android/exoplayer2/source/l;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v16

    .line 606
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v14, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object/from16 v0, v16

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->j:I

    const/4 v11, -0x1

    if-eq v6, v11, :cond_0

    move-object/from16 v0, v16

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->j:I

    move/from16 v0, p2

    if-gt v6, v0, :cond_3

    :cond_0
    move-object/from16 v0, v16

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->k:I

    const/4 v11, -0x1

    if-eq v6, v11, :cond_1

    move-object/from16 v0, v16

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->k:I

    move/from16 v0, p3

    if-gt v6, v0, :cond_3

    :cond_1
    move-object/from16 v0, v16

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->b:I

    const/4 v11, -0x1

    if-eq v6, v11, :cond_2

    move-object/from16 v0, v16

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->b:I

    move/from16 v0, p4

    if-gt v6, v0, :cond_3

    :cond_2
    const/4 v6, 0x1

    move v13, v6

    .line 610
    :goto_2
    if-nez v13, :cond_4

    if-nez p8, :cond_4

    move v6, v7

    move-object v7, v9

    .line 603
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move-object v9, v7

    move v7, v6

    goto :goto_1

    .line 606
    :cond_3
    const/4 v6, 0x0

    move v13, v6

    goto :goto_2

    .line 614
    :cond_4
    if-eqz v13, :cond_7

    const/4 v6, 0x2

    .line 615
    :goto_4
    aget v11, v15, v8

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v11, v0}, Lcom/google/android/exoplayer2/b/c;->a(IZ)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 616
    add-int/lit16 v6, v6, 0x3e8

    .line 618
    :cond_5
    if-le v6, v5, :cond_8

    const/4 v11, 0x1

    .line 619
    :goto_5
    if-ne v6, v5, :cond_6

    .line 625
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/Format;->a()I

    move-result v11

    .line 626
    if-eq v11, v3, :cond_9

    .line 627
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/Format;->a()I

    move-result v11

    invoke-static {v11, v3}, Lcom/google/android/exoplayer2/b/c;->a(II)I

    move-result v11

    .line 631
    :goto_6
    if-eqz v13, :cond_b

    if-lez v11, :cond_a

    const/4 v11, 0x1

    .line 633
    :cond_6
    :goto_7
    if-eqz v11, :cond_10

    .line 637
    move-object/from16 v0, v16

    iget v4, v0, Lcom/google/android/exoplayer2/Format;->b:I

    .line 638
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/Format;->a()I

    move-result v3

    move v5, v6

    move-object v7, v10

    move v6, v8

    goto :goto_3

    .line 614
    :cond_7
    const/4 v6, 0x1

    goto :goto_4

    .line 618
    :cond_8
    const/4 v11, 0x0

    goto :goto_5

    .line 629
    :cond_9
    move-object/from16 v0, v16

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->b:I

    invoke-static {v11, v4}, Lcom/google/android/exoplayer2/b/c;->a(II)I

    move-result v11

    goto :goto_6

    .line 631
    :cond_a
    const/4 v11, 0x0

    goto :goto_7

    :cond_b
    if-gez v11, :cond_c

    const/4 v11, 0x1

    goto :goto_7

    :cond_c
    const/4 v11, 0x0

    goto :goto_7

    .line 598
    :cond_d
    add-int/lit8 v6, v12, 0x1

    move v12, v6

    goto/16 :goto_0

    .line 643
    :cond_e
    if-nez v9, :cond_f

    const/4 v3, 0x0

    :goto_8
    return-object v3

    :cond_f
    new-instance v3, Lcom/google/android/exoplayer2/b/d;

    invoke-direct {v3, v9, v7}, Lcom/google/android/exoplayer2/b/d;-><init>(Lcom/google/android/exoplayer2/source/l;I)V

    goto :goto_8

    :cond_10
    move v6, v7

    move-object v7, v9

    goto :goto_3
.end method

.method private static a(Lcom/google/android/exoplayer2/source/l;IIZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/l;",
            "IIZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const v9, 0x3f7ae148    # 0.98f

    const v3, 0x7fffffff

    .line 802
    new-instance v4, Ljava/util/ArrayList;

    iget v0, p0, Lcom/google/android/exoplayer2/source/l;->a:I

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 803
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/source/l;->a:I

    if-ge v0, v2, :cond_0

    .line 804
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 807
    :cond_0
    if-eq p1, v3, :cond_1

    if-ne p2, v3, :cond_2

    :cond_1
    move-object v0, v4

    .line 843
    :goto_1
    return-object v0

    :cond_2
    move v2, v3

    .line 813
    :goto_2
    iget v0, p0, Lcom/google/android/exoplayer2/source/l;->a:I

    if-ge v1, v0, :cond_3

    .line 814
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/l;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 818
    iget v0, v5, Lcom/google/android/exoplayer2/Format;->j:I

    if-lez v0, :cond_7

    iget v0, v5, Lcom/google/android/exoplayer2/Format;->k:I

    if-lez v0, :cond_7

    .line 819
    iget v0, v5, Lcom/google/android/exoplayer2/Format;->j:I

    iget v6, v5, Lcom/google/android/exoplayer2/Format;->k:I

    invoke-static {p3, p1, p2, v0, v6}, Lcom/google/android/exoplayer2/b/c;->a(ZIIII)Landroid/graphics/Point;

    move-result-object v6

    .line 821
    iget v0, v5, Lcom/google/android/exoplayer2/Format;->j:I

    iget v7, v5, Lcom/google/android/exoplayer2/Format;->k:I

    mul-int/2addr v0, v7

    .line 822
    iget v7, v5, Lcom/google/android/exoplayer2/Format;->j:I

    iget v8, v6, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    mul-float/2addr v8, v9

    float-to-int v8, v8

    if-lt v7, v8, :cond_7

    iget v5, v5, Lcom/google/android/exoplayer2/Format;->k:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    mul-float/2addr v6, v9

    float-to-int v6, v6

    if-lt v5, v6, :cond_7

    if-ge v0, v2, :cond_7

    .line 813
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 833
    :cond_3
    if-eq v2, v3, :cond_6

    .line 834
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4
    if-ltz v1, :cond_6

    .line 835
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/l;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 836
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format;->a()I

    move-result v0

    .line 837
    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    if-le v0, v2, :cond_5

    .line 838
    :cond_4
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 834
    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4

    :cond_6
    move-object v0, v4

    .line 843
    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_3
.end method

.method protected static a(IZ)Z
    .locals 2

    .prologue
    .line 788
    and-int/lit8 v0, p0, 0x3

    .line 789
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static a(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 794
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIII)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 582
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/b/c;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    and-int v1, p2, p3

    if-eqz v1, :cond_4

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 583
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->j:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->j:I

    if-gt v1, p4, :cond_4

    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->k:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->k:I

    if-gt v1, p5, :cond_4

    :cond_2
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->b:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->b:I

    if-gt v1, p6, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private static a(Lcom/google/android/exoplayer2/source/l;[IZIIIIIIZ)[I
    .locals 15

    .prologue
    .line 514
    iget v3, p0, Lcom/google/android/exoplayer2/source/l;->a:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 515
    sget-object v3, Lcom/google/android/exoplayer2/b/c;->a:[I

    .line 548
    :goto_0
    return-object v3

    .line 518
    :cond_0
    move/from16 v0, p7

    move/from16 v1, p8

    move/from16 v2, p9

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/b/c;->a(Lcom/google/android/exoplayer2/source/l;IIZ)Ljava/util/List;

    move-result-object v10

    .line 520
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 521
    sget-object v3, Lcom/google/android/exoplayer2/b/c;->a:[I

    goto :goto_0

    .line 524
    :cond_1
    const/4 v12, 0x0

    .line 525
    if-nez p2, :cond_5

    .line 527
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 528
    const/4 v11, 0x0

    .line 529
    const/4 v3, 0x0

    move v13, v3

    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v13, v3, :cond_2

    .line 530
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 531
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/l;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iget-object v6, v3, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 532
    invoke-virtual {v14, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    .line 533
    invoke-static/range {v3 .. v10}, Lcom/google/android/exoplayer2/b/c;->a(Lcom/google/android/exoplayer2/source/l;[IILjava/lang/String;IIILjava/util/List;)I

    move-result v3

    .line 536
    if-le v3, v11, :cond_4

    .line 529
    :goto_2
    add-int/lit8 v4, v13, 0x1

    move v13, v4

    move v11, v3

    move-object v12, v6

    goto :goto_1

    :cond_2
    move-object v6, v12

    :goto_3
    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    .line 545
    invoke-static/range {v3 .. v10}, Lcom/google/android/exoplayer2/b/c;->b(Lcom/google/android/exoplayer2/source/l;[IILjava/lang/String;IIILjava/util/List;)V

    .line 548
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    sget-object v3, Lcom/google/android/exoplayer2/b/c;->a:[I

    goto :goto_0

    :cond_3
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/util/List;)[I

    move-result-object v3

    goto :goto_0

    :cond_4
    move v3, v11

    move-object v6, v12

    goto :goto_2

    :cond_5
    move-object v6, v12

    goto :goto_3
.end method

.method private static b(Lcom/google/android/exoplayer2/source/l;[IILjava/lang/String;IIILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/l;",
            "[II",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 569
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_1

    .line 570
    invoke-interface {p7, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 571
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/l;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    aget v2, p1, v1

    move-object v1, p3

    move v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/b/c;->a(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    invoke-interface {p7, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 569
    :cond_0
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    .line 577
    :cond_1
    return-void
.end method


# virtual methods
.method protected a(ILcom/google/android/exoplayer2/source/m;[[IZ)Lcom/google/android/exoplayer2/b/f;
    .locals 10

    .prologue
    .line 761
    const/4 v5, 0x0

    .line 762
    const/4 v3, 0x0

    .line 763
    const/4 v1, 0x0

    .line 764
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget v0, p2, Lcom/google/android/exoplayer2/source/m;->b:I

    if-ge v6, v0, :cond_4

    .line 765
    invoke-virtual {p2, v6}, Lcom/google/android/exoplayer2/source/m;->a(I)Lcom/google/android/exoplayer2/source/l;

    move-result-object v4

    .line 766
    aget-object v7, p3, v6

    .line 767
    const/4 v2, 0x0

    :goto_1
    iget v0, v4, Lcom/google/android/exoplayer2/source/l;->a:I

    if-ge v2, v0, :cond_3

    .line 768
    aget v0, v7, v2

    invoke-static {v0, p4}, Lcom/google/android/exoplayer2/b/c;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 769
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/source/l;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 770
    iget v0, v0, Lcom/google/android/exoplayer2/Format;->w:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 771
    :goto_2
    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 772
    :goto_3
    aget v8, v7, v2

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/b/c;->a(IZ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 773
    add-int/lit16 v0, v0, 0x3e8

    .line 775
    :cond_0
    if-le v0, v1, :cond_6

    move v1, v2

    move-object v3, v4

    .line 767
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move-object v5, v3

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 770
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 771
    :cond_2
    const/4 v0, 0x1

    goto :goto_3

    .line 764
    :cond_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 783
    :cond_4
    if-nez v5, :cond_5

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/exoplayer2/b/d;

    invoke-direct {v0, v5, v3}, Lcom/google/android/exoplayer2/b/d;-><init>(Lcom/google/android/exoplayer2/source/l;I)V

    goto :goto_5

    :cond_6
    move v0, v1

    move v1, v3

    move-object v3, v5

    goto :goto_4
.end method

.method protected a(Lcom/google/android/exoplayer2/k;Lcom/google/android/exoplayer2/source/m;[[IIIIZZIIZLcom/google/android/exoplayer2/b/f$a;ZZ)Lcom/google/android/exoplayer2/b/f;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 473
    const/4 v0, 0x0

    .line 474
    if-eqz p12, :cond_0

    .line 475
    invoke-static/range {p1 .. p12}, Lcom/google/android/exoplayer2/b/c;->a(Lcom/google/android/exoplayer2/k;Lcom/google/android/exoplayer2/source/m;[[IIIIZZIIZLcom/google/android/exoplayer2/b/f$a;)Lcom/google/android/exoplayer2/b/f;

    move-result-object v0

    .line 480
    :cond_0
    if-nez v0, :cond_1

    move-object v0, p2

    move-object v1, p3

    move v2, p4

    move v3, p5

    move/from16 v4, p6

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p13

    move/from16 v9, p14

    .line 481
    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/b/c;->a(Lcom/google/android/exoplayer2/source/m;[[IIIIIIZZZ)Lcom/google/android/exoplayer2/b/f;

    move-result-object v0

    .line 485
    :cond_1
    return-object v0
.end method

.method protected a(Lcom/google/android/exoplayer2/source/m;[[ILjava/lang/String;Ljava/lang/String;Z)Lcom/google/android/exoplayer2/b/f;
    .locals 12

    .prologue
    .line 707
    const/4 v5, 0x0

    .line 708
    const/4 v3, 0x0

    .line 709
    const/4 v2, 0x0

    .line 710
    const/4 v1, 0x0

    move v8, v1

    move v1, v2

    :goto_0
    iget v2, p1, Lcom/google/android/exoplayer2/source/m;->b:I

    if-ge v8, v2, :cond_9

    .line 711
    invoke-virtual {p1, v8}, Lcom/google/android/exoplayer2/source/m;->a(I)Lcom/google/android/exoplayer2/source/l;

    move-result-object v6

    .line 712
    aget-object v9, p2, v8

    .line 713
    const/4 v4, 0x0

    :goto_1
    iget v2, v6, Lcom/google/android/exoplayer2/source/l;->a:I

    if-ge v4, v2, :cond_8

    .line 714
    aget v2, v9, v4

    move/from16 v0, p5

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/b/c;->a(IZ)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 715
    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/source/l;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    .line 716
    iget v2, v10, Lcom/google/android/exoplayer2/Format;->w:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 717
    :goto_2
    iget v7, v10, Lcom/google/android/exoplayer2/Format;->w:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    .line 719
    :goto_3
    invoke-static {v10, p3}, Lcom/google/android/exoplayer2/b/c;->a(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 720
    if-eqz v2, :cond_3

    .line 721
    const/4 v2, 0x6

    .line 742
    :goto_4
    aget v7, v9, v4

    const/4 v10, 0x0

    invoke-static {v7, v10}, Lcom/google/android/exoplayer2/b/c;->a(IZ)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 743
    add-int/lit16 v2, v2, 0x3e8

    .line 745
    :cond_0
    if-le v2, v1, :cond_b

    move v1, v2

    move-object v3, v6

    move v2, v4

    .line 713
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move-object v5, v3

    move v3, v2

    goto :goto_1

    .line 716
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 717
    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    .line 722
    :cond_3
    if-nez v7, :cond_4

    .line 726
    const/4 v2, 0x5

    goto :goto_4

    .line 728
    :cond_4
    const/4 v2, 0x4

    goto :goto_4

    .line 730
    :cond_5
    if-eqz v2, :cond_6

    .line 731
    const/4 v2, 0x3

    goto :goto_4

    .line 732
    :cond_6
    if-eqz v7, :cond_b

    .line 733
    move-object/from16 v0, p4

    invoke-static {v10, v0}, Lcom/google/android/exoplayer2/b/c;->a(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 734
    const/4 v2, 0x2

    goto :goto_4

    .line 736
    :cond_7
    const/4 v2, 0x1

    goto :goto_4

    .line 710
    :cond_8
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_0

    .line 753
    :cond_9
    if-nez v5, :cond_a

    const/4 v1, 0x0

    :goto_6
    return-object v1

    :cond_a
    new-instance v1, Lcom/google/android/exoplayer2/b/d;

    invoke-direct {v1, v5, v3}, Lcom/google/android/exoplayer2/b/d;-><init>(Lcom/google/android/exoplayer2/source/l;I)V

    goto :goto_6

    :cond_b
    move v2, v3

    move-object v3, v5

    goto :goto_5
.end method

.method protected a(Lcom/google/android/exoplayer2/source/m;[[ILjava/lang/String;Z)Lcom/google/android/exoplayer2/b/f;
    .locals 10

    .prologue
    .line 665
    const/4 v5, 0x0

    .line 666
    const/4 v3, 0x0

    .line 667
    const/4 v1, 0x0

    .line 668
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget v0, p1, Lcom/google/android/exoplayer2/source/m;->b:I

    if-ge v6, v0, :cond_6

    .line 669
    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/source/m;->a(I)Lcom/google/android/exoplayer2/source/l;

    move-result-object v4

    .line 670
    aget-object v7, p2, v6

    .line 671
    const/4 v2, 0x0

    :goto_1
    iget v0, v4, Lcom/google/android/exoplayer2/source/l;->a:I

    if-ge v2, v0, :cond_5

    .line 672
    aget v0, v7, v2

    invoke-static {v0, p4}, Lcom/google/android/exoplayer2/b/c;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 673
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/source/l;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    .line 674
    iget v0, v8, Lcom/google/android/exoplayer2/Format;->w:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 676
    :goto_2
    invoke-static {v8, p3}, Lcom/google/android/exoplayer2/b/c;->a(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 677
    if-eqz v0, :cond_2

    .line 678
    const/4 v0, 0x4

    .line 687
    :goto_3
    aget v8, v7, v2

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/b/c;->a(IZ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 688
    add-int/lit16 v0, v0, 0x3e8

    .line 690
    :cond_0
    if-le v0, v1, :cond_8

    move v1, v2

    move-object v3, v4

    .line 671
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move-object v5, v3

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 674
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 680
    :cond_2
    const/4 v0, 0x3

    goto :goto_3

    .line 682
    :cond_3
    if-eqz v0, :cond_4

    .line 683
    const/4 v0, 0x2

    goto :goto_3

    .line 685
    :cond_4
    const/4 v0, 0x1

    goto :goto_3

    .line 668
    :cond_5
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 698
    :cond_6
    if-nez v5, :cond_7

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_7
    new-instance v0, Lcom/google/android/exoplayer2/b/d;

    invoke-direct {v0, v5, v3}, Lcom/google/android/exoplayer2/b/d;-><init>(Lcom/google/android/exoplayer2/source/l;I)V

    goto :goto_5

    :cond_8
    move v0, v1

    move v1, v3

    move-object v3, v5

    goto :goto_4
.end method

.method protected a([Lcom/google/android/exoplayer2/k;[Lcom/google/android/exoplayer2/source/m;[[[I)[Lcom/google/android/exoplayer2/b/f;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 424
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    .line 425
    move/from16 v0, v19

    new-array v0, v0, [Lcom/google/android/exoplayer2/b/f;

    move-object/from16 v20, v0

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/b/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/google/android/exoplayer2/b/c$a;

    .line 428
    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 429
    const/4 v2, 0x2

    aget-object v3, p1, v18

    invoke-interface {v3}, Lcom/google/android/exoplayer2/k;->a()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 430
    aget-object v3, p1, v18

    aget-object v4, p2, v18

    aget-object v5, p3, v18

    move-object/from16 v0, v17

    iget v6, v0, Lcom/google/android/exoplayer2/b/c$a;->e:I

    move-object/from16 v0, v17

    iget v7, v0, Lcom/google/android/exoplayer2/b/c$a;->f:I

    move-object/from16 v0, v17

    iget v8, v0, Lcom/google/android/exoplayer2/b/c$a;->g:I

    move-object/from16 v0, v17

    iget-boolean v9, v0, Lcom/google/android/exoplayer2/b/c$a;->d:Z

    move-object/from16 v0, v17

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/b/c$a;->c:Z

    move-object/from16 v0, v17

    iget v11, v0, Lcom/google/android/exoplayer2/b/c$a;->j:I

    move-object/from16 v0, v17

    iget v12, v0, Lcom/google/android/exoplayer2/b/c$a;->k:I

    move-object/from16 v0, v17

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/b/c$a;->l:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/b/c;->b:Lcom/google/android/exoplayer2/b/f$a;

    move-object/from16 v0, v17

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/b/c$a;->h:Z

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/b/c$a;->i:Z

    move/from16 v16, v0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v16}, Lcom/google/android/exoplayer2/b/c;->a(Lcom/google/android/exoplayer2/k;Lcom/google/android/exoplayer2/source/m;[[IIIIZZIIZLcom/google/android/exoplayer2/b/f$a;ZZ)Lcom/google/android/exoplayer2/b/f;

    move-result-object v2

    aput-object v2, v20, v18

    .line 428
    :cond_0
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto :goto_0

    .line 439
    :cond_1
    const/4 v2, 0x0

    move v8, v2

    :goto_1
    move/from16 v0, v19

    if-ge v8, v0, :cond_2

    .line 440
    aget-object v2, p1, v8

    invoke-interface {v2}, Lcom/google/android/exoplayer2/k;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 455
    aget-object v2, p1, v8

    invoke-interface {v2}, Lcom/google/android/exoplayer2/k;->a()I

    move-result v2

    aget-object v3, p2, v8

    aget-object v4, p3, v8

    move-object/from16 v0, v17

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/b/c$a;->i:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/b/c;->a(ILcom/google/android/exoplayer2/source/m;[[IZ)Lcom/google/android/exoplayer2/b/f;

    move-result-object v2

    aput-object v2, v20, v8

    .line 439
    :goto_2
    :pswitch_0
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_1

    .line 445
    :pswitch_1
    aget-object v2, p2, v8

    aget-object v3, p3, v8

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/exoplayer2/b/c$a;->a:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/b/c$a;->i:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/b/c;->a(Lcom/google/android/exoplayer2/source/m;[[ILjava/lang/String;Z)Lcom/google/android/exoplayer2/b/f;

    move-result-object v2

    aput-object v2, v20, v8

    goto :goto_2

    .line 450
    :pswitch_2
    aget-object v3, p2, v8

    aget-object v4, p3, v8

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/google/android/exoplayer2/b/c$a;->b:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/google/android/exoplayer2/b/c$a;->a:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/b/c$a;->i:Z

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/b/c;->a(Lcom/google/android/exoplayer2/source/m;[[ILjava/lang/String;Ljava/lang/String;Z)Lcom/google/android/exoplayer2/b/f;

    move-result-object v2

    aput-object v2, v20, v8

    goto :goto_2

    .line 461
    :cond_2
    return-object v20

    .line 440
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
