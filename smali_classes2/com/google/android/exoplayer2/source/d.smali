.class final Lcom/google/android/exoplayer2/source/d;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/d$c;
.implements Lcom/google/android/exoplayer2/extractor/h;
.implements Lcom/google/android/exoplayer2/source/f;
.implements Lcom/google/android/exoplayer2/upstream/Loader$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/d$b;,
        Lcom/google/android/exoplayer2/source/d$a;,
        Lcom/google/android/exoplayer2/source/d$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/extractor/d$c;",
        "Lcom/google/android/exoplayer2/extractor/h;",
        "Lcom/google/android/exoplayer2/source/f;",
        "Lcom/google/android/exoplayer2/upstream/Loader$a",
        "<",
        "Lcom/google/android/exoplayer2/source/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Z

.field private B:J

.field private C:J

.field private D:J

.field private E:I

.field private F:Z

.field private G:Z

.field private final a:Landroid/net/Uri;

.field private final b:Lcom/google/android/exoplayer2/upstream/e;

.field private final c:I

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/google/android/exoplayer2/source/e$a;

.field private final f:Lcom/google/android/exoplayer2/source/g$a;

.field private final g:Lcom/google/android/exoplayer2/upstream/b;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/google/android/exoplayer2/upstream/Loader;

.field private final j:Lcom/google/android/exoplayer2/source/d$b;

.field private final k:Lcom/google/android/exoplayer2/util/e;

.field private final l:Ljava/lang/Runnable;

.field private final m:Ljava/lang/Runnable;

.field private final n:Landroid/os/Handler;

.field private final o:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/extractor/d;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/google/android/exoplayer2/source/f$a;

.field private q:Lcom/google/android/exoplayer2/extractor/m;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:Lcom/google/android/exoplayer2/source/m;

.field private x:J

