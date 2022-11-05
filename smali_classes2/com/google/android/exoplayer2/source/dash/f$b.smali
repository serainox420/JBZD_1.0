.class public final Lcom/google/android/exoplayer2/source/dash/f$b;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/exoplayer2/source/a/d;

.field public c:Lcom/google/android/exoplayer2/source/dash/manifest/f;

.field public d:Lcom/google/android/exoplayer2/source/dash/d;

.field private e:J

.field private f:I


# direct methods
.method public constructor <init>(JLcom/google/android/exoplayer2/source/dash/manifest/f;ZZI)V
    .locals 3

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->e:J

    .line 387
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->c:Lcom/google/android/exoplayer2/source/dash/manifest/f;

    .line 388
    iput p6, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->a:I

    .line 389
    iget-object v0, p3, Lcom/google/android/exoplayer2/source/dash/manifest/f;->c:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    .line 390
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/f$b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->b:Lcom/google/android/exoplayer2/source/a/d;

    .line 412
    :goto_0
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/dash/manifest/f;->e()Lcom/google/android/exoplayer2/source/dash/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->d:Lcom/google/android/exoplayer2/source/dash/d;

    .line 413
    return-void

    .line 394
    :cond_0
    const-string v1, "application/x-rawcc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    new-instance v0, Lcom/google/android/exoplayer2/extractor/e/a;

    iget-object v1, p3, Lcom/google/android/exoplayer2/source/dash/manifest/f;->c:Lcom/google/android/exoplayer2/Format;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/e/a;-><init>(Lcom/google/android/exoplayer2/Format;)V

    .line 410
    :goto_1
    new-instance v1, Lcom/google/android/exoplayer2/source/a/d;

    iget-object v2, p3, Lcom/google/android/exoplayer2/source/dash/manifest/f;->c:Lcom/google/android/exoplayer2/Format;

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/source/a/d;-><init>(Lcom/google/android/exoplayer2/extractor/f;Lcom/google/android/exoplayer2/Format;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->b:Lcom/google/android/exoplayer2/source/a/d;

    goto :goto_0

    .line 396
    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/f$b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    new-instance v0, Lcom/google/android/exoplayer2/extractor/a/d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/a/d;-><init>()V

    goto :goto_1

    .line 399
    :cond_2
    const/4 v0, 0x0

    .line 400
    if-eqz p4, :cond_3

    .line 401
    const/4 v0, 0x4

    .line 403
    :cond_3
    if-eqz p5, :cond_4

    .line 404
    or-int/lit8 v0, v0, 0x8

    .line 406
    :cond_4
    new-instance v1, Lcom/google/android/exoplayer2/extractor/c/e;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/extractor/c/e;-><init>(I)V

    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 484
    const-string v0, "video/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/webm"

    .line 485
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 489
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/i;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->d:Lcom/google/android/exoplayer2/source/dash/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/dash/d;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method public a(J)I
    .locals 5

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->d:Lcom/google/android/exoplayer2/source/dash/d;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->e:J

    invoke-interface {v0, p1, p2, v2, v3}, Lcom/google/android/exoplayer2/source/dash/d;->a(JJ)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method public a(I)J
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->d:Lcom/google/android/exoplayer2/source/dash/d;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->f:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/dash/d;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(JLcom/google/android/exoplayer2/source/dash/manifest/f;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/source/BehindLiveWindowException;
        }
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->c:Lcom/google/android/exoplayer2/source/dash/manifest/f;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/f;->e()Lcom/google/android/exoplayer2/source/dash/d;

    move-result-object v0

    .line 418
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/dash/manifest/f;->e()Lcom/google/android/exoplayer2/source/dash/d;

    move-result-object v1

    .line 420
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->e:J

    .line 421
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->c:Lcom/google/android/exoplayer2/source/dash/manifest/f;

    .line 422
    if-nez v0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->d:Lcom/google/android/exoplayer2/source/dash/d;

    .line 428
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/dash/d;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->e:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/source/dash/d;->a(J)I

    move-result v2

    .line 434
    if-eqz v2, :cond_0

    .line 439
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/dash/d;->a()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 440
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/source/dash/d;->a(I)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->e:J

    .line 441
    invoke-interface {v0, v2, v6, v7}, Lcom/google/android/exoplayer2/source/dash/d;->a(IJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 442
    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/dash/d;->a()I

    move-result v3

    .line 443
    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/source/dash/d;->a(I)J

    move-result-wide v6

    .line 444
    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 446
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->f:I

    add-int/lit8 v1, v2, 0x1

    sub-int/2addr v1, v3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->f:I

    goto :goto_0

    .line 447
    :cond_2
    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    .line 450
    new-instance v0, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    throw v0

    .line 453
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->f:I

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->e:J

    invoke-interface {v0, v6, v7, v4, v5}, Lcom/google/android/exoplayer2/source/dash/d;->a(JJ)I

    move-result v0

    sub-int/2addr v0, v3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->f:I

    goto :goto_0
.end method

.method public b()I
    .locals 4

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->d:Lcom/google/android/exoplayer2/source/dash/d;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->e:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/source/dash/d;->a(J)I

    move-result v0

    return v0
.end method

.method public b(I)J
    .locals 6

    .prologue
    .line 471
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/f$b;->a(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->d:Lcom/google/android/exoplayer2/source/dash/d;

    iget v3, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->f:I

    sub-int v3, p1, v3

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->e:J

    .line 472
    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/dash/d;->a(IJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public c(I)Lcom/google/android/exoplayer2/source/dash/manifest/e;
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->d:Lcom/google/android/exoplayer2/source/dash/d;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->f:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/dash/d;->b(I)Lcom/google/android/exoplayer2/source/dash/manifest/e;

    move-result-object v0

    return-object v0
.end method
