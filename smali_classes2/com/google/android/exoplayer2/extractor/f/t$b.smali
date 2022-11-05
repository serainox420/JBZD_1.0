.class Lcom/google/android/exoplayer2/extractor/f/t$b;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/f/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/f/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/extractor/f/t;

.field private final b:Lcom/google/android/exoplayer2/util/k;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/f/t;I)V
    .locals 2

    .prologue
    .line 363
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    new-instance v0, Lcom/google/android/exoplayer2/util/k;

    const/4 v1, 0x5

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/k;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->b:Lcom/google/android/exoplayer2/util/k;

    .line 365
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->c:I

    .line 366
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/util/l;I)Lcom/google/android/exoplayer2/extractor/f/u$a;
    .locals 12

    .prologue
    const/16 v3, 0x87

    const/16 v2, 0x81

    .line 475
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v4

    .line 476
    add-int v5, v4, p2

    .line 477
    const/4 v1, -0x1

    .line 478
    const/4 v0, 0x0

    .line 479
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v6

    if-ge v6, v5, :cond_7

    .line 480
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v6

    .line 481
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v7

    .line 482
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v8

    add-int/2addr v7, v8

    .line 483
    const/4 v8, 0x5

    if-ne v6, v8, :cond_3

    .line 484
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->k()J

    move-result-wide v8

    .line 485
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/f/t;->a()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-nez v6, :cond_1

    move v1, v2

    .line 503
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v6

    sub-int v6, v7, v6

    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    goto :goto_0

    .line 487
    :cond_1
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/f/t;->b()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-nez v6, :cond_2

    move v1, v3

    .line 488
    goto :goto_1

    .line 489
    :cond_2
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/f/t;->d()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-nez v6, :cond_0

    .line 490
    const/16 v1, 0x24

    goto :goto_1

    .line 492
    :cond_3
    const/16 v8, 0x6a

    if-ne v6, v8, :cond_4

    move v1, v2

    .line 493
    goto :goto_1

    .line 494
    :cond_4
    const/16 v8, 0x7a

    if-ne v6, v8, :cond_5

    move v1, v3

    .line 495
    goto :goto_1

    .line 496
    :cond_5
    const/16 v8, 0x7b

    if-ne v6, v8, :cond_6

    .line 497
    const/16 v1, 0x8a

    goto :goto_1

    .line 498
    :cond_6
    const/16 v8, 0xa

    if-ne v6, v8, :cond_0

    .line 499
    new-instance v0, Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v8

    const/4 v9, 0x3

    invoke-direct {v0, v6, v8, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 505
    :cond_7
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 506
    new-instance v2, Lcom/google/android/exoplayer2/extractor/f/u$a;

    iget-object v3, p1, Lcom/google/android/exoplayer2/util/l;->a:[B

    .line 507
    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lcom/google/android/exoplayer2/extractor/f/u$a;-><init>(ILjava/lang/String;[B)V

    return-object v2
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/util/l;)V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/16 v12, 0x15

    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 376
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v0

    .line 377
    if-eq v0, v10, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/f/t;->c(Lcom/google/android/exoplayer2/extractor/f/t;)I

    move-result v0

    if-eq v0, v11, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/f/t;->c(Lcom/google/android/exoplayer2/extractor/f/t;)I

    move-result v0

    if-eq v0, v10, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/f/t;->d(Lcom/google/android/exoplayer2/extractor/f/t;)I

    move-result v0

    if-ne v0, v11, :cond_5

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/f/t;->e(Lcom/google/android/exoplayer2/extractor/f/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/s;

    .line 392
    :goto_1
    invoke-virtual {p1, v10}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 393
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->g()I

    move-result v6

    .line 396
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 399
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {p1, v1, v10}, Lcom/google/android/exoplayer2/util/l;->a(Lcom/google/android/exoplayer2/util/k;I)V

    .line 400
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v1, v13}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 401
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->b:Lcom/google/android/exoplayer2/util/k;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v1

    .line 404
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 406
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/f/t;->c(Lcom/google/android/exoplayer2/extractor/f/t;)I

    move-result v1

    if-ne v1, v10, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/f/t;->f(Lcom/google/android/exoplayer2/extractor/f/t;)Lcom/google/android/exoplayer2/extractor/f/u;

    move-result-object v1

    if-nez v1, :cond_3

    .line 409
    new-instance v1, Lcom/google/android/exoplayer2/extractor/f/u$a;

    const/4 v2, 0x0

    new-array v3, v4, [B

    invoke-direct {v1, v12, v2, v3}, Lcom/google/android/exoplayer2/extractor/f/u$a;-><init>(ILjava/lang/String;[B)V

    .line 410
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/f/t;->g(Lcom/google/android/exoplayer2/extractor/f/t;)Lcom/google/android/exoplayer2/extractor/f/u$b;

    move-result-object v3

    invoke-interface {v3, v12, v1}, Lcom/google/android/exoplayer2/extractor/f/u$b;->a(ILcom/google/android/exoplayer2/extractor/f/u$a;)Lcom/google/android/exoplayer2/extractor/f/u;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/extractor/f/t;->a(Lcom/google/android/exoplayer2/extractor/f/t;Lcom/google/android/exoplayer2/extractor/f/u;)Lcom/google/android/exoplayer2/extractor/f/u;

    .line 411
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/f/t;->f(Lcom/google/android/exoplayer2/extractor/f/t;)Lcom/google/android/exoplayer2/extractor/f/u;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/f/t;->h(Lcom/google/android/exoplayer2/extractor/f/t;)Lcom/google/android/exoplayer2/extractor/h;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplayer2/extractor/f/u$c;

    const/16 v5, 0x2000

    invoke-direct {v3, v6, v12, v5}, Lcom/google/android/exoplayer2/extractor/f/u$c;-><init>(III)V

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/f/u;->a(Lcom/google/android/exoplayer2/util/s;Lcom/google/android/exoplayer2/extractor/h;Lcom/google/android/exoplayer2/extractor/f/u$c;)V

    .line 415
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v1

    move v2, v1

    .line 416
    :goto_2
    if-lez v2, :cond_b

    .line 417
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->b:Lcom/google/android/exoplayer2/util/k;

    const/4 v3, 0x5

    invoke-virtual {p1, v1, v3}, Lcom/google/android/exoplayer2/util/l;->a(Lcom/google/android/exoplayer2/util/k;I)V

    .line 418
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->b:Lcom/google/android/exoplayer2/util/k;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v1

    .line 419
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->b:Lcom/google/android/exoplayer2/util/k;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 420
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->b:Lcom/google/android/exoplayer2/util/k;

    const/16 v5, 0xd

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v3

    .line 421
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v5, v13}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 422
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->b:Lcom/google/android/exoplayer2/util/k;

    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v5

    .line 423
    invoke-direct {p0, p1, v5}, Lcom/google/android/exoplayer2/extractor/f/t$b;->a(Lcom/google/android/exoplayer2/util/l;I)Lcom/google/android/exoplayer2/extractor/f/u$a;

    move-result-object v7

    .line 424
    const/4 v8, 0x6

    if-ne v1, v8, :cond_4

    .line 425
    iget v1, v7, Lcom/google/android/exoplayer2/extractor/f/u$a;->a:I

    .line 427
    :cond_4
    add-int/lit8 v5, v5, 0x5

    sub-int v5, v2, v5

    .line 429
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/f/t;->c(Lcom/google/android/exoplayer2/extractor/f/t;)I

    move-result v2

    if-ne v2, v10, :cond_6

    move v2, v1

    .line 430
    :goto_3
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v8}, Lcom/google/android/exoplayer2/extractor/f/t;->i(Lcom/google/android/exoplayer2/extractor/f/t;)Landroid/util/SparseBooleanArray;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_7

    move v2, v5

    .line 431
    goto :goto_2

    .line 386
    :cond_5
    new-instance v1, Lcom/google/android/exoplayer2/util/s;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    .line 387
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/f/t;->e(Lcom/google/android/exoplayer2/extractor/f/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/s;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/s;->a()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/util/s;-><init>(J)V

    .line 388
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/f/t;->e(Lcom/google/android/exoplayer2/extractor/f/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto/16 :goto_1

    :cond_6
    move v2, v3

    .line 429
    goto :goto_3

    .line 433
    :cond_7
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v8}, Lcom/google/android/exoplayer2/extractor/f/t;->i(Lcom/google/android/exoplayer2/extractor/f/t;)Landroid/util/SparseBooleanArray;

    move-result-object v8

    invoke-virtual {v8, v2, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 436
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v8}, Lcom/google/android/exoplayer2/extractor/f/t;->c(Lcom/google/android/exoplayer2/extractor/f/t;)I

    move-result v8

    if-ne v8, v10, :cond_a

    if-ne v1, v12, :cond_a

    .line 437
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/f/t;->f(Lcom/google/android/exoplayer2/extractor/f/t;)Lcom/google/android/exoplayer2/extractor/f/u;

    move-result-object v1

    .line 446
    :cond_8
    :goto_4
    if-eqz v1, :cond_9

    .line 447
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/f/t;->a(Lcom/google/android/exoplayer2/extractor/f/t;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    move v2, v5

    .line 449
    goto/16 :goto_2

    .line 439
    :cond_a
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v8}, Lcom/google/android/exoplayer2/extractor/f/t;->g(Lcom/google/android/exoplayer2/extractor/f/t;)Lcom/google/android/exoplayer2/extractor/f/u$b;

    move-result-object v8

    invoke-interface {v8, v1, v7}, Lcom/google/android/exoplayer2/extractor/f/u$b;->a(ILcom/google/android/exoplayer2/extractor/f/u$a;)Lcom/google/android/exoplayer2/extractor/f/u;

    move-result-object v1

    .line 440
    if-eqz v1, :cond_8

    .line 441
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/f/t;->h(Lcom/google/android/exoplayer2/extractor/f/t;)Lcom/google/android/exoplayer2/extractor/h;

    move-result-object v7

    new-instance v8, Lcom/google/android/exoplayer2/extractor/f/u$c;

    const/16 v9, 0x2000

    invoke-direct {v8, v6, v2, v9}, Lcom/google/android/exoplayer2/extractor/f/u$c;-><init>(III)V

    invoke-interface {v1, v0, v7, v8}, Lcom/google/android/exoplayer2/extractor/f/u;->a(Lcom/google/android/exoplayer2/util/s;Lcom/google/android/exoplayer2/extractor/h;Lcom/google/android/exoplayer2/extractor/f/u$c;)V

    goto :goto_4

    .line 450
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/f/t;->c(Lcom/google/android/exoplayer2/extractor/f/t;)I

    move-result v0

    if-ne v0, v10, :cond_c

    .line 451
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/f/t;->j(Lcom/google/android/exoplayer2/extractor/f/t;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/f/t;->h(Lcom/google/android/exoplayer2/extractor/f/t;)Lcom/google/android/exoplayer2/extractor/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/h;->a()V

    .line 453
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/extractor/f/t;->a(Lcom/google/android/exoplayer2/extractor/f/t;I)I

    .line 454
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/extractor/f/t;->a(Lcom/google/android/exoplayer2/extractor/f/t;Z)Z

    goto/16 :goto_0

    .line 457
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/f/t;->a(Lcom/google/android/exoplayer2/extractor/f/t;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->c:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 458
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/f/t;->c(Lcom/google/android/exoplayer2/extractor/f/t;)I

    move-result v0

    if-ne v0, v11, :cond_d

    move v0, v4

    :goto_5
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/extractor/f/t;->a(Lcom/google/android/exoplayer2/extractor/f/t;I)I

    .line 459
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/f/t;->d(Lcom/google/android/exoplayer2/extractor/f/t;)I

    move-result v0

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/f/t;->h(Lcom/google/android/exoplayer2/extractor/f/t;)Lcom/google/android/exoplayer2/extractor/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/h;->a()V

    .line 461
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/extractor/f/t;->a(Lcom/google/android/exoplayer2/extractor/f/t;Z)Z

    goto/16 :goto_0

    .line 458
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t$b;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/f/t;->d(Lcom/google/android/exoplayer2/extractor/f/t;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_5
.end method

.method public a(Lcom/google/android/exoplayer2/util/s;Lcom/google/android/exoplayer2/extractor/h;Lcom/google/android/exoplayer2/extractor/f/u$c;)V
    .locals 0

    .prologue
    .line 372
    return-void
.end method
