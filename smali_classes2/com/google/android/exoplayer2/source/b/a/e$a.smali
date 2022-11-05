.class final Lcom/google/android/exoplayer2/source/b/a/e$a;
.super Ljava/lang/Object;
.source "HlsPlaylistTracker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$a;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/b/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$a",
        "<",
        "Lcom/google/android/exoplayer2/upstream/p",
        "<",
        "Lcom/google/android/exoplayer2/source/b/a/c;",
        ">;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/b/a/e;

.field private final b:Lcom/google/android/exoplayer2/source/b/a/a$a;

.field private final c:Lcom/google/android/exoplayer2/upstream/Loader;

.field private final d:Lcom/google/android/exoplayer2/upstream/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/p",
            "<",
            "Lcom/google/android/exoplayer2/source/b/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/exoplayer2/source/b/a/b;

.field private f:J

.field private g:J

.field private h:J

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/b/a/e;Lcom/google/android/exoplayer2/source/b/a/a$a;J)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 437
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->a:Lcom/google/android/exoplayer2/source/b/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->b:Lcom/google/android/exoplayer2/source/b/a/a$a;

    .line 439
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->g:J

    .line 440
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v1, "HlsPlaylistTracker:MediaPlaylist"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->c:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 441
    new-instance v0, Lcom/google/android/exoplayer2/upstream/p;

    .line 442
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/b/a/e;->a(Lcom/google/android/exoplayer2/source/b/a/e;)Lcom/google/android/exoplayer2/source/b/d;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/google/android/exoplayer2/source/b/d;->a(I)Lcom/google/android/exoplayer2/upstream/e;

    move-result-object v1

    .line 443
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/b/a/e;->b(Lcom/google/android/exoplayer2/source/b/a/e;)Lcom/google/android/exoplayer2/source/b/a/a;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/b/a/a;->n:Ljava/lang/String;

    iget-object v3, p2, Lcom/google/android/exoplayer2/source/b/a/a$a;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/u;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 444
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/b/a/e;->c(Lcom/google/android/exoplayer2/source/b/a/e;)Lcom/google/android/exoplayer2/source/b/a/d;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/android/exoplayer2/upstream/p;-><init>(Lcom/google/android/exoplayer2/upstream/e;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/p$a;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->d:Lcom/google/android/exoplayer2/upstream/p;

    .line 445
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/b/a/e$a;)Lcom/google/android/exoplayer2/upstream/Loader;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->c:Lcom/google/android/exoplayer2/upstream/Loader;

    return-object v0
.end method