.field private y:[Z

.field private z:[Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e;[Lcom/google/android/exoplayer2/extractor/f;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/e$a;Lcom/google/android/exoplayer2/source/g$a;Lcom/google/android/exoplayer2/upstream/b;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d;->a:Landroid/net/Uri;

    .line 114
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/d;->b:Lcom/google/android/exoplayer2/upstream/e;

    .line 115
    iput p4, p0, Lcom/google/android/exoplayer2/source/d;->c:I

    .line 116
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/d;->d:Landroid/os/Handler;

    .line 117
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/d;->e:Lcom/google/android/exoplayer2/source/e$a;

    .line 118
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/d;->f:Lcom/google/android/exoplayer2/source/g$a;

    .line 119
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/d;->g:Lcom/google/android/exoplayer2/upstream/b;

    .line 120
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/d;->h:Ljava/lang/String;

    .line 121
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v1, "Loader:ExtractorMediaPeriod"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/d;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 122
    new-instance v0, Lcom/google/android/exoplayer2/source/d$b;

    invoke-direct {v0, p3, p0}, Lcom/google/android/exoplayer2/source/d$b;-><init>([Lcom/google/android/exoplayer2/extractor/f;Lcom/google/android/exoplayer2/extractor/h;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/d;->j:Lcom/google/android/exoplayer2/source/d$b;

    .line 123
    new-instance v0, Lcom/google/android/exoplayer2/util/e;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/d;->k:Lcom/google/android/exoplayer2/util/e;

    .line 124
    new-instance v0, Lcom/google/android/exoplayer2/source/d$1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/d$1;-><init>(Lcom/google/android/exoplayer2/source/d;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/d;->l:Ljava/lang/Runnable;

    .line 130
    new-instance v0, Lcom/google/android/exoplayer2/source/d$2;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/d$2;-><init>(Lcom/google/android/exoplayer2/source/d;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/d;->m:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/d;->n:Landroid/os/Handler;

    .line 140
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/d;->D:J

    .line 141
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    .line 142
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/d;->B:J

    .line 143
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/source/d$a;)V
    .locals 4

    .prologue
    .line 453
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/d;->B:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 454
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/d$a;->a(Lcom/google/android/exoplayer2/source/d$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/d;->B:J

    .line 456
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/d;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/d;->h()V

    return-void
.end method

.method private a(Ljava/io/IOException;)Z
    .locals 1

    .prologue
    .line 529
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    return v0
.end method

.method private b(Lcom/google/android/exoplayer2/source/d$a;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    .line 485
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/d;->B:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->q:Lcom/google/android/exoplayer2/extractor/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->q:Lcom/google/android/exoplayer2/extractor/m;

    .line 486
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/m;->b()J

    move-result-wide v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    iput-wide v6, p0, Lcom/google/android/exoplayer2/source/d;->C:J

    .line 496
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/d;->s:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/d;->u:Z

    .line 497
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v3, v2

    .line 498
    :goto_1
    if-ge v3, v4, :cond_4

    .line 499
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/d;->s:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d;->y:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/d;->a(Z)V

    .line 498
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    move v1, v2

    .line 499
    goto :goto_2

    .line 501
    :cond_4
    invoke-virtual {p1, v6, v7, v6, v7}, Lcom/google/android/exoplayer2/source/d$a;->a(JJ)V

    goto :goto_0
.end method

.method private b(Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->e:Lcom/google/android/exoplayer2/source/e$a;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->d:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/source/d$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/d$4;-><init>(Lcom/google/android/exoplayer2/source/d;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 541
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/d;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/d;->G:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/source/d;)Lcom/google/android/exoplayer2/source/f$a;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->p:Lcom/google/android/exoplayer2/source/f$a;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/source/d;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/source/d;)Lcom/google/android/exoplayer2/source/e$a;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->e:Lcom/google/android/exoplayer2/source/e$a;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/source/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/source/d;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->m:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/source/d;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->n:Landroid/os/Handler;

    return-object v0
.end method

.method private h()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 423
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/d;->G:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/d;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->q:Lcom/google/android/exoplayer2/extractor/m;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/d;->r:Z

    if-nez v0, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v3, v1

    .line 427
    :goto_1
    if-ge v3, v4, :cond_2

    .line 428
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d;->g()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 432
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->k:Lcom/google/android/exoplayer2/util/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e;->b()Z

    .line 433
    new-array v5, v4, [Lcom/google/android/exoplayer2/source/l;

    .line 434
    new-array v0, v4, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/d;->z:[Z

    .line 435
    new-array v0, v4, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/d;->y:[Z

    .line 436
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->q:Lcom/google/android/exoplayer2/extractor/m;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/m;->b()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/source/d;->x:J

    move v3, v1

    .line 437
    :goto_2
    if-ge v3, v4, :cond_5

    .line 438
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d;->g()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 439
    new-instance v6, Lcom/google/android/exoplayer2/source/l;

    new-array v7, v2, [Lcom/google/android/exoplayer2/Format;

    aput-object v0, v7, v1

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/source/l;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v6, v5, v3

    .line 440
    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 441
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/i;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v2

    .line 442
    :goto_3
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/d;->z:[Z

    aput-boolean v0, v6, v3

    .line 443
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/source/d;->A:Z

    or-int/2addr v0, v6

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/d;->A:Z

    .line 437
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_4
    move v0, v1

    .line 441
    goto :goto_3

    .line 445
    :cond_5
    new-instance v0, Lcom/google/android/exoplayer2/source/m;

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/source/m;-><init>([Lcom/google/android/exoplayer2/source/l;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/d;->w:Lcom/google/android/exoplayer2/source/m;

    .line 446
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/d;->s:Z

    .line 447
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->f:Lcom/google/android/exoplayer2/source/g$a;

    new-instance v1, Lcom/google/android/exoplayer2/source/k;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/d;->x:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/d;->q:Lcom/google/android/exoplayer2/extractor/m;

    .line 448
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/m;->a()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/k;-><init>(JZ)V

    const/4 v2, 0x0

    .line 447
    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/g$a;->a(Lcom/google/android/exoplayer2/n;Ljava/lang/Object;)V

    .line 449
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->p:Lcom/google/android/exoplayer2/source/f$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/f$a;->a(Lcom/google/android/exoplayer2/source/f;)V

    goto/16 :goto_0
.end method

.method private i()V
    .locals 8

    .prologue
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 459
    new-instance v0, Lcom/google/android/exoplayer2/source/d$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/d;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/d;->b:Lcom/google/android/exoplayer2/upstream/e;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/d;->j:Lcom/google/android/exoplayer2/source/d$b;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/d;->k:Lcom/google/android/exoplayer2/util/e;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/d$a;-><init>(Lcom/google/android/exoplayer2/source/d;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/source/d$b;Lcom/google/android/exoplayer2/util/e;)V

    .line 461
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/d;->s:Z

    if-eqz v1, :cond_1

    .line 462
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/d;->l()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 463
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/d;->x:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/d;->D:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/d;->x:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/d;->F:Z

    .line 465
    iput-wide v6, p0, Lcom/google/android/exoplayer2/source/d;->D:J

    .line 482
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d;->q:Lcom/google/android/exoplayer2/extractor/m;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/d;->D:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/m;->b(J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/d;->D:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/d$a;->a(JJ)V

    .line 469
    iput-wide v6, p0, Lcom/google/android/exoplayer2/source/d;->D:J

    .line 471
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/d;->j()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/source/d;->E:I

    .line 473
    iget v1, p0, Lcom/google/android/exoplayer2/source/d;->c:I

    .line 474
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 476
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/d;->s:Z

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/d;->B:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d;->q:Lcom/google/android/exoplayer2/extractor/m;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d;->q:Lcom/google/android/exoplayer2/extractor/m;

    .line 477
    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/m;->b()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    :cond_2
    const/4 v1, 0x3

    .line 481
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/d;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v2, v0, p0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$c;Lcom/google/android/exoplayer2/upstream/Loader$a;I)J

    goto :goto_0

    .line 477
    :cond_4
    const/4 v1, 0x6

    goto :goto_1
.end method

.method private j()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 506
    .line 507
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v1, v0

    move v2, v0

    .line 508
    :goto_0
    if-ge v1, v3, :cond_0

    .line 509
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d;->b()I

    move-result v0

    add-int/2addr v2, v0

    .line 508
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 511
    :cond_0
    return v2
.end method

.method private k()J
    .locals 8

    .prologue
    .line 515
    const-wide/high16 v2, -0x8000000000000000L

    .line 516
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 517
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 518
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    .line 519
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d;->h()J

    move-result-wide v6

    .line 518
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 517
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 521
    :cond_0
    return-wide v2
.end method

.method private l()Z
    .locals 4

    .prologue
    .line 525
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/d;->D:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(ILcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/a/e;Z)I
    .locals 8

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/d;->u:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/d;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    :cond_0
    const/4 v0, -0x3

    .line 339
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/d;

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/d;->F:Z

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/d;->C:J

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/d;->a(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/a/e;ZZJ)I

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/source/d$a;JJLjava/io/IOException;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 376
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/d;->a(Lcom/google/android/exoplayer2/source/d$a;)V

    .line 377
    invoke-direct {p0, p6}, Lcom/google/android/exoplayer2/source/d;->b(Ljava/io/IOException;)V

    .line 378
    invoke-direct {p0, p6}, Lcom/google/android/exoplayer2/source/d;->a(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    const/4 v1, 0x3

    .line 385
    :cond_0
    :goto_0
    return v1

    .line 381
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/d;->j()I

    move-result v0

    .line 382
    iget v3, p0, Lcom/google/android/exoplayer2/source/d;->E:I

    if-le v0, v3, :cond_2

    move v0, v1

    .line 383
    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/d;->b(Lcom/google/android/exoplayer2/source/d$a;)V

    .line 384
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/d;->j()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/source/d;->E:I

    .line 385
    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 382
    goto :goto_1
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$c;JJLjava/io/IOException;)I
    .locals 8

    .prologue
    .line 50
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/d$a;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/d;->a(Lcom/google/android/exoplayer2/source/d$a;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public a([Lcom/google/android/exoplayer2/b/f;[Z[Lcom/google/android/exoplayer2/source/i;[ZJ)J
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/d;->s:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    move v1, v2

    .line 183
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_2

    .line 184
    aget-object v0, p3, v1

    if-eqz v0, :cond_1

    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    aget-boolean v0, p2, v1

    if-nez v0, :cond_1

    .line 185
    :cond_0
    aget-object v0, p3, v1

    check-cast v0, Lcom/google/android/exoplayer2/source/d$c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/d$c;->a(Lcom/google/android/exoplayer2/source/d$c;)I

    move-result v0

    .line 186
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/d;->y:[Z

    aget-boolean v4, v4, v0

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 187
    iget v4, p0, Lcom/google/android/exoplayer2/source/d;->v:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/android/exoplayer2/source/d;->v:I

    .line 188
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/d;->y:[Z

    aput-boolean v2, v4, v0

    .line 189
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d;->c()V

    .line 190
    const/4 v0, 0x0

    aput-object v0, p3, v1

    .line 183
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    move v1, v2

    .line 195
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_7

    .line 196
    aget-object v4, p3, v0

    if-nez v4, :cond_3

    aget-object v4, p1, v0

    if-eqz v4, :cond_3

    .line 197
    aget-object v4, p1, v0

    .line 198
    invoke-interface {v4}, Lcom/google/android/exoplayer2/b/f;->e()I

    move-result v1

    if-ne v1, v3, :cond_4

    move v1, v3

    :goto_2
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 199
    invoke-interface {v4, v2}, Lcom/google/android/exoplayer2/b/f;->b(I)I

    move-result v1

    if-nez v1, :cond_5

    move v1, v3

    :goto_3
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 200
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d;->w:Lcom/google/android/exoplayer2/source/m;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/b/f;->d()Lcom/google/android/exoplayer2/source/l;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/source/m;->a(Lcom/google/android/exoplayer2/source/l;)I

    move-result v4

    .line 201
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d;->y:[Z

    aget-boolean v1, v1, v4

    if-nez v1, :cond_6

    move v1, v3

    :goto_4
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 202
    iget v1, p0, Lcom/google/android/exoplayer2/source/d;->v:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/source/d;->v:I

    .line 203
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d;->y:[Z

    aput-boolean v3, v1, v4

    .line 204
    new-instance v1, Lcom/google/android/exoplayer2/source/d$c;

    invoke-direct {v1, p0, v4}, Lcom/google/android/exoplayer2/source/d$c;-><init>(Lcom/google/android/exoplayer2/source/d;I)V

    aput-object v1, p3, v0

    .line 205
    aput-boolean v3, p4, v0

    move v1, v3

    .line 195
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v1, v2

    .line 198
    goto :goto_2

    :cond_5
    move v1, v2

    .line 199
    goto :goto_3

    :cond_6
    move v1, v2

    .line 201
    goto :goto_4

    .line 209
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/d;->t:Z

    if-nez v0, :cond_9

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v4, v2

    .line 213
    :goto_5
    if-ge v4, v5, :cond_9

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->y:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_8

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d;->c()V

    .line 213
    :cond_8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_5

    .line 219
    :cond_9
    iget v0, p0, Lcom/google/android/exoplayer2/source/d;->v:I

    if-nez v0, :cond_b

    .line 220
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/d;->u:Z

    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->b()V

    .line 233
    :cond_a
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/source/d;->t:Z

    .line 234
    return-wide p5

    .line 224
    :cond_b
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/d;->t:Z

    if-eqz v0, :cond_d

    if-eqz v1, :cond_a

    .line 225
    :goto_6
    invoke-virtual {p0, p5, p6}, Lcom/google/android/exoplayer2/source/d;->c(J)J

    move-result-wide p5

    .line 227
    :goto_7
    array-length v0, p3

    if-ge v2, v0, :cond_a

    .line 228
    aget-object v0, p3, v2

    if-eqz v0, :cond_c

    .line 229
    aput-boolean v3, p4, v2

    .line 227
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 224
    :cond_d
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-eqz v0, :cond_a

    goto :goto_6
.end method

.method public a(II)Lcom/google/android/exoplayer2/extractor/n;
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    .line 393
    if-nez v0, :cond_0

    .line 394
    new-instance v0, Lcom/google/android/exoplayer2/extractor/d;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d;->g:Lcom/google/android/exoplayer2/upstream/b;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/d;-><init>(Lcom/google/android/exoplayer2/upstream/b;)V

    .line 395
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/extractor/d;->a(Lcom/google/android/exoplayer2/extractor/d$c;)V

    .line 396
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 398
    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/d;->r:Z

    .line 404
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 405
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 418
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 2

    .prologue
    .line 409
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d;->q:Lcom/google/android/exoplayer2/extractor/m;

    .line 410
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 411
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/d$a;JJ)V
    .locals 5

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/d;->a(Lcom/google/android/exoplayer2/source/d$a;)V

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/d;->F:Z

    .line 350
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/d;->x:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/d;->k()J

    move-result-wide v0

    .line 352
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/d;->x:J

    .line 354
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->f:Lcom/google/android/exoplayer2/source/g$a;

    new-instance v1, Lcom/google/android/exoplayer2/source/k;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/d;->x:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/d;->q:Lcom/google/android/exoplayer2/extractor/m;

    .line 355
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/m;->a()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/k;-><init>(JZ)V

    const/4 v2, 0x0

    .line 354
    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/g$a;->a(Lcom/google/android/exoplayer2/n;Ljava/lang/Object;)V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->p:Lcom/google/android/exoplayer2/source/f$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/f$a;->a(Lcom/google/android/exoplayer2/source/j;)V

    .line 358
    return-void

    .line 352
    :cond_1
    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/source/d$a;JJZ)V
    .locals 4

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/d;->a(Lcom/google/android/exoplayer2/source/d$a;)V

    .line 364
    if-nez p6, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/source/d;->v:I

    if-lez v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 366
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 367
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/d;->y:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/d;->a(Z)V

    .line 366
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->p:Lcom/google/android/exoplayer2/source/f$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/f$a;->a(Lcom/google/android/exoplayer2/source/j;)V

    .line 371
    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/f$a;)V
    .locals 1

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d;->p:Lcom/google/android/exoplayer2/source/f$a;

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->k:Lcom/google/android/exoplayer2/util/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e;->a()Z

    .line 165
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/d;->i()V

    .line 166
    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$c;JJ)V
    .locals 6

    .prologue
    .line 50
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/d$a;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/d;->a(Lcom/google/android/exoplayer2/source/d$a;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$c;JJZ)V
    .locals 8

    .prologue
    .line 50
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/d$a;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/d;->a(Lcom/google/android/exoplayer2/source/d$a;JJZ)V

    return-void
.end method

.method a(I)Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/d;->F:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/d;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(J)Z
    .locals 2

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/d;->F:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/d;->s:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/exoplayer2/source/d;->v:I

    if-nez v0, :cond_2

    .line 245
    :cond_0
    const/4 v0, 0x0

    .line 252
    :cond_1
    :goto_0
    return v0

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->k:Lcom/google/android/exoplayer2/util/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e;->a()Z

    move-result v0

    .line 248
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/d;->i()V

    .line 250
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->j:Lcom/google/android/exoplayer2/source/d$b;

    .line 147
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    new-instance v2, Lcom/google/android/exoplayer2/source/d$3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer2/source/d$3;-><init>(Lcom/google/android/exoplayer2/source/d;Lcom/google/android/exoplayer2/source/d$b;)V

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Ljava/lang/Runnable;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->n:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/d;->G:Z

    .line 159
    return-void
.end method

.method public b(J)V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public b_()J
    .locals 2

    .prologue
    .line 257
    iget v0, p0, Lcom/google/android/exoplayer2/source/d;->v:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/d;->f()J

    move-result-wide v0

    goto :goto_0
.end method

.method public c(J)J
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 297
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->q:Lcom/google/android/exoplayer2/extractor/m;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/m;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/d;->C:J

    .line 299
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 301
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/d;->l()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v2, v1

    .line 302
    :goto_2
    if-eqz v0, :cond_3

    if-ge v2, v3, :cond_3

    .line 303
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/d;->y:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_0

    .line 304
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/d;->a(J)Z

    move-result v0

    .line 302
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 297
    :cond_1
    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 301
    goto :goto_1

    .line 308
    :cond_3
    if-nez v0, :cond_4

    .line 309
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/d;->D:J

    .line 310
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/d;->F:Z

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 312
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->b()V

    .line 319
    :cond_4
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/d;->u:Z

    .line 320
    return-wide p1

    :cond_5
    move v2, v1

    .line 314
    :goto_3
    if-ge v2, v3, :cond_4

    .line 315
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/d;->y:[Z

    aget-boolean v4, v4, v2

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/extractor/d;->a(Z)V

    .line 314
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3
.end method

.method public c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/d;->g()V

    .line 171
    return-void
.end method

.method public d()Lcom/google/android/exoplayer2/source/m;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->w:Lcom/google/android/exoplayer2/source/m;

    return-object v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/d;->u:Z

    if-eqz v0, :cond_0

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/d;->u:Z

    .line 264
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/d;->C:J

    .line 266
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method public f()J
    .locals 8

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    .line 271
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/d;->F:Z

    if-eqz v0, :cond_1

    move-wide v0, v4

    .line 290
    :cond_0
    :goto_0
    return-wide v0

    .line 273
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/d;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/d;->D:J

    goto :goto_0

    .line 277
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/d;->A:Z

    if-eqz v0, :cond_4

    .line 279
    const-wide v2, 0x7fffffffffffffffL

    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 281
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v7, :cond_3

    .line 282
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->z:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_5

    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->o:Landroid/util/SparseArray;

    .line 284
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d;->h()J

    move-result-wide v0

    .line 283
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 281
    :goto_2
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move-wide v2, v0

    goto :goto_1

    :cond_3
    move-wide v0, v2

    .line 290
    :goto_3
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/d;->C:J

    goto :goto_0

    .line 288
    :cond_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/d;->k()J

    move-result-wide v0

    goto :goto_3

    :cond_5
    move-wide v0, v2

    goto :goto_2
.end method

.method g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->d()V

    .line 331
    return-void
.end method
