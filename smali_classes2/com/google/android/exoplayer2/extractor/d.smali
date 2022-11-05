.class public final Lcom/google/android/exoplayer2/extractor/d;
.super Ljava/lang/Object;
.source "DefaultTrackOutput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/d$a;,
        Lcom/google/android/exoplayer2/extractor/d$b;,
        Lcom/google/android/exoplayer2/extractor/d$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/b;

.field private final b:I

.field private final c:Lcom/google/android/exoplayer2/extractor/d$b;

.field private final d:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/google/android/exoplayer2/upstream/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/exoplayer2/extractor/d$a;

.field private final f:Lcom/google/android/exoplayer2/util/l;

.field private final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private h:J

.field private i:Lcom/google/android/exoplayer2/Format;

.field private j:Z

.field private k:Lcom/google/android/exoplayer2/Format;

.field private l:J

.field private m:J

.field private n:Lcom/google/android/exoplayer2/upstream/a;

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Lcom/google/android/exoplayer2/extractor/d$c;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/b;)V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/d;->a:Lcom/google/android/exoplayer2/upstream/b;

    .line 88
    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/b;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d;->b:I

    .line 89
    new-instance v0, Lcom/google/android/exoplayer2/extractor/d$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/d$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->c:Lcom/google/android/exoplayer2/extractor/d$b;

    .line 90
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 91
    new-instance v0, Lcom/google/android/exoplayer2/extractor/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/d$a;-><init>(Lcom/google/android/exoplayer2/extractor/d$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->e:Lcom/google/android/exoplayer2/extractor/d$a;

    .line 92
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/l;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->f:Lcom/google/android/exoplayer2/util/l;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d;->b:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d;->o:I

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/d;->p:Z

    .line 96
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/Format;
    .locals 5

    .prologue
    .line 599
    if-nez p0, :cond_1

    .line 600
    const/4 p0, 0x0

    .line 605
    :cond_0
    :goto_0
    return-object p0

    .line 602
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/Format;->v:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 603
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Format;->v:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/Format;->a(J)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    goto :goto_0
.end method

.method private a(JLjava/nio/ByteBuffer;I)V
    .locals 5

    .prologue
    .line 392
    .line 393
    :goto_0
    if-lez p4, :cond_0

    .line 394
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/d;->d(J)V

    .line 395
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d;->h:J

    sub-long v0, p1, v0

    long-to-int v1, v0

    .line 396
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d;->b:I

    sub-int/2addr v0, v1

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 397
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/a;

    .line 398
    iget-object v3, v0, Lcom/google/android/exoplayer2/upstream/a;->a:[B

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/a;->a(I)I

    move-result v0

    invoke-virtual {p3, v3, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 399
    int-to-long v0, v2

    add-long/2addr p1, v0

    .line 400
    sub-int/2addr p4, v2

    .line 401
    goto :goto_0

    .line 402
    :cond_0
    return-void
.end method

.method private a(J[BI)V
    .locals 7

    .prologue
    .line 412
    const/4 v0, 0x0

    move v1, v0

    .line 413
    :goto_0
    if-ge v1, p4, :cond_0

    .line 414
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/d;->d(J)V

    .line 415
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d;->h:J

    sub-long v2, p1, v2

    long-to-int v2, v2

    .line 416
    sub-int v0, p4, v1

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/d;->b:I

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 417
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/a;

    .line 418
    iget-object v4, v0, Lcom/google/android/exoplayer2/upstream/a;->a:[B

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/upstream/a;->a(I)I

    move-result v0

    invoke-static {v4, v0, p3, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    int-to-long v4, v3

    add-long/2addr p1, v4

    .line 421
    add-int v0, v1, v3

    move v1, v0

    .line 422
    goto :goto_0

    .line 423
    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/a/e;Lcom/google/android/exoplayer2/extractor/d$a;)V
    .locals 12

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 322
    iget-wide v0, p2, Lcom/google/android/exoplayer2/extractor/d$a;->b:J

    .line 325
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/d;->f:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/l;->a(I)V

    .line 326
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/d;->f:Lcom/google/android/exoplayer2/util/l;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/google/android/exoplayer2/extractor/d;->a(J[BI)V

    .line 327
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 328
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->f:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    aget-byte v1, v0, v4

    .line 329
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_5

    move v0, v6

    .line 330
    :goto_0
    and-int/lit8 v1, v1, 0x7f

    .line 333
    iget-object v5, p1, Lcom/google/android/exoplayer2/a/e;->a:Lcom/google/android/exoplayer2/a/b;

    iget-object v5, v5, Lcom/google/android/exoplayer2/a/b;->a:[B

    if-nez v5, :cond_0

    .line 334
    iget-object v5, p1, Lcom/google/android/exoplayer2/a/e;->a:Lcom/google/android/exoplayer2/a/b;

    const/16 v7, 0x10

    new-array v7, v7, [B

    iput-object v7, v5, Lcom/google/android/exoplayer2/a/b;->a:[B

    .line 336
    :cond_0
    iget-object v5, p1, Lcom/google/android/exoplayer2/a/e;->a:Lcom/google/android/exoplayer2/a/b;

    iget-object v5, v5, Lcom/google/android/exoplayer2/a/b;->a:[B

    invoke-direct {p0, v2, v3, v5, v1}, Lcom/google/android/exoplayer2/extractor/d;->a(J[BI)V

    .line 337
    int-to-long v8, v1

    add-long/2addr v2, v8

    .line 341
    if-eqz v0, :cond_6

    .line 342
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d;->f:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer2/util/l;->a(I)V

    .line 343
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d;->f:Lcom/google/android/exoplayer2/util/l;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-direct {p0, v2, v3, v1, v10}, Lcom/google/android/exoplayer2/extractor/d;->a(J[BI)V

    .line 344
    const-wide/16 v8, 0x2

    add-long/2addr v2, v8

    .line 345
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d;->f:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/l;->g()I

    move-result v1

    move-wide v8, v2

    .line 351
    :goto_1
    iget-object v2, p1, Lcom/google/android/exoplayer2/a/e;->a:Lcom/google/android/exoplayer2/a/b;

    iget-object v2, v2, Lcom/google/android/exoplayer2/a/b;->d:[I

    .line 352
    if-eqz v2, :cond_1

    array-length v3, v2

    if-ge v3, v1, :cond_2

    .line 353
    :cond_1
    new-array v2, v1, [I

    .line 355
    :cond_2
    iget-object v3, p1, Lcom/google/android/exoplayer2/a/e;->a:Lcom/google/android/exoplayer2/a/b;

    iget-object v3, v3, Lcom/google/android/exoplayer2/a/b;->e:[I

    .line 356
    if-eqz v3, :cond_3

    array-length v5, v3

    if-ge v5, v1, :cond_4

    .line 357
    :cond_3
    new-array v3, v1, [I

    .line 359
    :cond_4
    if-eqz v0, :cond_7

    .line 360
    mul-int/lit8 v0, v1, 0x6

    .line 361
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/d;->f:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/util/l;->a(I)V

    .line 362
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/d;->f:Lcom/google/android/exoplayer2/util/l;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-direct {p0, v8, v9, v5, v0}, Lcom/google/android/exoplayer2/extractor/d;->a(J[BI)V

    .line 363
    int-to-long v10, v0

    add-long/2addr v8, v10

    .line 364
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->f:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 365
    :goto_2
    if-ge v4, v1, :cond_8

    .line 366
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->f:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->g()I

    move-result v0

    aput v0, v2, v4

    .line 367
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->f:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v0

    aput v0, v3, v4

    .line 365
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move v0, v4

    .line 329
    goto :goto_0

    :cond_6
    move v1, v6

    move-wide v8, v2

    .line 347
    goto :goto_1

    .line 370
    :cond_7
    aput v4, v2, v4

    .line 371
    iget v0, p2, Lcom/google/android/exoplayer2/extractor/d$a;->a:I

    iget-wide v10, p2, Lcom/google/android/exoplayer2/extractor/d$a;->b:J

    sub-long v10, v8, v10

    long-to-int v5, v10

    sub-int/2addr v0, v5

    aput v0, v3, v4

    .line 375
    :cond_8
    iget-object v0, p1, Lcom/google/android/exoplayer2/a/e;->a:Lcom/google/android/exoplayer2/a/b;

    iget-object v4, p2, Lcom/google/android/exoplayer2/extractor/d$a;->d:[B

    iget-object v5, p1, Lcom/google/android/exoplayer2/a/e;->a:Lcom/google/android/exoplayer2/a/b;

    iget-object v5, v5, Lcom/google/android/exoplayer2/a/b;->a:[B

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/a/b;->a(I[I[I[B[BI)V

    .line 379
    iget-wide v0, p2, Lcom/google/android/exoplayer2/extractor/d$a;->b:J

    sub-long v0, v8, v0

    long-to-int v0, v0

    .line 380
    iget-wide v2, p2, Lcom/google/android/exoplayer2/extractor/d$a;->b:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p2, Lcom/google/android/exoplayer2/extractor/d$a;->b:J

    .line 381
    iget v1, p2, Lcom/google/android/exoplayer2/extractor/d$a;->a:I

    sub-int v0, v1, v0

    iput v0, p2, Lcom/google/android/exoplayer2/extractor/d$a;->a:I

    .line 382
    return-void
.end method

.method private c(I)I
    .locals 2

    .prologue
    .line 583
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d;->o:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d;->b:I

    if-ne v0, v1, :cond_0

    .line 584
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d;->o:I

    .line 585
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->a:Lcom/google/android/exoplayer2/upstream/b;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/b;->a()Lcom/google/android/exoplayer2/upstream/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->n:Lcom/google/android/exoplayer2/upstream/a;

    .line 586
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d;->n:Lcom/google/android/exoplayer2/upstream/a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 588
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d;->b:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d;->o:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private c(J)V
    .locals 5

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d;->h:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 157
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d;->b:I

    div-int v1, v0, v1

    .line 158
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/d;->b:I

    rem-int v2, v0, v2

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 161
    if-nez v2, :cond_2

    .line 163
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 166
    :goto_0
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_0

    .line 167
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/d;->a:Lcom/google/android/exoplayer2/upstream/b;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {v4, v0}, Lcom/google/android/exoplayer2/upstream/b;->a(Lcom/google/android/exoplayer2/upstream/a;)V

    .line 166
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->n:Lcom/google/android/exoplayer2/upstream/a;

    .line 171
    if-nez v2, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d;->b:I

    :goto_2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d;->o:I

    .line 172
    return-void

    :cond_1
    move v0, v2

    .line 171
    goto :goto_2

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private d(J)V
    .locals 9

    .prologue
    .line 432
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d;->h:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 433
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d;->b:I

    div-int v2, v0, v1

    .line 434
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 435
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/d;->a:Lcom/google/android/exoplayer2/upstream/b;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/upstream/b;->a(Lcom/google/android/exoplayer2/upstream/a;)V

    .line 436
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/d;->h:J

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d;->b:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/d;->h:J

    .line 434
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 438
    :cond_0
    return-void
.end method

.method private i()Z
    .locals 3

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/d;->k()V

    .line 564
    :cond_0
    return-void
.end method

.method private k()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 567
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->c:Lcom/google/android/exoplayer2/extractor/d$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d$b;->a()V

    .line 568
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d;->a:Lcom/google/android/exoplayer2/upstream/b;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/d;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/exoplayer2/upstream/a;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/upstream/b;->a([Lcom/google/android/exoplayer2/upstream/a;)V

    .line 569
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 570
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->a:Lcom/google/android/exoplayer2/upstream/b;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/b;->b()V

    .line 571
    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/d;->h:J

    .line 572
    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/d;->m:J

    .line 573
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->n:Lcom/google/android/exoplayer2/upstream/a;

    .line 574
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d;->b:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d;->o:I

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/d;->p:Z

    .line 576
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/extractor/g;IZ)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 478
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/d;->i()Z

    move-result v1

    if-nez v1, :cond_2

    .line 479
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/g;->a(I)I

    move-result v1

    .line 480
    if-ne v1, v0, :cond_1

    .line 481
    if-eqz p3, :cond_0

    .line 502
    :goto_0
    return v0

    .line 484
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    move v0, v1

    .line 486
    goto :goto_0

    .line 489
    :cond_2
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/d;->c(I)I

    move-result v1

    .line 490
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/d;->n:Lcom/google/android/exoplayer2/upstream/a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/upstream/a;->a:[B

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/d;->n:Lcom/google/android/exoplayer2/upstream/a;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/d;->o:I

    .line 491
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/upstream/a;->a(I)I

    move-result v3

    .line 490
    invoke-interface {p1, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/g;->a([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 492
    if-ne v1, v0, :cond_4

    .line 493
    if-eqz p3, :cond_3

    .line 502
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/d;->j()V

    goto :goto_0

    .line 496
    :cond_3
    :try_start_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/d;->j()V

    throw v0

    .line 498
    :cond_4
    :try_start_2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d;->o:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d;->o:I

    .line 499
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d;->m:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d;->m:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 502
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/d;->j()V

    move v0, v1

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/a/e;ZZJ)I
    .locals 7

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->c:Lcom/google/android/exoplayer2/extractor/d$b;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/d;->i:Lcom/google/android/exoplayer2/Format;

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/d;->e:Lcom/google/android/exoplayer2/extractor/d$a;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/d$b;->a(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/a/e;ZZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/extractor/d$a;)I

    move-result v0

    .line 284
    packed-switch v0, :pswitch_data_0

    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 286
    :pswitch_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/h;->a:Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->i:Lcom/google/android/exoplayer2/Format;

    .line 287
    const/4 v0, -0x5

    .line 305
    :goto_0
    return v0

    .line 289
    :pswitch_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/a/e;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 290
    iget-wide v0, p2, Lcom/google/android/exoplayer2/a/e;->c:J

    cmp-long v0, v0, p5

    if-gez v0, :cond_0

    .line 291
    const/high16 v0, -0x80000000

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/a/e;->b(I)V

    .line 294
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/a/e;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->e:Lcom/google/android/exoplayer2/extractor/d$a;

    invoke-direct {p0, p2, v0}, Lcom/google/android/exoplayer2/extractor/d;->a(Lcom/google/android/exoplayer2/a/e;Lcom/google/android/exoplayer2/extractor/d$a;)V

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->e:Lcom/google/android/exoplayer2/extractor/d$a;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/d$a;->a:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/a/e;->e(I)V

    .line 299
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->e:Lcom/google/android/exoplayer2/extractor/d$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/d$a;->b:J

    iget-object v2, p2, Lcom/google/android/exoplayer2/a/e;->b:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/d;->e:Lcom/google/android/exoplayer2/extractor/d$a;

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/d$a;->a:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/d;->a(JLjava/nio/ByteBuffer;I)V

    .line 301
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->e:Lcom/google/android/exoplayer2/extractor/d$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/d$a;->c:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/d;->d(J)V

    .line 303
    :cond_2
    const/4 v0, -0x4

    goto :goto_0

    .line 305
    :pswitch_2
    const/4 v0, -0x3

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/d;->q:Z

    .line 129
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->c:Lcom/google/android/exoplayer2/extractor/d$b;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d$b;->b(I)V

    .line 121
    return-void
.end method

.method public a(JIII[B)V
    .locals 9

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/d;->j:Z

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->k:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/d;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 529
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/d;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->c:Lcom/google/android/exoplayer2/extractor/d$b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/d$b;->a(J)V

    .line 552
    :goto_0
    return-void

    .line 534
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/d;->q:Z

    if-eqz v0, :cond_4

    .line 535
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->c:Lcom/google/android/exoplayer2/extractor/d$b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/d$b;->b(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 550
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/d;->j()V

    goto :goto_0

    .line 538
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/d;->q:Z

    .line 540
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/d;->p:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    .line 541
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_5

    .line 550
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/d;->j()V

    goto :goto_0

    .line 544
    :cond_5
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/d;->p:Z

    .line 546
    :cond_6
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d;->l:J

    add-long v1, p1, v0

    .line 547
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/d;->m:J

    int-to-long v6, p4

    sub-long/2addr v4, v6

    int-to-long v6, p5

    sub-long/2addr v4, v6

    .line 548
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->c:Lcom/google/android/exoplayer2/extractor/d$b;

    move v3, p3

    move v6, p4

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/extractor/d$b;->a(JIJI[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 550
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/d;->j()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/d;->j()V

    throw v0
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)V
    .locals 3

    .prologue
    .line 466
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d;->l:J

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/d;->a(Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 467
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d;->c:Lcom/google/android/exoplayer2/extractor/d$b;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/d$b;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    .line 468
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/d;->k:Lcom/google/android/exoplayer2/Format;

    .line 469
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/d;->j:Z

    .line 470
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/d;->r:Lcom/google/android/exoplayer2/extractor/d$c;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d;->r:Lcom/google/android/exoplayer2/extractor/d$c;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/d$c;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 473
    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/d$c;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/d;->r:Lcom/google/android/exoplayer2/extractor/d$c;

    .line 449
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/util/l;I)V
    .locals 6

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/d;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 521
    :goto_0
    return-void

    .line 512
    :cond_0
    :goto_1
    if-lez p2, :cond_1

    .line 513
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/d;->c(I)I

    move-result v0

    .line 514
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d;->n:Lcom/google/android/exoplayer2/upstream/a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/a;->a:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/d;->n:Lcom/google/android/exoplayer2/upstream/a;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/d;->o:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/upstream/a;->a(I)I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 516
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d;->o:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/d;->o:I

    .line 517
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d;->m:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d;->m:J

    .line 518
    sub-int/2addr p2, v0

    .line 519
    goto :goto_1

    .line 520
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/d;->j()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 106
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/d;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    .line 107
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/d;->k()V

    .line 108
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/d;->c:Lcom/google/android/exoplayer2/extractor/d$b;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/d$b;->b()V

    .line 109
    if-ne v0, v1, :cond_0

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->i:Lcom/google/android/exoplayer2/Format;

    .line 112
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 106
    goto :goto_0
.end method

.method public a(J)Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/d;->a(JZ)Z

    move-result v0

    return v0
.end method

.method public a(JZ)Z
    .locals 5

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->c:Lcom/google/android/exoplayer2/extractor/d$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/d$b;->a(JZ)J

    move-result-wide v0

    .line 257
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 258
    const/4 v0, 0x0

    .line 261
    :goto_0
    return v0

    .line 260
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/d;->d(J)V

    .line 261
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->c:Lcom/google/android/exoplayer2/extractor/d$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d$b;->c()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->c:Lcom/google/android/exoplayer2/extractor/d$b;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d$b;->a(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d;->m:J

    .line 145
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d;->m:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/d;->c(J)V

    .line 146
    return-void
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 458
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d;->l:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 459
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/d;->l:J

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/d;->j:Z

    .line 462
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/d;->k()V

    .line 183
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->c:Lcom/google/android/exoplayer2/extractor/d$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d$b;->f()Z

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->c:Lcom/google/android/exoplayer2/extractor/d$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d$b;->d()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->c:Lcom/google/android/exoplayer2/extractor/d$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d$b;->e()I

    move-result v0

    return v0
.end method

.method public g()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->c:Lcom/google/android/exoplayer2/extractor/d$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d$b;->g()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d;->c:Lcom/google/android/exoplayer2/extractor/d$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d$b;->h()J

    move-result-wide v0

    return-wide v0
.end method
