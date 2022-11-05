.class public final Lcom/google/android/exoplayer2/source/dash/c;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/c$b;,
        Lcom/google/android/exoplayer2/source/dash/c$f;,
        Lcom/google/android/exoplayer2/source/dash/c$e;,
        Lcom/google/android/exoplayer2/source/dash/c$c;,
        Lcom/google/android/exoplayer2/source/dash/c$a;,
        Lcom/google/android/exoplayer2/source/dash/c$d;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lcom/google/android/exoplayer2/upstream/e$a;

.field private final c:Lcom/google/android/exoplayer2/source/dash/a$a;

.field private final d:I

.field private final e:J

.field private final f:Lcom/google/android/exoplayer2/source/a$a;

.field private final g:Lcom/google/android/exoplayer2/source/dash/manifest/c;

.field private final h:Lcom/google/android/exoplayer2/source/dash/c$c;

.field private final i:Ljava/lang/Object;

.field private final j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/b;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/lang/Runnable;

.field private final l:Ljava/lang/Runnable;

.field private m:Lcom/google/android/exoplayer2/source/g$a;

.field private n:Lcom/google/android/exoplayer2/upstream/e;

.field private o:Lcom/google/android/exoplayer2/upstream/Loader;

.field private p:Lcom/google/android/exoplayer2/upstream/o;

.field private q:Landroid/net/Uri;

.field private r:J

.field private s:J

.field private t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

.field private u:Landroid/os/Handler;

.field private v:J

