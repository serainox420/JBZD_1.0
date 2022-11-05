.class public Lcom/smartadserver/android/library/ui/a/c/c;
.super Lcom/smartadserver/android/library/ui/a/c/d;
.source "SASQuaternion.java"


# instance fields
.field private b:Lcom/smartadserver/android/library/ui/a/c/b;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a/c/d;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a/c/c;->c:Z

    .line 55
    new-instance v0, Lcom/smartadserver/android/library/ui/a/c/b;

    invoke-direct {v0}, Lcom/smartadserver/android/library/ui/a/c/b;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/c;->b:Lcom/smartadserver/android/library/ui/a/c/b;

    .line 56
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a/c/c;->b()V

    .line 57
    return-void
.end method


# virtual methods
.method public a()Lcom/smartadserver/android/library/ui/a/c/c;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/smartadserver/android/library/ui/a/c/c;

    invoke-direct {v0}, Lcom/smartadserver/android/library/ui/a/c/c;-><init>()V

    .line 62
    invoke-virtual {v0, p0}, Lcom/smartadserver/android/library/ui/a/c/c;->a(Lcom/smartadserver/android/library/ui/a/c/d;)V

    .line 63
    return-object v0
.end method

.method public a(Lcom/smartadserver/android/library/ui/a/c/c;)V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a/c/c;->c:Z

    .line 91
    invoke-virtual {p0, p1}, Lcom/smartadserver/android/library/ui/a/c/c;->a(Lcom/smartadserver/android/library/ui/a/c/d;)V

    .line 92
    return-void
.end method

