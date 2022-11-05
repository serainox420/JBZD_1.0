.class public final Lcom/google/android/exoplayer2/source/b/a/e;
.super Ljava/lang/Object;
.source "HlsPlaylistTracker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/b/a/e$a;,
        Lcom/google/android/exoplayer2/source/b/a/e$b;,
        Lcom/google/android/exoplayer2/source/b/a/e$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$a",
        "<",
        "Lcom/google/android/exoplayer2/upstream/p",
        "<",
        "Lcom/google/android/exoplayer2/source/b/a/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/google/android/exoplayer2/source/b/d;

.field private final c:Lcom/google/android/exoplayer2/source/b/a/d;

.field private final d:I

.field private final e:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lcom/google/android/exoplayer2/source/b/a/a$a;",
            "Lcom/google/android/exoplayer2/source/b/a/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Handler;

.field private final g:Lcom/google/android/exoplayer2/source/b/a/e$c;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/b/a/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/exoplayer2/upstream/Loader;

.field private final j:Lcom/google/android/exoplayer2/source/a$a;

.field private k:Lcom/google/android/exoplayer2/source/b/a/a;

.field private l:Lcom/google/android/exoplayer2/source/b/a/a$a;

.field private m:Lcom/google/android/exoplayer2/source/b/a/b;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/b/d;Lcom/google/android/exoplayer2/source/a$a;ILcom/google/android/exoplayer2/source/b/a/e$c;)V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b/a/e;->a:Landroid/net/Uri;

    .line 113
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/b/a/e;->b:Lcom/google/android/exoplayer2/source/b/d;

    .line 114
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/b/a/e;->j:Lcom/google/android/exoplayer2/source/a$a;

    .line 115
    iput p4, p0, Lcom/google/android/exoplayer2/source/b/a/e;->d:I

    .line 116
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/b/a/e;->g:Lcom/google/android/exoplayer2/source/b/a/e$c;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->h:Ljava/util/List;

    .line 118
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v1, "HlsPlaylistTracker:MasterPlaylist"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 119
    new-instance v0, Lcom/google/android/exoplayer2/source/b/a/d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/b/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->c:Lcom/google/android/exoplayer2/source/b/a/d;

    .line 120
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->e:Ljava/util/IdentityHashMap;

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->f:Landroid/os/Handler;

    .line 122
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/source/b/a/b;Lcom/google/android/exoplayer2/source/b/a/b;)Lcom/google/android/exoplayer2/source/b/a/b;
    .locals 3

    .prologue
    .line 356
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/b/a/b;->a(Lcom/google/android/exoplayer2/source/b/a/b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    iget-boolean v0, p2, Lcom/google/android/exoplayer2/source/b/a/b;->i:Z

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/b/a/b;->b()Lcom/google/android/exoplayer2/source/b/a/b;

    move-result-object p1

    .line 369
    :cond_0
    :goto_0
    return-object p1

    .line 367
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/b/a/e;->b(Lcom/google/android/exoplayer2/source/b/a/b;Lcom/google/android/exoplayer2/source/b/a/b;)J

    move-result-wide v0

    .line 368
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/b/a/e;->c(Lcom/google/android/exoplayer2/source/b/a/b;Lcom/google/android/exoplayer2/source/b/a/b;)I

    move-result v2

    .line 369
    invoke-virtual {p2, v0, v1, v2}, Lcom/google/android/exoplayer2/source/b/a/b;->a(JI)Lcom/google/android/exoplayer2/source/b/a/b;

    move-result-object p1

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/b/a/e;Lcom/google/android/exoplayer2/source/b/a/b;Lcom/google/android/exoplayer2/source/b/a/b;)Lcom/google/android/exoplayer2/source/b/a/b;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/b/a/e;->a(Lcom/google/android/exoplayer2/source/b/a/b;Lcom/google/android/exoplayer2/source/b/a/b;)Lcom/google/android/exoplayer2/source/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/b/a/e;)Lcom/google/android/exoplayer2/source/b/d;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->b:Lcom/google/android/exoplayer2/source/b/d;

    return-object v0
.end method