.field private w:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/source/dash/a$a;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V
    .locals 11

    .prologue
    .line 181
    new-instance v3, Lcom/google/android/exoplayer2/source/dash/manifest/c;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/source/dash/manifest/c;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/dash/c;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/source/dash/manifest/c;Lcom/google/android/exoplayer2/source/dash/a$a;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/source/dash/a$a;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V
    .locals 10

    .prologue
    .line 156
    const/4 v5, 0x3

    const-wide/16 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/dash/c;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/source/dash/a$a;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/source/dash/manifest/c;Lcom/google/android/exoplayer2/source/dash/a$a;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V
    .locals 12

    .prologue
    .line 206
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/source/dash/c;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/b;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/source/dash/manifest/c;Lcom/google/android/exoplayer2/source/dash/a$a;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V

    .line 208
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/b;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/source/dash/manifest/c;Lcom/google/android/exoplayer2/source/dash/a$a;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    .line 216
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/c;->q:Landroid/net/Uri;

    .line 217
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/c;->b:Lcom/google/android/exoplayer2/upstream/e$a;

    .line 218
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/c;->g:Lcom/google/android/exoplayer2/source/dash/manifest/c;

    .line 219
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/c;->c:Lcom/google/android/exoplayer2/source/dash/a$a;

    .line 220
    iput p6, p0, Lcom/google/android/exoplayer2/source/dash/c;->d:I

    .line 221
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/dash/c;->e:J

    .line 222
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->a:Z

    .line 223
    new-instance v0, Lcom/google/android/exoplayer2/source/a$a;

    invoke-direct {v0, p9, p10}, Lcom/google/android/exoplayer2/source/a$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->f:Lcom/google/android/exoplayer2/source/a$a;

    .line 224
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->i:Ljava/lang/Object;

    .line 225
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->j:Landroid/util/SparseArray;

    .line 226
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->a:Z

    if-eqz v0, :cond_2

    .line 227
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/b;->d:Z

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 228
    iput-object v3, p0, Lcom/google/android/exoplayer2/source/dash/c;->h:Lcom/google/android/exoplayer2/source/dash/c$c;

    .line 229
    iput-object v3, p0, Lcom/google/android/exoplayer2/source/dash/c;->k:Ljava/lang/Runnable;

    .line 230
    iput-object v3, p0, Lcom/google/android/exoplayer2/source/dash/c;->l:Ljava/lang/Runnable;

    .line 246
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 222
    goto :goto_0

    :cond_1
    move v1, v2

    .line 227
    goto :goto_1

    .line 232
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/c$c;

    invoke-direct {v0, p0, v3}, Lcom/google/android/exoplayer2/source/dash/c$c;-><init>(Lcom/google/android/exoplayer2/source/dash/c;Lcom/google/android/exoplayer2/source/dash/c$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->h:Lcom/google/android/exoplayer2/source/dash/c$c;

    .line 233
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/c$1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/dash/c$1;-><init>(Lcom/google/android/exoplayer2/source/dash/c;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->k:Ljava/lang/Runnable;

    .line 239
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/c$2;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/dash/c$2;-><init>(Lcom/google/android/exoplayer2/source/dash/c;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->l:Ljava/lang/Runnable;

    goto :goto_2
.end method

.method private a(J)V
    .locals 1

    .prologue
    .line 440
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->v:J

    .line 441
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/c;->a(Z)V

    .line 442
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/dash/c;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/c;->c()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/dash/c;Z)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/c;->a(Z)V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/source/dash/manifest/k;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 410
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/k;->a:Ljava/lang/String;

    .line 411
    const-string v1, "urn:mpeg:dash:utc:direct:2012"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/c;->b(Lcom/google/android/exoplayer2/source/dash/manifest/k;)V

    .line 422
    :goto_0
    return-void

    .line 413
    :cond_0
    const-string v1, "urn:mpeg:dash:utc:http-iso:2014"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/c$b;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/dash/c$b;-><init>(Lcom/google/android/exoplayer2/source/dash/c$1;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/dash/c;->a(Lcom/google/android/exoplayer2/source/dash/manifest/k;Lcom/google/android/exoplayer2/upstream/p$a;)V

    goto :goto_0

    .line 415
    :cond_1
    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2012"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2014"

    .line 416
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 417
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/c$f;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/dash/c$f;-><init>(Lcom/google/android/exoplayer2/source/dash/c$1;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/dash/c;->a(Lcom/google/android/exoplayer2/source/dash/manifest/k;Lcom/google/android/exoplayer2/upstream/p$a;)V

    goto :goto_0

    .line 420
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported UTC timing scheme"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/c;->a(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method private a(Lcom/google/android/exoplayer2/source/dash/manifest/k;Lcom/google/android/exoplayer2/upstream/p$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/k;",
            "Lcom/google/android/exoplayer2/upstream/p$a",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 435
    new-instance v0, Lcom/google/android/exoplayer2/upstream/p;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->n:Lcom/google/android/exoplayer2/upstream/e;

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/k;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/google/android/exoplayer2/upstream/p;-><init>(Lcom/google/android/exoplayer2/upstream/e;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/p$a;)V

    new-instance v1, Lcom/google/android/exoplayer2/source/dash/c$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/source/dash/c$e;-><init>(Lcom/google/android/exoplayer2/source/dash/c;Lcom/google/android/exoplayer2/source/dash/c$1;)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/c;->a(Lcom/google/android/exoplayer2/upstream/p;Lcom/google/android/exoplayer2/upstream/Loader$a;I)V

    .line 437
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/upstream/p;Lcom/google/android/exoplayer2/upstream/Loader$a;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/exoplayer2/upstream/p",
            "<TT;>;",
            "Lcom/google/android/exoplayer2/upstream/Loader$a",
            "<",
            "Lcom/google/android/exoplayer2/upstream/p",
            "<TT;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->o:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$c;Lcom/google/android/exoplayer2/upstream/Loader$a;I)J

    move-result-wide v0

    .line 556
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->f:Lcom/google/android/exoplayer2/source/a$a;

    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/p;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget v4, p1, Lcom/google/android/exoplayer2/upstream/p;->b:I

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/upstream/g;IJ)V

    .line 557
    return-void
.end method

.method private a(Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 445
    const-string v0, "DashMediaSource"

    const-string v1, "Failed to resolve UtcTiming element."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/c;->a(Z)V

    .line 448
    return-void
.end method

.method private a(Z)V
    .locals 14

    .prologue
    .line 452
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->j:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 454
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->w:I

    if-lt v2, v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/b;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget v4, p0, Lcom/google/android/exoplayer2/source/dash/c;->w:I

    sub-int/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Lcom/google/android/exoplayer2/source/dash/b;->a(Lcom/google/android/exoplayer2/source/dash/manifest/b;I)V

    .line 452
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 461
    :cond_1
    const/4 v4, 0x0

    .line 462
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 463
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    const/4 v2, 0x0

    .line 464
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->c(I)J

    move-result-wide v2

    .line 463
    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/source/dash/c$d;->a(Lcom/google/android/exoplayer2/source/dash/manifest/d;J)Lcom/google/android/exoplayer2/source/dash/c$d;

    move-result-object v0

    .line 465
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    .line 466
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->c(I)J

    move-result-wide v2

    .line 465
    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/source/dash/c$d;->a(Lcom/google/android/exoplayer2/source/dash/manifest/d;J)Lcom/google/android/exoplayer2/source/dash/c$d;

    move-result-object v6

    .line 468
    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/c$d;->b:J

    .line 469
    iget-wide v2, v6, Lcom/google/android/exoplayer2/source/dash/c$d;->c:J

    .line 470
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget-boolean v7, v7, Lcom/google/android/exoplayer2/source/dash/manifest/b;->d:Z

    if-eqz v7, :cond_b

    iget-boolean v6, v6, Lcom/google/android/exoplayer2/source/dash/c$d;->a:Z

    if-nez v6, :cond_b

    .line 473
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/c;->e()J

    move-result-wide v6

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget-wide v8, v4, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a:J

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/b;->b(J)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 474
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    .line 475
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/d;

    move-result-object v4

    iget-wide v8, v4, Lcom/google/android/exoplayer2/source/dash/manifest/d;->b:J

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/b;->b(J)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 476
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 477
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget-wide v6, v4, Lcom/google/android/exoplayer2/source/dash/manifest/b;->f:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v6, v8

    if-eqz v4, :cond_3

    .line 478
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget-wide v6, v4, Lcom/google/android/exoplayer2/source/dash/manifest/b;->f:J

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/b;->b(J)J

    move-result-wide v6

    .line 479
    sub-long v6, v2, v6

    move v4, v5

    .line 481
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    if-lez v4, :cond_2

    .line 482
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->c(I)J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_1

    .line 484
    :cond_2
    if-nez v4, :cond_4

    .line 485
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 492
    :cond_3
    :goto_2
    const/4 v4, 0x1

    move-wide v6, v0

    move v13, v4

    move-wide v0, v2

    .line 494
    :goto_3
    sub-long v8, v0, v6

    .line 495
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    .line 496
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->c(I)J

    move-result-wide v2

    add-long/2addr v8, v2

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 489
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->c(I)J

    move-result-wide v0

    goto :goto_2

    .line 498
    :cond_5
    const-wide/16 v10, 0x0

    .line 499
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/b;->d:Z

    if-eqz v0, :cond_7

    .line 500
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->e:J

    .line 501
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_6

    .line 502
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/b;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/b;->g:J

    .line 506
    :cond_6
    :goto_5
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/b;->b(J)J

    move-result-wide v0

    sub-long v10, v8, v0

    .line 507
    const-wide/32 v0, 0x4c4b40

    cmp-long v0, v10, v0

    if-gez v0, :cond_7

    .line 511
    const-wide/32 v0, 0x4c4b40

    const-wide/16 v2, 0x2

    div-long v2, v8, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 515
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    const/4 v3, 0x0

    .line 516
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/d;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/d;->b:J

    add-long/2addr v0, v2

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/b;->a(J)J

    move-result-wide v2

    add-long v3, v0, v2

    .line 517
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/c$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a:J

    iget v5, p0, Lcom/google/android/exoplayer2/source/dash/c;->w:I

    iget-object v12, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/dash/c$a;-><init>(JJIJJJLcom/google/android/exoplayer2/source/dash/manifest/b;)V

    .line 520
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->m:Lcom/google/android/exoplayer2/source/g$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/source/g$a;->a(Lcom/google/android/exoplayer2/n;Ljava/lang/Object;)V

    .line 522
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->a:Z

    if-nez v0, :cond_9

    .line 524
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->u:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 526
    if-eqz v13, :cond_8

    .line 527
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->u:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 530
    :cond_8
    if-eqz p1, :cond_9

    .line 531
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/c;->d()V

    .line 534
    :cond_9
    return-void

    .line 502
    :cond_a
    const-wide/16 v0, 0x7530

    goto :goto_5

    :cond_b
    move-wide v6, v0

    move v13, v4

    move-wide v0, v2

    goto/16 :goto_3
.end method

.method private b(Lcom/google/android/exoplayer2/source/dash/manifest/k;)V
    .locals 4

    .prologue
    .line 426
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/k;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->f(Ljava/lang/String;)J

    move-result-wide v0

    .line 427
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->s:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/c;->a(J)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/c;->a(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 402
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->q:Landroid/net/Uri;

    .line 404
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    new-instance v1, Lcom/google/android/exoplayer2/upstream/p;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->n:Lcom/google/android/exoplayer2/upstream/e;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/c;->g:Lcom/google/android/exoplayer2/source/dash/manifest/c;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/exoplayer2/upstream/p;-><init>(Lcom/google/android/exoplayer2/upstream/e;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/p$a;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->h:Lcom/google/android/exoplayer2/source/dash/c$c;

    iget v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->d:I

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/exoplayer2/source/dash/c;->a(Lcom/google/android/exoplayer2/upstream/p;Lcom/google/android/exoplayer2/upstream/Loader$a;I)V

    .line 407
    return-void

    .line 404
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private d()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 537
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/b;->d:Z

    if-nez v0, :cond_0

    .line 551
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/b;->e:J

    .line 541
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 546
    const-wide/16 v0, 0x1388

    .line 548
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->r:J

    add-long/2addr v0, v2

    .line 549
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 550
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->u:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/c;->k:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private e()J
    .locals 4

    .prologue
    .line 560
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->v:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 561
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->v:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/b;->b(J)J

    move-result-wide v0

    .line 563
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/b;->b(J)J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/google/android/exoplayer2/upstream/p;JJLjava/io/IOException;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/p",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/b;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    .prologue
    .line 371
    move-object/from16 v0, p6

    instance-of v13, v0, Lcom/google/android/exoplayer2/ParserException;

    .line 372
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/c;->f:Lcom/google/android/exoplayer2/source/a$a;

    iget-object v4, p1, Lcom/google/android/exoplayer2/upstream/p;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget v5, p1, Lcom/google/android/exoplayer2/upstream/p;->b:I

    .line 373
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/p;->e()J

    move-result-wide v10

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    .line 372
    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/upstream/g;IJJJLjava/io/IOException;Z)V

    .line 374
    if-eqz v13, :cond_0

    const/4 v2, 0x3

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public a(ILcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/f;
    .locals 12

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->f:Lcom/google/android/exoplayer2/source/a$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    .line 284
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/d;

    move-result-object v1

    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/d;->b:J

    .line 283
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/source/a$a;->a(J)Lcom/google/android/exoplayer2/source/a$a;

    move-result-object v7

    .line 285
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/b;

    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->w:I

    add-int v2, v0, p1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/c;->c:Lcom/google/android/exoplayer2/source/dash/a$a;

    iget v6, p0, Lcom/google/android/exoplayer2/source/dash/c;->d:I

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/dash/c;->v:J

    iget-object v10, p0, Lcom/google/android/exoplayer2/source/dash/c;->p:Lcom/google/android/exoplayer2/upstream/o;

    move v4, p1

    move-object v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/source/dash/b;-><init>(ILcom/google/android/exoplayer2/source/dash/manifest/b;ILcom/google/android/exoplayer2/source/dash/a$a;ILcom/google/android/exoplayer2/source/a$a;JLcom/google/android/exoplayer2/upstream/o;Lcom/google/android/exoplayer2/upstream/b;)V

    .line 288
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->j:Landroid/util/SparseArray;

    iget v2, v1, Lcom/google/android/exoplayer2/source/dash/b;->a:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    return-object v1
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->p:Lcom/google/android/exoplayer2/upstream/o;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/o;->d()V

    .line 279
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/d;ZLcom/google/android/exoplayer2/source/g$a;)V
    .locals 2

    .prologue
    .line 263
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/c;->m:Lcom/google/android/exoplayer2/source/g$a;

    .line 264
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->a:Z

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Lcom/google/android/exoplayer2/upstream/o$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/o$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->p:Lcom/google/android/exoplayer2/upstream/o;

    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/c;->a(Z)V

    .line 274
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->b:Lcom/google/android/exoplayer2/upstream/e$a;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/e$a;->a()Lcom/google/android/exoplayer2/upstream/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->n:Lcom/google/android/exoplayer2/upstream/e;

    .line 269
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v1, "Loader:DashMediaSource"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->o:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 270
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->o:Lcom/google/android/exoplayer2/upstream/Loader;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->p:Lcom/google/android/exoplayer2/upstream/o;

    .line 271
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->u:Landroid/os/Handler;

    .line 272
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/c;->c()V

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/source/f;)V
    .locals 2

    .prologue
    .line 294
    check-cast p1, Lcom/google/android/exoplayer2/source/dash/b;

    .line 295
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/dash/b;->b()V

    .line 296
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->j:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/exoplayer2/source/dash/b;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 297
    return-void
.end method

.method a(Lcom/google/android/exoplayer2/upstream/p;JJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/p",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/b;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->f:Lcom/google/android/exoplayer2/source/a$a;

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/p;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget v3, p1, Lcom/google/android/exoplayer2/upstream/p;->b:I

    .line 323
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/p;->e()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 322
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/upstream/g;IJJJ)V

    .line 324
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/p;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/b;

    .line 326
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 327
    :goto_0
    const/4 v2, 0x0

    .line 328
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/d;

    move-result-object v3

    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/dash/manifest/d;->b:J

    .line 329
    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    .line 330
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/d;

    move-result-object v3

    iget-wide v6, v3, Lcom/google/android/exoplayer2/source/dash/manifest/d;->b:J

    cmp-long v3, v6, v4

    if-gez v3, :cond_1

    .line 331
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a()I

    move-result v1

    goto :goto_0

    .line 338
    :cond_1
    sub-int v3, v1, v2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 339
    const-string v0, "DashMediaSource"

    const-string v1, "Out of sync manifest"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/c;->d()V

    .line 367
    :goto_2
    return-void

    .line 344
    :cond_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    .line 345
    sub-long v4, p2, p4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/c;->r:J

    .line 346
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/dash/c;->s:J

    .line 347
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/b;->i:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 348
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/c;->i:Ljava/lang/Object;

    monitor-enter v3

    .line 351
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/p;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/g;->a:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/c;->q:Landroid/net/Uri;

    if-ne v0, v4, :cond_3

    .line 352
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/b;->i:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->q:Landroid/net/Uri;

    .line 354
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :cond_4
    if-nez v1, :cond_6

    .line 358
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/b;->h:Lcom/google/android/exoplayer2/source/dash/manifest/k;

    if-eqz v0, :cond_5

    .line 359
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/b;->h:Lcom/google/android/exoplayer2/source/dash/manifest/k;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/c;->a(Lcom/google/android/exoplayer2/source/dash/manifest/k;)V

    goto :goto_2

    .line 354
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 361
    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/c;->a(Z)V

    goto :goto_2

    .line 364
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->w:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->w:I

    .line 365
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/c;->a(Z)V

    goto :goto_2
.end method

.method b(Lcom/google/android/exoplayer2/upstream/p;JJLjava/io/IOException;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/p",
            "<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/c;->f:Lcom/google/android/exoplayer2/source/a$a;

    iget-object v4, p1, Lcom/google/android/exoplayer2/upstream/p;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget v5, p1, Lcom/google/android/exoplayer2/upstream/p;->b:I

    .line 387
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/p;->e()J

    move-result-wide v10

    const/4 v13, 0x1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    .line 386
    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/upstream/g;IJJJLjava/io/IOException;Z)V

    .line 388
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/c;->a(Ljava/io/IOException;)V

    .line 389
    const/4 v2, 0x2

    return v2
.end method

.method public b()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 301
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->n:Lcom/google/android/exoplayer2/upstream/e;

    .line 302
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->p:Lcom/google/android/exoplayer2/upstream/o;

    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->o:Lcom/google/android/exoplayer2/upstream/Loader;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->o:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->c()V

    .line 305
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->o:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 307
    :cond_0
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->r:J

    .line 308
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->s:J

    .line 309
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    .line 310
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->u:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->u:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 312
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->u:Landroid/os/Handler;

    .line 314
    :cond_1
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->v:J

    .line 315
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->j:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 316
    return-void
.end method

.method b(Lcom/google/android/exoplayer2/upstream/p;JJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/p",
            "<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 379
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->f:Lcom/google/android/exoplayer2/source/a$a;

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/p;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget v3, p1, Lcom/google/android/exoplayer2/upstream/p;->b:I

    .line 380
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/p;->e()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 379
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/upstream/g;IJJJ)V

    .line 381
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/p;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/c;->a(J)V

    .line 382
    return-void
.end method

.method c(Lcom/google/android/exoplayer2/upstream/p;JJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/p",
            "<*>;JJ)V"
        }
    .end annotation

    .prologue
    .line 394
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->f:Lcom/google/android/exoplayer2/source/a$a;

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/p;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget v3, p1, Lcom/google/android/exoplayer2/upstream/p;->b:I

    .line 395
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/p;->e()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 394
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/a$a;->b(Lcom/google/android/exoplayer2/upstream/g;IJJJ)V

    .line 396
    return-void
.end method