.method private a(Lcom/google/android/exoplayer2/source/b/a/b;)V
    .locals 6

    .prologue
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 523
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->e:Lcom/google/android/exoplayer2/source/b/a/b;

    .line 524
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->f:J

    .line 525
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->a:Lcom/google/android/exoplayer2/source/b/a/e;

    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/source/b/a/e;->a(Lcom/google/android/exoplayer2/source/b/a/e;Lcom/google/android/exoplayer2/source/b/a/b;Lcom/google/android/exoplayer2/source/b/a/b;)Lcom/google/android/exoplayer2/source/b/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->e:Lcom/google/android/exoplayer2/source/b/a/b;

    .line 527
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->e:Lcom/google/android/exoplayer2/source/b/a/b;

    if-eq v1, v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->a:Lcom/google/android/exoplayer2/source/b/a/e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->b:Lcom/google/android/exoplayer2/source/b/a/a$a;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->e:Lcom/google/android/exoplayer2/source/b/a/b;

    invoke-static {v0, v1, v4}, Lcom/google/android/exoplayer2/source/b/a/e;->a(Lcom/google/android/exoplayer2/source/b/a/e;Lcom/google/android/exoplayer2/source/b/a/a$a;Lcom/google/android/exoplayer2/source/b/a/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 529
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->e:Lcom/google/android/exoplayer2/source/b/a/b;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/b/a/b;->h:J

    .line 534
    :goto_0
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 536
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->a:Lcom/google/android/exoplayer2/source/b/a/e;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/b/a/e;->h(Lcom/google/android/exoplayer2/source/b/a/e;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/b;->a(J)J

    move-result-wide v0

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->i:Z

    .line 538
    :cond_0
    return-void

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->e:Lcom/google/android/exoplayer2/source/b/a/b;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/b/a/b;->i:Z

    if-nez v0, :cond_2

    .line 532
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->e:Lcom/google/android/exoplayer2/source/b/a/b;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/b/a/b;->h:J

    const-wide/16 v4, 0x2

    div-long/2addr v0, v4

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/b/a/e$a;Lcom/google/android/exoplayer2/source/b/a/b;)V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/b/a/e$a;->a(Lcom/google/android/exoplayer2/source/b/a/b;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/b/a/e$a;)J
    .locals 2

    .prologue
    .line 424
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->h:J

    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/source/b/a/e$a;)Lcom/google/android/exoplayer2/source/b/a/a$a;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->b:Lcom/google/android/exoplayer2/source/b/a/a$a;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/source/b/a/e$a;)J
    .locals 2

    .prologue
    .line 424
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->g:J

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$c;JJLjava/io/IOException;)I
    .locals 8

    .prologue
    .line 424
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/p;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/b/a/e$a;->a(Lcom/google/android/exoplayer2/upstream/p;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/p;JJLjava/io/IOException;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/p",
            "<",
            "Lcom/google/android/exoplayer2/source/b/a/c;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    .prologue
    .line 495
    move-object/from16 v0, p6

    instance-of v13, v0, Lcom/google/android/exoplayer2/ParserException;

    .line 496
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->a:Lcom/google/android/exoplayer2/source/b/a/e;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/b/a/e;->e(Lcom/google/android/exoplayer2/source/b/a/e;)Lcom/google/android/exoplayer2/source/a$a;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/exoplayer2/upstream/p;->a:Lcom/google/android/exoplayer2/upstream/g;

    const/4 v5, 0x4

    .line 497
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/p;->e()J

    move-result-wide v10

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    .line 496
    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/upstream/g;IJJJLjava/io/IOException;Z)V

    .line 498
    if-eqz v13, :cond_0

    .line 499
    const/4 v2, 0x3

    .line 509
    :goto_0
    return v2

    .line 501
    :cond_0
    const/4 v2, 0x1

    .line 502
    invoke-static/range {p6 .. p6}, Lcom/google/android/exoplayer2/source/a/h;->a(Ljava/lang/Exception;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 504
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->h:J

    .line 505
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->a:Lcom/google/android/exoplayer2/source/b/a/e;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->b:Lcom/google/android/exoplayer2/source/b/a/a$a;

    const-wide/32 v4, 0xea60

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/b/a/e;->a(Lcom/google/android/exoplayer2/source/b/a/e;Lcom/google/android/exoplayer2/source/b/a/a$a;J)V

    .line 507
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->a:Lcom/google/android/exoplayer2/source/b/a/e;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/b/a/e;->f(Lcom/google/android/exoplayer2/source/b/a/e;)Lcom/google/android/exoplayer2/source/b/a/a$a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->b:Lcom/google/android/exoplayer2/source/b/a/a$a;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->a:Lcom/google/android/exoplayer2/source/b/a/e;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/b/a/e;->g(Lcom/google/android/exoplayer2/source/b/a/e;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 509
    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    .line 507
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 509
    :cond_3
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public a()Lcom/google/android/exoplayer2/source/b/a/b;
    .locals 2

    .prologue
    .line 448
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->g:J

    .line 449
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->e:Lcom/google/android/exoplayer2/source/b/a/b;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$c;JJ)V
    .locals 6

    .prologue
    .line 424
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/p;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/b/a/e$a;->a(Lcom/google/android/exoplayer2/upstream/p;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$c;JJZ)V
    .locals 8

    .prologue
    .line 424
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/p;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/b/a/e$a;->a(Lcom/google/android/exoplayer2/upstream/p;JJZ)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/p;JJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/p",
            "<",
            "Lcom/google/android/exoplayer2/source/b/a/c;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 480
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/p;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/a/b;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/b/a/e$a;->a(Lcom/google/android/exoplayer2/source/b/a/b;)V

    .line 481
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->a:Lcom/google/android/exoplayer2/source/b/a/e;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/b/a/e;->e(Lcom/google/android/exoplayer2/source/b/a/e;)Lcom/google/android/exoplayer2/source/a$a;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/p;->a:Lcom/google/android/exoplayer2/upstream/g;

    const/4 v3, 0x4

    .line 482
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/p;->e()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 481
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/upstream/g;IJJJ)V

    .line 483
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/p;JJZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/p",
            "<",
            "Lcom/google/android/exoplayer2/source/b/a/c;",
            ">;JJZ)V"
        }
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->a:Lcom/google/android/exoplayer2/source/b/a/e;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/b/a/e;->e(Lcom/google/android/exoplayer2/source/b/a/e;)Lcom/google/android/exoplayer2/source/a$a;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/p;->a:Lcom/google/android/exoplayer2/upstream/g;

    const/4 v3, 0x4

    .line 489
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/p;->e()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 488
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/a$a;->b(Lcom/google/android/exoplayer2/upstream/g;IJJJ)V

    .line 490
    return-void
.end method

.method public b()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 453
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->e:Lcom/google/android/exoplayer2/source/b/a/b;

    if-nez v2, :cond_1

    .line 458
    :cond_0
    :goto_0
    return v0

    .line 456
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 457
    const-wide/16 v4, 0x7530

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->e:Lcom/google/android/exoplayer2/source/b/a/b;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/source/b/a/b;->m:J

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/b;->a(J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 458
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->e:Lcom/google/android/exoplayer2/source/b/a/b;

    iget-boolean v6, v6, Lcom/google/android/exoplayer2/source/b/a/b;->i:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->e:Lcom/google/android/exoplayer2/source/b/a/b;

    iget v6, v6, Lcom/google/android/exoplayer2/source/b/a/b;->a:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->e:Lcom/google/android/exoplayer2/source/b/a/b;

    iget v6, v6, Lcom/google/android/exoplayer2/source/b/a/b;->a:I

    if-eq v6, v1, :cond_2

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->f:J

    add-long/2addr v4, v6

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->c:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->c()V

    .line 466
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 469
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->h:J

    .line 470
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->c:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->c:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->d:Lcom/google/android/exoplayer2/upstream/p;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->a:Lcom/google/android/exoplayer2/source/b/a/e;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/b/a/e;->d(Lcom/google/android/exoplayer2/source/b/a/e;)I

    move-result v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$c;Lcom/google/android/exoplayer2/upstream/Loader$a;I)J

    .line 473
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/a/e$a;->i:Z

    .line 517
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/b/a/e$a;->d()V

    .line 518
    return-void
.end method
