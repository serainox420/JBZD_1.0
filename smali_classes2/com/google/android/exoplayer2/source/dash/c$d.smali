.class final Lcom/google/android/exoplayer2/source/dash/c$d;
.super Ljava/lang/Object;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field public final a:Z

.field public final b:J

.field public final c:J


# direct methods
.method private constructor <init>(ZJJ)V
    .locals 0

    .prologue
    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/dash/c$d;->a:Z

    .line 609
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/dash/c$d;->b:J

    .line 610
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/dash/c$d;->c:J

    .line 611
    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/source/dash/manifest/d;J)Lcom/google/android/exoplayer2/source/dash/c$d;
    .locals 17

    .prologue
    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/d;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    .line 572
    const-wide/16 v4, 0x0

    .line 573
    const-wide v6, 0x7fffffffffffffffL

    .line 574
    const/4 v3, 0x0

    .line 575
    const/4 v8, 0x0

    .line 576
    const/4 v2, 0x0

    move v9, v2

    :goto_0
    if-ge v9, v11, :cond_2

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/d;->c:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/a;->c:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/f;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/dash/manifest/f;->e()Lcom/google/android/exoplayer2/source/dash/d;

    move-result-object v2

    .line 578
    if-nez v2, :cond_0

    .line 579
    new-instance v2, Lcom/google/android/exoplayer2/source/dash/c$d;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-wide/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/dash/c$d;-><init>(ZJJ)V

    .line 599
    :goto_1
    return-object v2

    .line 581
    :cond_0
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/dash/d;->b()Z

    move-result v10

    or-int/2addr v10, v3

    .line 582
    move-wide/from16 v0, p1

    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer2/source/dash/d;->a(J)I

    move-result v3

    .line 583
    if-nez v3, :cond_1

    .line 584
    const/4 v2, 0x1

    .line 585
    const-wide/16 v4, 0x0

    .line 586
    const-wide/16 v6, 0x0

    .line 576
    :goto_2
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    move v8, v2

    move v3, v10

    goto :goto_0

    .line 587
    :cond_1
    if-nez v8, :cond_3

    .line 588
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/dash/d;->a()I

    move-result v12

    .line 589
    invoke-interface {v2, v12}, Lcom/google/android/exoplayer2/source/dash/d;->a(I)J

    move-result-wide v14

    .line 590
    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 591
    const/4 v13, -0x1

    if-eq v3, v13, :cond_3

    .line 592
    add-int/2addr v3, v12

    add-int/lit8 v3, v3, -0x1

    .line 593
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/dash/d;->a(I)J

    move-result-wide v12

    .line 594
    move-wide/from16 v0, p1

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/exoplayer2/source/dash/d;->a(IJ)J

    move-result-wide v2

    add-long/2addr v2, v12

    .line 595
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move v2, v8

    goto :goto_2

    .line 599
    :cond_2
    new-instance v2, Lcom/google/android/exoplayer2/source/dash/c$d;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/dash/c$d;-><init>(ZJJ)V

    goto :goto_1

    :cond_3
    move v2, v8

    goto :goto_2
.end method
