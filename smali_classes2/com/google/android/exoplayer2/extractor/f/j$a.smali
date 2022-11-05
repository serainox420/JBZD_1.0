.class final Lcom/google/android/exoplayer2/extractor/f/j$a;
.super Ljava/lang/Object;
.source "H265Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/f/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/n;

.field private b:J

.field private c:Z

.field private d:I

.field private e:J

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:J

.field private l:J

.field private m:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/n;)V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->a:Lcom/google/android/exoplayer2/extractor/n;

    .line 419
    return-void
.end method

.method private a(I)V
    .locals 8

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->m:Z

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .line 487
    :goto_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->b:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->k:J

    sub-long/2addr v0, v2

    long-to-int v5, v0

    .line 488
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->a:Lcom/google/android/exoplayer2/extractor/n;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->l:J

    const/4 v7, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/n;->a(JIII[B)V

    .line 489
    return-void

    .line 486
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 422
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->f:Z

    .line 423
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->g:Z

    .line 424
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->h:Z

    .line 425
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->i:Z

    .line 426
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->j:Z

    .line 427
    return-void
.end method

.method public a(JI)V
    .locals 3

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->j:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->g:Z

    if-eqz v0, :cond_1

    .line 469
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->c:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->m:Z

    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->j:Z

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->h:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->g:Z

    if-eqz v0, :cond_0

    .line 473
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->i:Z

    if-eqz v0, :cond_3

    .line 475
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->b:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 476
    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/f/j$a;->a(I)V

    .line 478
    :cond_3
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->b:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->k:J

    .line 479
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->e:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->l:J

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->i:Z

    .line 481
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->c:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->m:Z

    goto :goto_0
.end method

.method public a(JIIJ)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 430
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->g:Z

    .line 431
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->h:Z

    .line 432
    iput-wide p5, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->e:J

    .line 433
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->d:I

    .line 434
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->b:J

    .line 436
    const/16 v0, 0x20

    if-lt p4, v0, :cond_1

    .line 437
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->i:Z

    if-eqz v0, :cond_0

    .line 439
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/extractor/f/j$a;->a(I)V

    .line 440
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->i:Z

    .line 442
    :cond_0
    const/16 v0, 0x22

    if-gt p4, v0, :cond_1

    .line 444
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->j:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->h:Z

    .line 445
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->j:Z

    .line 450
    :cond_1
    const/16 v0, 0x10

    if-lt p4, v0, :cond_5

    const/16 v0, 0x15

    if-gt p4, v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->c:Z

    .line 451
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->c:Z

    if-nez v0, :cond_2

    const/16 v0, 0x9

    if-gt p4, v0, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->f:Z

    .line 452
    return-void

    :cond_4
    move v0, v2

    .line 444
    goto :goto_0

    :cond_5
    move v0, v2

    .line 450
    goto :goto_1
.end method

.method public a([BII)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 455
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->f:Z

    if-eqz v0, :cond_0

    .line 456
    add-int/lit8 v0, p2, 0x2

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->d:I

    sub-int/2addr v0, v2

    .line 457
    if-ge v0, p3, :cond_2

    .line 458
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->g:Z

    .line 459
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->f:Z

    .line 464
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 458
    goto :goto_0

    .line 461
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->d:I

    sub-int v1, p3, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/j$a;->d:I

    goto :goto_1
.end method