.method private a(Lcom/google/android/exoplayer2/source/b/a/a$a;J)V
    .locals 4

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 349
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 350
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/a/e$b;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/b/a/e$b;->a(Lcom/google/android/exoplayer2/source/b/a/a$a;J)V

    .line 349
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 352
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/b/a/e;Lcom/google/android/exoplayer2/source/b/a/a$a;J)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/b/a/e;->a(Lcom/google/android/exoplayer2/source/b/a/a$a;J)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/b/a/a$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 315
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 316
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 317
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/a/a$a;

    .line 318
    new-instance v3, Lcom/google/android/exoplayer2/source/b/a/e$a;

    invoke-direct {v3, p0, v0, v4, v5}, Lcom/google/android/exoplayer2/source/b/a/e$a;-><init>(Lcom/google/android/exoplayer2/source/b/a/e;Lcom/google/android/exoplayer2/source/b/a/a$a;J)V

    .line 319
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/b/a/e;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v6, v0, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 321
    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/source/b/a/a$a;Lcom/google/android/exoplayer2/source/b/a/b;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->l:Lcom/google/android/exoplayer2/source/b/a/a$a;

    if-ne p1, v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->m:Lcom/google/android/exoplayer2/source/b/a/b;

    if-nez v0, :cond_0

    .line 334
    iget-boolean v0, p2, Lcom/google/android/exoplayer2/source/b/a/b;->i:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->n:Z

    .line 336
    :cond_0
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/b/a/e;->m:Lcom/google/android/exoplayer2/source/b/a/b;

    .line 337
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->g:Lcom/google/android/exoplayer2/source/b/a/e$c;

    invoke-interface {v0, p2}, Lcom/google/android/exoplayer2/source/b/a/e$c;->a(Lcom/google/android/exoplayer2/source/b/a/b;)V

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    .line 340
    :goto_1
    if-ge v3, v4, :cond_3

    .line 341
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/a/e$b;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/b/a/e$b;->h()V

    .line 340
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 334
    goto :goto_0

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->l:Lcom/google/android/exoplayer2/source/b/a/a$a;

    if-ne p1, v0, :cond_4

    iget-boolean v0, p2, Lcom/google/android/exoplayer2/source/b/a/b;->i:Z

    if-nez v0, :cond_4

    :goto_2
    return v1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/b/a/e;Lcom/google/android/exoplayer2/source/b/a/a$a;Lcom/google/android/exoplayer2/source/b/a/b;)Z
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/b/a/e;->a(Lcom/google/android/exoplayer2/source/b/a/a$a;Lcom/google/android/exoplayer2/source/b/a/b;)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/google/android/exoplayer2/source/b/a/b;Lcom/google/android/exoplayer2/source/b/a/b;)J
    .locals 5

    .prologue
    .line 374
    iget-boolean v0, p2, Lcom/google/android/exoplayer2/source/b/a/b;->j:Z

    if-eqz v0, :cond_1

    .line 375
    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/b/a/b;->c:J

    .line 390
    :cond_0
    :goto_0
    return-wide v0

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->m:Lcom/google/android/exoplayer2/source/b/a/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->m:Lcom/google/android/exoplayer2/source/b/a/b;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/b/a/b;->c:J

    .line 379
    :goto_1
    if-eqz p1, :cond_0

    .line 382
    iget-object v2, p1, Lcom/google/android/exoplayer2/source/b/a/b;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 383
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/b/a/e;->d(Lcom/google/android/exoplayer2/source/b/a/b;Lcom/google/android/exoplayer2/source/b/a/b;)Lcom/google/android/exoplayer2/source/b/a/b$a;

    move-result-object v3

    .line 384
    if-eqz v3, :cond_3

    .line 385
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/b/a/b;->c:J

    iget-wide v2, v3, Lcom/google/android/exoplayer2/source/b/a/b$a;->d:J

    add-long/2addr v0, v2

    goto :goto_0

    .line 377
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 386
    :cond_3
    iget v3, p2, Lcom/google/android/exoplayer2/source/b/a/b;->f:I

    iget v4, p1, Lcom/google/android/exoplayer2/source/b/a/b;->f:I

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_0

    .line 387
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/b/a/b;->a()J

    move-result-wide v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/b/a/e;)Lcom/google/android/exoplayer2/source/b/a/a;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->k:Lcom/google/android/exoplayer2/source/b/a/a;

    return-object v0
.end method