.method public a(Lcom/smartadserver/android/library/ui/a/c/c;Lcom/smartadserver/android/library/ui/a/c/c;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 101
    new-instance v0, Lcom/smartadserver/android/library/ui/a/c/d;

    invoke-direct {v0}, Lcom/smartadserver/android/library/ui/a/c/d;-><init>()V

    .line 102
    if-eq p1, p2, :cond_0

    .line 103
    iget-object v0, p2, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v1, v1, v8

    iget-object v2, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v2, v2, v5

    iget-object v3, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v2, v2, v6

    iget-object v3, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v3, v3, v6

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v2, v2, v7

    iget-object v3, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v3, v3, v7

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v8

    .line 105
    iget-object v0, p2, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v1, v1, v8

    iget-object v2, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v2, v2, v5

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v2, v2, v5

    iget-object v3, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v3, v3, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v2, v2, v6

    iget-object v3, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v3, v3, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v2, v2, v7

    iget-object v3, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v3, v3, v6

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v5

    .line 107
    iget-object v0, p2, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v1, v1, v8

    iget-object v2, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v2, v2, v6

    iget-object v3, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v3, v3, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v2, v2, v7

    iget-object v3, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v2, v2, v5

    iget-object v3, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v3, v3, v7

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v6

    .line 109
    iget-object v0, p2, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v1, v1, v8

    iget-object v2, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v2, v2, v7

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v2, v2, v7

    iget-object v3, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v3, v3, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v2, v2, v5

    iget-object v3, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v3, v3, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v2, v2, v6

    iget-object v3, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v7

    .line 126
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v1, v0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    iget-object v2, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v2, v2, v5

    aput v2, v1, v5

    .line 113
    iget-object v1, v0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    iget-object v2, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v2, v2, v6

    aput v2, v1, v6

    .line 114
    iget-object v1, v0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    iget-object v2, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v2, v2, v7

    aput v2, v1, v7

    .line 115
    iget-object v1, v0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    iget-object v2, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v2, v2, v8

    aput v2, v1, v8

    .line 117
    iget-object v1, p2, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v2, v2, v8

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v3, v3, v8

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v3, v3, v5

    iget-object v4, v0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v3, v3, v6

    iget-object v4, v0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v4, v4, v6

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v3, v3, v7

    iget-object v4, v0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v4, v4, v7

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v1, v8

    .line 119
    iget-object v1, p2, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v2, v2, v8

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v3, v3, v5

    iget-object v4, v0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v4, v4, v8

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v3, v3, v6

    iget-object v4, v0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v4, v4, v7

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v3, v3, v7

    iget-object v4, v0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v4, v4, v6

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v1, v5

    .line 121
    iget-object v1, p2, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v2, v2, v8

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v3, v3, v6

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v3, v3, v6

    iget-object v4, v0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v4, v4, v8

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v3, v3, v7

    iget-object v4, v0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v3, v3, v5

    iget-object v4, v0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v4, v4, v7

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v1, v6

    .line 123
    iget-object v1, p2, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v2, v2, v8

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v3, v3, v7

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v3, v3, v7

    iget-object v4, v0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v4, v4, v8

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v3, v3, v5

    iget-object v4, v0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v4, v4, v6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    aget v3, v3, v6

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v0, v0, v5

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    aput v0, v1, v7

    goto/16 :goto_0
.end method

.method public a(Lcom/smartadserver/android/library/ui/a/c/c;Lcom/smartadserver/android/library/ui/a/c/c;F)V
    .locals 10

    .prologue
    .line 480
    .line 481
    invoke-virtual {p0, p1}, Lcom/smartadserver/android/library/ui/a/c/c;->b(Lcom/smartadserver/android/library/ui/a/c/d;)F

    move-result v0

    .line 483
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 484
    new-instance v1, Lcom/smartadserver/android/library/ui/a/c/c;

    invoke-direct {v1}, Lcom/smartadserver/android/library/ui/a/c/c;-><init>()V

    .line 485
    neg-float v0, v0

    .line 486
    iget-object v2, v1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    neg-float v4, v4

    aput v4, v2, v3

    .line 487
    iget-object v2, v1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    neg-float v4, v4

    aput v4, v2, v3

    .line 488
    iget-object v2, v1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    neg-float v4, v4

    aput v4, v2, v3

    .line 489
    iget-object v2, v1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    neg-float v4, v4

    aput v4, v2, v3

    move-object p1, v1

    .line 511
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1

    .line 512
    iget-object v0, p2, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v0, v1

    .line 513
    iget-object v0, p2, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v1

    .line 514
    iget-object v0, p2, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    aput v2, v0, v1

    .line 515
    iget-object v0, p2, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    aput v2, v0, v1

    .line 541
    :goto_0
    return-void

    .line 517
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-float v1, v0, v0

    float-to-double v4, v1

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 528
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    .line 530
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p3

    float-to-double v4, v4

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    div-double/2addr v4, v2

    .line 531
    float-to-double v6, p3

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    div-double/2addr v0, v2

    .line 534
    iget-object v2, p2, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v3, 0x3

    iget-object v6, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    float-to-double v6, v6

    mul-double/2addr v6, v4

    iget-object v8, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v9, 0x3

    aget v8, v8, v9

    float-to-double v8, v8

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v2, v3

    .line 535
    iget-object v2, p2, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    float-to-double v6, v6

    mul-double/2addr v6, v4

    iget-object v8, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    float-to-double v8, v8

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v2, v3

    .line 536
    iget-object v2, p2, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    float-to-double v6, v6

    mul-double/2addr v6, v4

    iget-object v8, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    float-to-double v8, v8

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v2, v3

    .line 537
    iget-object v2, p2, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v3, 0x2

    iget-object v6, p0, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    float-to-double v6, v6

    mul-double/2addr v4, v6

    iget-object v6, p1, Lcom/smartadserver/android/library/ui/a/c/c;->a:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    float-to-double v6, v6

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    double-to-float v0, v0

    aput v0, v2, v3

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a/c/c;->c:Z

    .line 284
    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/ui/a/c/c;->a(F)V

    .line 285
    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/ui/a/c/c;->b(F)V

    .line 286
    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/ui/a/c/c;->c(F)V

    .line 287
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/a/c/c;->d(F)V

    .line 288
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a/c/c;->a()Lcom/smartadserver/android/library/ui/a/c/c;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{X: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a/c/c;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a/c/c;->e()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Z:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a/c/c;->f()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", W:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a/c/c;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
