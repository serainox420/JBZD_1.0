.class public final Lcom/google/android/exoplayer2/source/smoothstreaming/d;
.super Ljava/lang/Object;
.source "SsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/g;
.implements Lcom/google/android/exoplayer2/upstream/Loader$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/g;",
        "Lcom/google/android/exoplayer2/upstream/Loader$a",
        "<",
        "Lcom/google/android/exoplayer2/upstream/p",
        "<",
        "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/google/android/exoplayer2/upstream/e$a;

.field private final c:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

.field private final d:I

.field private final e:J

.field private final f:Lcom/google/android/exoplayer2/source/a$a;

.field private final g:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/c;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/android/exoplayer2/source/g$a;

.field private j:Lcom/google/android/exoplayer2/upstream/e;

.field private k:Lcom/google/android/exoplayer2/upstream/Loader;

.field private l:Lcom/google/android/exoplayer2/upstream/o;

.field private m:J

.field private n:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

.field private o:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V
    .locals 11

    .prologue
    .line 154
    new-instance v3, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/smoothstreaming/d;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V
    .locals 10

    .prologue
    .line 131
    const/4 v5, 0x3

    const-wide/16 v6, 0x7530

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/smoothstreaming/d;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V
    .locals 12

    .prologue
    .line 177
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

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/source/smoothstreaming/d;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V

    .line 179
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V
    .locals 3

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->d:Z

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 187
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->n:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    .line 188
    if-nez p2, :cond_3

    const/4 p2, 0x0

    .line 190
    :cond_1
    :goto_1
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->a:Landroid/net/Uri;

    .line 191
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->b:Lcom/google/android/exoplayer2/upstream/e$a;

    .line 192
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->g:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

    .line 193
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->c:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

    .line 194
    iput p6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->d:I

    .line 195
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->e:J

    .line 196
    new-instance v0, Lcom/google/android/exoplayer2/source/a$a;

    invoke-direct {v0, p9, p10}, Lcom/google/android/exoplayer2/source/a$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->f:Lcom/google/android/exoplayer2/source/a$a;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->h:Ljava/util/ArrayList;

    .line 198
    return-void

    .line 186
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 189
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "manifest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Manifest"

    .line 190
    invoke-static {p2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/smoothstreaming/d;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->e()V

    return-void
.end method

.method private c()V
    .locals 12

    .prologue
    .line 285
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->n:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->a(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;)V

    .line 285
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->n:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->d:Z

    if-eqz v0, :cond_5

    .line 290
    const-wide v4, 0x7fffffffffffffffL

    .line 291
    const-wide/high16 v2, -0x8000000000000000L

    .line 292
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->n:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->f:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 293
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->n:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->f:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    aget-object v1, v1, v0

    .line 294
    iget v6, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->k:I

    if-lez v6, :cond_1

    .line 295
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->a(I)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 296
    iget v6, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->k:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->a(I)J

    move-result-wide v6

    iget v8, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->k:I

    add-int/lit8 v8, v8, -0x1

    .line 297
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->b(I)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 296
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 292
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 300
    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v4, v0

    if-nez v0, :cond_3

    .line 301
    new-instance v1, Lcom/google/android/exoplayer2/source/k;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v0, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/exoplayer2/source/k;-><init>(JZ)V

    .line 322
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->i:Lcom/google/android/exoplayer2/source/g$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->n:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/g$a;->a(Lcom/google/android/exoplayer2/n;Ljava/lang/Object;)V

    .line 323
    return-void

    .line 303
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->n:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->h:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v6

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->n:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->h:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_7

    .line 305
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->n:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->h:J

    sub-long v0, v2, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-wide v6, v4

    .line 307
    :goto_3
    sub-long v4, v2, v6

    .line 308
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->e:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/b;->b(J)J

    move-result-wide v0

    sub-long v8, v4, v0

    .line 309
    const-wide/32 v0, 0x4c4b40

    cmp-long v0, v8, v0

    if-gez v0, :cond_4

    .line 313
    const-wide/32 v0, 0x4c4b40

    const-wide/16 v2, 0x2

    div-long v2, v4, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 315
    :cond_4
    new-instance v1, Lcom/google/android/exoplayer2/source/k;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/source/k;-><init>(JJJJZZ)V

    goto :goto_2

    .line 319
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->n:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 320
    :goto_4
    new-instance v1, Lcom/google/android/exoplayer2/source/k;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->n:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->g:J

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/exoplayer2/source/k;-><init>(JZ)V

    goto :goto_2

    .line 319
    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    move-wide v6, v4

    goto :goto_3
.end method

.method private d()V
    .locals 6

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->n:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->d:Z

    if-nez v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->m:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    .line 330
    const-wide/16 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 331
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->o:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/source/smoothstreaming/d$1;

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/d$1;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/d;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 340
    new-instance v0, Lcom/google/android/exoplayer2/upstream/p;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->j:Lcom/google/android/exoplayer2/upstream/e;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->a:Landroid/net/Uri;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->g:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/p;-><init>(Lcom/google/android/exoplayer2/upstream/e;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/p$a;)V

    .line 342
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    iget v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->d:I

    invoke-virtual {v1, v0, p0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$c;Lcom/google/android/exoplayer2/upstream/Loader$a;I)J

    move-result-wide v2

    .line 343
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->f:Lcom/google/android/exoplayer2/source/a$a;

    iget-object v4, v0, Lcom/google/android/exoplayer2/upstream/p;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget v0, v0, Lcom/google/android/exoplayer2/upstream/p;->b:I

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/upstream/g;IJ)V

    .line 344
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$c;JJLjava/io/IOException;)I
    .locals 8

    .prologue
    .line 46
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/p;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->a(Lcom/google/android/exoplayer2/upstream/p;JJLjava/io/IOException;)I

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
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    .prologue
    .line 276
    move-object/from16 v0, p6

    instance-of v13, v0, Lcom/google/android/exoplayer2/ParserException;

    .line 277
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->f:Lcom/google/android/exoplayer2/source/a$a;

    iget-object v4, p1, Lcom/google/android/exoplayer2/upstream/p;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget v5, p1, Lcom/google/android/exoplayer2/upstream/p;->b:I

    .line 278
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/p;->e()J

    move-result-wide v10

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    .line 277
    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/upstream/g;IJJJLjava/io/IOException;Z)V

    .line 279
    if-eqz v13, :cond_0

    const/4 v2, 0x3

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public a(ILcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/f;
    .locals 7

    .prologue
    .line 224
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 225
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->n:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->c:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

    iget v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->d:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->f:Lcom/google/android/exoplayer2/source/a$a;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->l:Lcom/google/android/exoplayer2/upstream/o;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;ILcom/google/android/exoplayer2/source/a$a;Lcom/google/android/exoplayer2/upstream/o;Lcom/google/android/exoplayer2/upstream/b;)V

    .line 227
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    return-object v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->l:Lcom/google/android/exoplayer2/upstream/o;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/o;->d()V

    .line 220
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/d;ZLcom/google/android/exoplayer2/source/g$a;)V
    .locals 2

    .prologue
    .line 204
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->i:Lcom/google/android/exoplayer2/source/g$a;

    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->n:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Lcom/google/android/exoplayer2/upstream/o$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/o$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->l:Lcom/google/android/exoplayer2/upstream/o;

    .line 207
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->c()V

    .line 215
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->b:Lcom/google/android/exoplayer2/upstream/e$a;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/e$a;->a()Lcom/google/android/exoplayer2/upstream/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->j:Lcom/google/android/exoplayer2/upstream/e;

    .line 210
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v1, "Loader:Manifest"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->l:Lcom/google/android/exoplayer2/upstream/o;

    .line 212
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->o:Landroid/os/Handler;

    .line 213
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->e()V

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/source/f;)V
    .locals 1

    .prologue
    .line 233
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->b()V

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 235
    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$c;JJ)V
    .locals 6

    .prologue
    .line 46
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/p;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->a(Lcom/google/android/exoplayer2/upstream/p;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$c;JJZ)V
    .locals 8

    .prologue
    .line 46
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/p;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->a(Lcom/google/android/exoplayer2/upstream/p;JJZ)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/p;JJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/p",
            "<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->f:Lcom/google/android/exoplayer2/source/a$a;

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/p;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget v3, p1, Lcom/google/android/exoplayer2/upstream/p;->b:I

    .line 259
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/p;->e()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 258
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/upstream/g;IJJJ)V

    .line 260
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/p;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->n:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    .line 261
    sub-long v0, p2, p4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->m:J

    .line 262
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->c()V

    .line 263
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->d()V

    .line 264
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/p;JJZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/p",
            "<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;",
            ">;JJZ)V"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->f:Lcom/google/android/exoplayer2/source/a$a;

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/p;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget v3, p1, Lcom/google/android/exoplayer2/upstream/p;->b:I

    .line 270
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/p;->e()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 269
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/upstream/g;IJJJ)V

    .line 271
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 239
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->i:Lcom/google/android/exoplayer2/source/g$a;

    .line 240
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->n:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    .line 241
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->j:Lcom/google/android/exoplayer2/upstream/e;

    .line 242
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->m:J

    .line 243
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->c()V

    .line 245
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->o:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->o:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 249
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;->o:Landroid/os/Handler;

    .line 251
    :cond_1
    return-void
.end method