.method private c(Lcom/google/android/exoplayer2/source/b/a/b;Lcom/google/android/exoplayer2/source/b/a/b;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 396
    iget-boolean v0, p2, Lcom/google/android/exoplayer2/source/b/a/b;->d:Z

    if-eqz v0, :cond_1

    .line 397
    iget v0, p2, Lcom/google/android/exoplayer2/source/b/a/b;->e:I

    .line 411
    :cond_0
    :goto_0
    return v0

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->m:Lcom/google/android/exoplayer2/source/b/a/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->m:Lcom/google/android/exoplayer2/source/b/a/b;

    iget v0, v0, Lcom/google/android/exoplayer2/source/b/a/b;->e:I

    .line 402
    :goto_1
    if-eqz p1, :cond_0

    .line 405
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/b/a/e;->d(Lcom/google/android/exoplayer2/source/b/a/b;Lcom/google/android/exoplayer2/source/b/a/b;)Lcom/google/android/exoplayer2/source/b/a/b$a;

    move-result-object v2

    .line 406
    if-eqz v2, :cond_0

    .line 407
    iget v0, p1, Lcom/google/android/exoplayer2/source/b/a/b;->e:I

    iget v2, v2, Lcom/google/android/exoplayer2/source/b/a/b$a;->c:I

    add-int/2addr v2, v0

    iget-object v0, p2, Lcom/google/android/exoplayer2/source/b/a/b;->l:Ljava/util/List;

    .line 409
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/a/b$a;

    iget v0, v0, Lcom/google/android/exoplayer2/source/b/a/b$a;->c:I

    sub-int v0, v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 400
    goto :goto_1
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/source/b/a/e;)Lcom/google/android/exoplayer2/source/b/a/d;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->c:Lcom/google/android/exoplayer2/source/b/a/d;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/source/b/a/e;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->d:I

    return v0
.end method

.method private static d(Lcom/google/android/exoplayer2/source/b/a/b;Lcom/google/android/exoplayer2/source/b/a/b;)Lcom/google/android/exoplayer2/source/b/a/b$a;
    .locals 3

    .prologue
    .line 416
    iget v0, p1, Lcom/google/android/exoplayer2/source/b/a/b;->f:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/b/a/b;->f:I

    sub-int/2addr v0, v1

    .line 417
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/a/b;->l:Ljava/util/List;

    .line 418
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/a/b$a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Lcom/google/android/exoplayer2/source/b/a/a$a;)V
    .locals 4

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->k:Lcom/google/android/exoplayer2/source/b/a/a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/b/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->m:Lcom/google/android/exoplayer2/source/b/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->m:Lcom/google/android/exoplayer2/source/b/a/b;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/b/a/b;->i:Z

    if-eqz v0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->e:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/a/e;->l:Lcom/google/android/exoplayer2/source/b/a/a$a;

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/a/e$a;

    .line 306
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/b/a/e$a;->d(Lcom/google/android/exoplayer2/source/b/a/e$a;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 307
    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 308
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b/a/e;->l:Lcom/google/android/exoplayer2/source/b/a/a$a;

    .line 309
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->e:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/a/e;->l:Lcom/google/android/exoplayer2/source/b/a/a$a;

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/a/e$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b/a/e$a;->d()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/source/b/a/e;)Lcom/google/android/exoplayer2/source/a$a;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->j:Lcom/google/android/exoplayer2/source/a$a;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/source/b/a/e;)Lcom/google/android/exoplayer2/source/b/a/a$a;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->l:Lcom/google/android/exoplayer2/source/b/a/a$a;

    return-object v0
.end method

