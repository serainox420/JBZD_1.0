.class final Lcom/google/android/exoplayer2/source/dash/c$a;
.super Lcom/google/android/exoplayer2/n;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final b:J

.field private final c:J

.field private final d:I

.field private final e:J

.field private final f:J

.field private final g:J

.field private final h:Lcom/google/android/exoplayer2/source/dash/manifest/b;


# direct methods
.method public constructor <init>(JJIJJJLcom/google/android/exoplayer2/source/dash/manifest/b;)V
    .locals 0

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/google/android/exoplayer2/n;-><init>()V

    .line 629
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->b:J

    .line 630
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->c:J

    .line 631
    iput p5, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->d:I

    .line 632
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->e:J

    .line 633
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->f:J

    .line 634
    iput-wide p10, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->g:J

    .line 635
    iput-object p12, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    .line 636
    return-void
.end method

.method private a(J)J
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 681
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->g:J

    .line 682
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/b;->d:Z

    if-nez v2, :cond_1

    move-wide v2, v0

    .line 718
    :cond_0
    :goto_0
    return-wide v2

    .line 685
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_2

    .line 686
    add-long/2addr v0, p1

    .line 687
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->f:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 689
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_2
    move-wide v2, v0

    .line 694
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->e:J

    add-long v4, v0, v2

    .line 695
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->c(I)J

    move-result-wide v0

    move-wide v6, v4

    move-wide v4, v0

    move v0, v8

    .line 696
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    cmp-long v1, v6, v4

    if-ltz v1, :cond_3

    .line 698
    sub-long v4, v6, v4

    .line 699
    add-int/lit8 v6, v0, 0x1

    .line 700
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->c(I)J

    move-result-wide v0

    move-wide v10, v0

    move v0, v6

    move-wide v6, v4

    move-wide v4, v10

    goto :goto_1

    .line 702
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    .line 703
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/d;

    move-result-object v0

    .line 704
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/d;->a(I)I

    move-result v1

    .line 705
    const/4 v9, -0x1

    if-eq v1, v9, :cond_0

    .line 711
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/d;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/a;->c:Ljava/util/List;

    .line 712
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/f;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/f;->e()Lcom/google/android/exoplayer2/source/dash/d;

    move-result-object v0

    .line 713
    if-eqz v0, :cond_0

    invoke-interface {v0, v4, v5}, Lcom/google/android/exoplayer2/source/dash/d;->a(J)I

    move-result v1

    if-eqz v1, :cond_0

    .line 717
    invoke-interface {v0, v6, v7, v4, v5}, Lcom/google/android/exoplayer2/source/dash/d;->a(JJ)I

    move-result v1

    .line 718
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/dash/d;->a(I)J

    move-result-wide v0

    add-long/2addr v0, v2

    sub-long v2, v0, v6

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 672
    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 676
    :cond_0
    :goto_0
    return v0

    .line 675
    :cond_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 676
    iget v2, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->d:I

    if-lt v1, v2, :cond_0

    iget v2, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->d:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/c$a;->c()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->d:I

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public a(ILcom/google/android/exoplayer2/n$a;Z)Lcom/google/android/exoplayer2/n$a;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 645
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a()I

    move-result v0

    invoke-static {p1, v3, v0}, Lcom/google/android/exoplayer2/util/a;->a(III)I

    .line 646
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/d;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/d;->a:Ljava/lang/String;

    .line 647
    :goto_0
    if-eqz p3, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->d:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    .line 648
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a()I

    move-result v2

    invoke-static {p1, v3, v2}, Lcom/google/android/exoplayer2/util/a;->a(III)I

    move-result v2

    add-int/2addr v0, v2

    .line 647
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->c(I)J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    .line 650
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/d;

    move-result-object v0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/manifest/d;->b:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/d;

    move-result-object v0

    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/dash/manifest/d;->b:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/b;->b(J)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->e:J

    sub-long/2addr v6, v8

    move-object v0, p2

    .line 649
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/n$a;->a(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/n$a;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v1, v2

    .line 646
    goto :goto_0
.end method

.method public a(ILcom/google/android/exoplayer2/n$b;ZJ)Lcom/google/android/exoplayer2/n$b;
    .locals 20

    .prologue
    .line 662
    const/4 v4, 0x0

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/google/android/exoplayer2/util/a;->a(III)I

    .line 663
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/c$a;->a(J)J

    move-result-wide v12

    .line 665
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/c$a;->b:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/dash/c$a;->c:J

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/c$a;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget-boolean v11, v4, Lcom/google/android/exoplayer2/source/dash/manifest/b;->d:Z

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/dash/c$a;->f:J

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/c$a;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    .line 667
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/c$a;->e:J

    move-wide/from16 v18, v0

    move-object/from16 v4, p2

    .line 665
    invoke-virtual/range {v4 .. v19}, Lcom/google/android/exoplayer2/n$b;->a(Ljava/lang/Object;JJZZJJIIJ)Lcom/google/android/exoplayer2/n$b;

    move-result-object v4

    return-object v4
.end method

.method public b()I
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a()I

    move-result v0

    return v0
.end method