.method private f()Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->k:Lcom/google/android/exoplayer2/source/b/a/a;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/b/a/a;->a:Ljava/util/List;

    .line 284
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move v2, v1

    .line 286
    :goto_0
    if-ge v2, v4, :cond_1

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->e:Ljava/util/IdentityHashMap;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/a/e$a;

    .line 288
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/b/a/e$a;->b(Lcom/google/android/exoplayer2/source/b/a/e$a;)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 289
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/b/a/e$a;->c(Lcom/google/android/exoplayer2/source/b/a/e$a;)Lcom/google/android/exoplayer2/source/b/a/a$a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/b/a/e;->l:Lcom/google/android/exoplayer2/source/b/a/a$a;

    .line 290
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b/a/e$a;->d()V

    .line 291
    const/4 v0, 0x1

    .line 294
    :goto_1
    return v0

    .line 286
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 294
    goto :goto_1
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/source/b/a/e;)Z
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/b/a/e;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/source/b/a/e;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$c;JJLjava/io/IOException;)I
    .locals 8

    .prologue
    .line 41
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/p;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/b/a/e;->a(Lcom/google/android/exoplayer2/upstream/p;JJLjava/io/IOException;)I

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
    .line 274
    move-object/from16 v0, p6

    instance-of v13, v0, Lcom/google/android/exoplayer2/ParserException;

    .line 275
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/b/a/e;->j:Lcom/google/android/exoplayer2/source/a$a;

    iget-object v4, p1, Lcom/google/android/exoplayer2/upstream/p;->a:Lcom/google/android/exoplayer2/upstream/g;

    const/4 v5, 0x4

    .line 276
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/p;->e()J

    move-result-wide v10

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    .line 275
    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/upstream/g;IJJJLjava/io/IOException;Z)V

    .line 277
    if-eqz v13, :cond_0

    const/4 v2, 0x3

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/source/b/a/a$a;)Lcom/google/android/exoplayer2/source/b/a/b;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/a/e$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b/a/e$a;->a()Lcom/google/android/exoplayer2/source/b/a/b;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/b/a/e;->d(Lcom/google/android/exoplayer2/source/b/a/a$a;)V

    .line 174
    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 146
    new-instance v0, Lcom/google/android/exoplayer2/upstream/p;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/a/e;->b:Lcom/google/android/exoplayer2/source/b/d;

    .line 147
    invoke-interface {v1, v4}, Lcom/google/android/exoplayer2/source/b/d;->a(I)Lcom/google/android/exoplayer2/upstream/e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/a/e;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/b/a/e;->c:Lcom/google/android/exoplayer2/source/b/a/d;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/android/exoplayer2/upstream/p;-><init>(Lcom/google/android/exoplayer2/upstream/e;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/p$a;)V

    .line 149
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/a/e;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    iget v2, p0, Lcom/google/android/exoplayer2/source/b/a/e;->d:I

    invoke-virtual {v1, v0, p0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$c;Lcom/google/android/exoplayer2/upstream/Loader$a;I)J

    .line 150
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/b/a/e$b;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$c;JJ)V
    .locals 6

    .prologue
    .line 41
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/p;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/b/a/e;->a(Lcom/google/android/exoplayer2/upstream/p;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$c;JJZ)V
    .locals 8

    .prologue
    .line 41
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/p;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/b/a/e;->a(Lcom/google/android/exoplayer2/upstream/p;JJZ)V

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
    .line 238
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/p;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/a/c;

    .line 240
    instance-of v3, v0, Lcom/google/android/exoplayer2/source/b/a/b;

    .line 241
    if-eqz v3, :cond_0

    .line 242
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/b/a/c;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/b/a/a;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/b/a/a;

    move-result-object v1

    move-object v2, v1

    .line 246
    :goto_0
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/b/a/e;->k:Lcom/google/android/exoplayer2/source/b/a/a;

    .line 247
    iget-object v1, v2, Lcom/google/android/exoplayer2/source/b/a/a;->a:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/b/a/a$a;

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/b/a/e;->l:Lcom/google/android/exoplayer2/source/b/a/a$a;

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 249
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/b/a/a;->a:Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 250
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/b/a/a;->b:Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 251
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/b/a/a;->c:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 252
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/b/a/e;->a(Ljava/util/List;)V

    .line 253
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/a/e;->e:Ljava/util/IdentityHashMap;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/a/e;->l:Lcom/google/android/exoplayer2/source/b/a/a$a;

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/b/a/e$a;

    .line 254
    if-eqz v3, :cond_1

    .line 256
    check-cast v0, Lcom/google/android/exoplayer2/source/b/a/b;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/source/b/a/e$a;->a(Lcom/google/android/exoplayer2/source/b/a/e$a;Lcom/google/android/exoplayer2/source/b/a/b;)V

    .line 260
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/a/e;->j:Lcom/google/android/exoplayer2/source/a$a;

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/p;->a:Lcom/google/android/exoplayer2/upstream/g;

    const/4 v3, 0x4

    .line 261
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/p;->e()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 260
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/upstream/g;IJJJ)V

    .line 262
    return-void

    :cond_0
    move-object v1, v0

    .line 244
    check-cast v1, Lcom/google/android/exoplayer2/source/b/a/a;

    move-object v2, v1

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/b/a/e$a;->d()V

    goto :goto_1
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
    .line 267
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/a/e;->j:Lcom/google/android/exoplayer2/source/a$a;

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/p;->a:Lcom/google/android/exoplayer2/upstream/g;

    const/4 v3, 0x4

    .line 268
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/p;->e()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 267
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/a$a;->b(Lcom/google/android/exoplayer2/upstream/g;IJJJ)V

    .line 269
    return-void
.end method

.method public b()Lcom/google/android/exoplayer2/source/b/a/a;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->k:Lcom/google/android/exoplayer2/source/b/a/a;

    return-object v0
.end method

.method public b(Lcom/google/android/exoplayer2/source/b/a/e$b;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/source/b/a/a$a;)Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/a/e$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b/a/e$a;->b()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->c()V

    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/a/e$a;

    .line 196
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b/a/e$a;->c()V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 200
    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/source/b/a/a$a;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/a/e$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b/a/e$a;->d()V

    .line 222
    return-void
.end method

.method public d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->d()V

    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->l:Lcom/google/android/exoplayer2/source/b/a/a$a;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->e:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/a/e;->l:Lcom/google/android/exoplayer2/source/b/a/a$a;

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/a/e$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/b/a/e$a;->a(Lcom/google/android/exoplayer2/source/b/a/e$a;)Lcom/google/android/exoplayer2/upstream/Loader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->d()V

    .line 213
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/a/e;->n:Z

    return v0
.end method
