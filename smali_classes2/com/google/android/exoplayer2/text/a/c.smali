.class public final Lcom/google/android/exoplayer2/text/a/c;
.super Lcom/google/android/exoplayer2/text/a/d;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/a/c$a;,
        Lcom/google/android/exoplayer2/text/a/c$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/l;

.field private final b:Lcom/google/android/exoplayer2/util/k;

.field private final c:I

.field private final d:[Lcom/google/android/exoplayer2/text/a/c$a;

.field private e:Lcom/google/android/exoplayer2/text/a/c$a;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/android/exoplayer2/text/a/c$b;

.field private i:I


# direct methods
.method public constructor <init>(I)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 156
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/d;-><init>()V

    .line 157
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->a:Lcom/google/android/exoplayer2/util/l;

    .line 158
    new-instance v0, Lcom/google/android/exoplayer2/util/k;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    .line 159
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/text/a/c;->c:I

    .line 161
    new-array v0, v4, [Lcom/google/android/exoplayer2/text/a/c$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->d:[Lcom/google/android/exoplayer2/text/a/c$a;

    move v0, v1

    .line 162
    :goto_0
    if-ge v0, v4, :cond_1

    .line 163
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->d:[Lcom/google/android/exoplayer2/text/a/c$a;

    new-instance v3, Lcom/google/android/exoplayer2/text/a/c$a;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/text/a/c$a;-><init>()V

    aput-object v3, v2, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->d:[Lcom/google/android/exoplayer2/text/a/c$a;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    .line 167
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/c;->p()V

    .line 168
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 336
    sparse-switch p1, :sswitch_data_0

    .line 356
    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    const/16 v0, 0x17

    if-gt p1, v0, :cond_0

    .line 357
    const-string v0, "Cea708Decoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Currently unsupported COMMAND_EXT1 Command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 366
    :goto_0
    :sswitch_0
    return-void

    .line 341
    :sswitch_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/c;->o()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->f:Ljava/util/List;

    goto :goto_0

    .line 344
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/a/c$a;->f()V

    goto :goto_0

    .line 347
    :sswitch_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/c;->p()V

    goto :goto_0

    .line 350
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto :goto_0

    .line 359
    :cond_0
    const/16 v0, 0x18

    if-lt p1, v0, :cond_1

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_1

    .line 360
    const-string v0, "Cea708Decoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Currently unsupported COMMAND_P16 Command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    goto :goto_0

    .line 363
    :cond_1
    const-string v0, "Cea708Decoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid C0 command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x8 -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private b(I)V
    .locals 6

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x0

    const/16 v5, 0x8

    const/4 v1, 0x1

    .line 370
    packed-switch p1, :pswitch_data_0

    .line 480
    :pswitch_0
    const-string v0, "Cea708Decoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid C1 command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 379
    :pswitch_2
    add-int/lit8 v0, p1, -0x80

    .line 380
    iget v1, p0, Lcom/google/android/exoplayer2/text/a/c;->i:I

    if-eq v1, v0, :cond_0

    .line 381
    iput v0, p0, Lcom/google/android/exoplayer2/text/a/c;->i:I

    .line 382
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/c;->d:[Lcom/google/android/exoplayer2/text/a/c$a;

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    goto :goto_0

    .line 386
    :goto_1
    :pswitch_3
    if-gt v1, v5, :cond_0

    .line 387
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/k;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->d:[Lcom/google/android/exoplayer2/text/a/c$a;

    rsub-int/lit8 v2, v1, 0x8

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/a/c$a;->c()V

    .line 386
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_4
    move v0, v1

    .line 393
    :goto_2
    if-gt v0, v5, :cond_0

    .line 394
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/k;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 395
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->d:[Lcom/google/android/exoplayer2/text/a/c$a;

    rsub-int/lit8 v3, v0, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(Z)V

    .line 393
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 400
    :goto_3
    :pswitch_5
    if-gt v1, v5, :cond_0

    .line 401
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/k;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 402
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->d:[Lcom/google/android/exoplayer2/text/a/c$a;

    rsub-int/lit8 v3, v1, 0x8

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/text/a/c$a;->a(Z)V

    .line 400
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :pswitch_6
    move v3, v1

    .line 407
    :goto_4
    if-gt v3, v5, :cond_0

    .line 408
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/k;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 409
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->d:[Lcom/google/android/exoplayer2/text/a/c$a;

    rsub-int/lit8 v4, v3, 0x8

    aget-object v4, v0, v4

    .line 410
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/text/a/c$a;->e()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/text/a/c$a;->a(Z)V

    .line 407
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_5
    move v0, v2

    .line 410
    goto :goto_5

    .line 415
    :goto_6
    :pswitch_7
    if-gt v1, v5, :cond_0

    .line 416
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/k;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 417
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->d:[Lcom/google/android/exoplayer2/text/a/c$a;

    rsub-int/lit8 v2, v1, 0x8

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/a/c$a;->b()V

    .line 415
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 423
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    goto/16 :goto_0

    .line 429
    :pswitch_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/c;->p()V

    goto/16 :goto_0

    .line 432
    :pswitch_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/a/c$a;->d()Z

    move-result v0

    if-nez v0, :cond_7

    .line 434
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    goto/16 :goto_0

    .line 436
    :cond_7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/c;->k()V

    goto/16 :goto_0

    .line 440
    :pswitch_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/a/c$a;->d()Z

    move-result v0

    if-nez v0, :cond_8

    .line 442
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    goto/16 :goto_0

    .line 444
    :cond_8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/c;->l()V

    goto/16 :goto_0

    .line 448
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/a/c$a;->d()Z

    move-result v0

    if-nez v0, :cond_9

    .line 450
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    goto/16 :goto_0

    .line 452
    :cond_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/c;->m()V

    goto/16 :goto_0

    .line 456
    :pswitch_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/a/c$a;->d()Z

    move-result v0

    if-nez v0, :cond_a

    .line 458
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    goto/16 :goto_0

    .line 460
    :cond_a
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/c;->n()V

    goto/16 :goto_0

    .line 471
    :pswitch_e
    add-int/lit16 v0, p1, -0x98

    .line 472
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/a/c;->i(I)V

    .line 474
    iget v1, p0, Lcom/google/android/exoplayer2/text/a/c;->i:I

    if-eq v1, v0, :cond_0

    .line 475
    iput v0, p0, Lcom/google/android/exoplayer2/text/a/c;->i:I

    .line 476
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/c;->d:[Lcom/google/android/exoplayer2/text/a/c$a;

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    goto/16 :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method private c(I)V
    .locals 2

    .prologue
    .line 486
    const/4 v0, 0x7

    if-gt p1, v0, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    const/16 v0, 0xf

    if-gt p1, v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    goto :goto_0

    .line 490
    :cond_2
    const/16 v0, 0x17

    if-gt p1, v0, :cond_3

    .line 491
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    goto :goto_0

    .line 492
    :cond_3
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    goto :goto_0
.end method

.method private d(I)V
    .locals 2

    .prologue
    .line 499
    const/16 v0, 0x87

    if-gt p1, v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    const/16 v0, 0x8f

    if-gt p1, v0, :cond_2

    .line 502
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    goto :goto_0

    .line 503
    :cond_2
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 508
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v0

    .line 509
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    goto :goto_0
.end method

.method private e(I)V
    .locals 2

    .prologue
    .line 514
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x266b

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    and-int/lit16 v1, p1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto :goto_0
.end method

.method private f(I)V
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    and-int/lit16 v1, p1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    .line 523
    return-void
.end method

.method private g(I)V
    .locals 3

    .prologue
    .line 526
    sparse-switch p1, :sswitch_data_0

    .line 606
    const-string v0, "Cea708Decoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid G2 character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :goto_0
    return-void

    .line 528
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto :goto_0

    .line 531
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto :goto_0

    .line 534
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x2026

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto :goto_0

    .line 537
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x160

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto :goto_0

    .line 540
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x152

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto :goto_0

    .line 543
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x2588

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto :goto_0

    .line 546
    :sswitch_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x2018

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto :goto_0

    .line 549
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x2019

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto :goto_0

    .line 552
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x201c

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto :goto_0

    .line 555
    :sswitch_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x201d

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto :goto_0

    .line 558
    :sswitch_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x2022

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto :goto_0

    .line 561
    :sswitch_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x2122

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto :goto_0

    .line 564
    :sswitch_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x161

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto :goto_0

    .line 567
    :sswitch_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x153

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto :goto_0

    .line 570
    :sswitch_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x2120

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto :goto_0

    .line 573
    :sswitch_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x178

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto :goto_0

    .line 576
    :sswitch_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x215b

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto/16 :goto_0

    .line 579
    :sswitch_11
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x215c

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto/16 :goto_0

    .line 582
    :sswitch_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x215d

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto/16 :goto_0

    .line 585
    :sswitch_13
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x215e

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto/16 :goto_0

    .line 588
    :sswitch_14
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x2502

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto/16 :goto_0

    .line 591
    :sswitch_15
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x2510

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto/16 :goto_0

    .line 594
    :sswitch_16
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x2514

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto/16 :goto_0

    .line 597
    :sswitch_17
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x2500

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto/16 :goto_0

    .line 600
    :sswitch_18
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x2518

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto/16 :goto_0

    .line 603
    :sswitch_19
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x250c

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto/16 :goto_0

    .line 526
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x21 -> :sswitch_1
        0x25 -> :sswitch_2
        0x2a -> :sswitch_3
        0x2c -> :sswitch_4
        0x30 -> :sswitch_5
        0x31 -> :sswitch_6
        0x32 -> :sswitch_7
        0x33 -> :sswitch_8
        0x34 -> :sswitch_9
        0x35 -> :sswitch_a
        0x39 -> :sswitch_b
        0x3a -> :sswitch_c
        0x3c -> :sswitch_d
        0x3d -> :sswitch_e
        0x3f -> :sswitch_f
        0x76 -> :sswitch_10
        0x77 -> :sswitch_11
        0x78 -> :sswitch_12
        0x79 -> :sswitch_13
        0x7a -> :sswitch_14
        0x7b -> :sswitch_15
        0x7c -> :sswitch_16
        0x7d -> :sswitch_17
        0x7e -> :sswitch_18
        0x7f -> :sswitch_19
    .end sparse-switch
.end method

.method private h(I)V
    .locals 3

    .prologue
    .line 613
    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x33c4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    .line 620
    :goto_0
    return-void

    .line 616
    :cond_0
    const-string v0, "Cea708Decoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid G3 character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(C)V

    goto :goto_0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->h:Lcom/google/android/exoplayer2/text/a/c$b;

    if-nez v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/c;->j()V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->h:Lcom/google/android/exoplayer2/text/a/c$b;

    goto :goto_0
.end method

.method private i(I)V
    .locals 14

    .prologue
    const/4 v9, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    .line 707
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->d:[Lcom/google/android/exoplayer2/text/a/c$a;

    aget-object v0, v0, p1

    .line 711
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 712
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/k;->c()Z

    move-result v1

    .line 713
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/k;->c()Z

    move-result v2

    .line 714
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/k;->c()Z

    move-result v3

    .line 715
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v4, v13}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v4

    .line 717
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/k;->c()Z

    move-result v5

    .line 718
    iget-object v6, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v6

    .line 720
    iget-object v7, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v7

    .line 722
    iget-object v8, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v10

    .line 723
    iget-object v8, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v8

    .line 725
    iget-object v9, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v9, v12}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 726
    iget-object v9, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    const/4 v11, 0x6

    invoke-virtual {v9, v11}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v9

    .line 728
    iget-object v11, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v11, v12}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 729
    iget-object v11, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v11, v13}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v11

    .line 730
    iget-object v12, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v12, v13}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v12

    .line 732
    invoke-virtual/range {v0 .. v12}, Lcom/google/android/exoplayer2/text/a/c$a;->a(ZZZIZIIIIIII)V

    .line 734
    return-void
.end method

.method private j()V
    .locals 10

    .prologue
    const/16 v9, 0x9f

    const/16 v8, 0x7f

    const/16 v7, 0x1f

    const/16 v6, 0x8

    const/4 v1, 0x1

    .line 259
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->h:Lcom/google/android/exoplayer2/text/a/c$b;

    iget v0, v0, Lcom/google/android/exoplayer2/text/a/c$b;->d:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->h:Lcom/google/android/exoplayer2/text/a/c$b;

    iget v2, v2, Lcom/google/android/exoplayer2/text/a/c$b;->b:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 260
    const-string v0, "Cea708Decoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DtvCcPacket ended prematurely; size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->h:Lcom/google/android/exoplayer2/text/a/c$b;

    iget v2, v2, Lcom/google/android/exoplayer2/text/a/c$b;->b:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but current index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->h:Lcom/google/android/exoplayer2/text/a/c$b;

    iget v2, v2, Lcom/google/android/exoplayer2/text/a/c$b;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (sequence number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->h:Lcom/google/android/exoplayer2/text/a/c$b;

    iget v2, v2, Lcom/google/android/exoplayer2/text/a/c$b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "); ignoring packet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->h:Lcom/google/android/exoplayer2/text/a/c$b;

    iget-object v2, v2, Lcom/google/android/exoplayer2/text/a/c$b;->c:[B

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/a/c;->h:Lcom/google/android/exoplayer2/text/a/c$b;

    iget v3, v3, Lcom/google/android/exoplayer2/text/a/c$b;->d:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/util/k;->a([BI)V

    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v0

    .line 269
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v2

    .line 270
    const/4 v3, 0x7

    if-ne v0, v3, :cond_2

    .line 272
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 273
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 277
    :cond_2
    if-nez v2, :cond_3

    .line 278
    if-eqz v0, :cond_0

    .line 279
    const-string v1, "Cea708Decoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceNumber is non-zero ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") when blockSize is 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    :cond_3
    iget v2, p0, Lcom/google/android/exoplayer2/text/a/c;->c:I

    if-ne v0, v2, :cond_0

    .line 291
    const/4 v0, 0x0

    .line 293
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/k;->a()I

    move-result v2

    if-lez v2, :cond_d

    .line 294
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v2

    .line 295
    const/16 v3, 0x10

    if-eq v2, v3, :cond_8

    .line 296
    if-gt v2, v7, :cond_4

    .line 297
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/a/c;->a(I)V

    goto :goto_1

    .line 299
    :cond_4
    if-gt v2, v8, :cond_5

    .line 300
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/a/c;->e(I)V

    move v0, v1

    .line 301
    goto :goto_1

    .line 302
    :cond_5
    if-gt v2, v9, :cond_6

    .line 303
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/a/c;->b(I)V

    move v0, v1

    .line 304
    goto :goto_1

    .line 305
    :cond_6
    const/16 v3, 0xff

    if-gt v2, v3, :cond_7

    .line 306
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/a/c;->f(I)V

    move v0, v1

    .line 307
    goto :goto_1

    .line 309
    :cond_7
    const-string v3, "Cea708Decoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid base command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 313
    :cond_8
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v2

    .line 314
    if-gt v2, v7, :cond_9

    .line 315
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/a/c;->c(I)V

    goto :goto_1

    .line 316
    :cond_9
    if-gt v2, v8, :cond_a

    .line 317
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/a/c;->g(I)V

    move v0, v1

    .line 318
    goto :goto_1

    .line 319
    :cond_a
    if-gt v2, v9, :cond_b

    .line 320
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/a/c;->d(I)V

    goto :goto_1

    .line 321
    :cond_b
    const/16 v3, 0xff

    if-gt v2, v3, :cond_c

    .line 322
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/a/c;->h(I)V

    move v0, v1

    .line 323
    goto :goto_1

    .line 325
    :cond_c
    const-string v3, "Cea708Decoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid extended command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 330
    :cond_d
    if-eqz v0, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/c;->o()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->f:Ljava/util/List;

    goto/16 :goto_0
.end method

.method private k()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x2

    .line 625
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v1

    .line 626
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v2

    .line 627
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v3

    .line 629
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/k;->c()Z

    move-result v4

    .line 630
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/k;->c()Z

    move-result v5

    .line 631
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v6

    .line 632
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v7

    .line 634
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/text/a/c$a;->a(IIIZZII)V

    .line 636
    return-void
.end method

.method private l()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 641
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v0

    .line 642
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v1

    .line 643
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v2

    .line 644
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v3

    .line 645
    invoke-static {v1, v2, v3, v0}, Lcom/google/android/exoplayer2/text/a/c$a;->a(IIII)I

    move-result v0

    .line 648
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v1

    .line 649
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v2

    .line 650
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v3

    .line 651
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v4

    .line 652
    invoke-static {v2, v3, v4, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(IIII)I

    move-result v1

    .line 655
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 656
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v2

    .line 657
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v3

    .line 658
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v4

    .line 659
    invoke-static {v2, v3, v4}, Lcom/google/android/exoplayer2/text/a/c$a;->b(III)I

    move-result v2

    .line 661
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/android/exoplayer2/text/a/c$a;->a(III)V

    .line 662
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 667
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 668
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v0

    .line 670
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 671
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v1

    .line 673
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/text/a/c$a;->a(II)V

    .line 674
    return-void
.end method

.method private n()V
    .locals 9

    .prologue
    const/4 v7, 0x2

    .line 679
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v0

    .line 680
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v1

    .line 681
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v2

    .line 682
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v3

    .line 683
    invoke-static {v1, v2, v3, v0}, Lcom/google/android/exoplayer2/text/a/c$a;->a(IIII)I

    move-result v1

    .line 685
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v4

    .line 686
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v0

    .line 687
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v2

    .line 688
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v3

    .line 689
    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/text/a/c$a;->b(III)I

    move-result v2

    .line 691
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    or-int/lit8 v4, v4, 0x4

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/k;->c()Z

    move-result v3

    .line 695
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v5

    .line 696
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v6

    .line 697
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v7

    .line 700
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->b:Lcom/google/android/exoplayer2/util/k;

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 702
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/text/a/c$a;->a(IIZIIII)V

    .line 704
    return-void
.end method

.method private o()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 737
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 738
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    .line 739
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->d:[Lcom/google/android/exoplayer2/text/a/c$a;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/a/c$a;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->d:[Lcom/google/android/exoplayer2/text/a/c$a;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/a/c$a;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 740
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->d:[Lcom/google/android/exoplayer2/text/a/c$a;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/a/c$a;->h()Lcom/google/android/exoplayer2/text/a/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 743
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 744
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 748
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 749
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/c;->d:[Lcom/google/android/exoplayer2/text/a/c$a;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/a/c$a;->b()V

    .line 748
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 751
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a(J)V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/text/a/d;->a(J)V

    return-void
.end method

.method protected a(Lcom/google/android/exoplayer2/text/h;)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x3

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->a:Lcom/google/android/exoplayer2/util/l;

    iget-object v3, p1, Lcom/google/android/exoplayer2/text/h;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/exoplayer2/text/h;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/util/l;->a([BI)V

    .line 200
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    if-lt v0, v8, :cond_7

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 203
    and-int/lit8 v3, v0, 0x3

    .line 204
    and-int/lit8 v0, v0, 0x4

    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    move v0, v1

    .line 205
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/a/c;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v4

    int-to-byte v4, v4

    .line 206
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/a/c;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v5

    int-to-byte v5, v5

    .line 209
    if-eq v3, v9, :cond_1

    if-ne v3, v8, :cond_0

    .line 213
    :cond_1
    if-eqz v0, :cond_0

    .line 218
    if-ne v3, v8, :cond_4

    .line 219
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/c;->i()V

    .line 221
    and-int/lit16 v0, v4, 0xc0

    shr-int/lit8 v3, v0, 0x6

    .line 222
    and-int/lit8 v0, v4, 0x3f

    .line 223
    if-nez v0, :cond_2

    .line 224
    const/16 v0, 0x40

    .line 227
    :cond_2
    new-instance v4, Lcom/google/android/exoplayer2/text/a/c$b;

    invoke-direct {v4, v3, v0}, Lcom/google/android/exoplayer2/text/a/c$b;-><init>(II)V

    iput-object v4, p0, Lcom/google/android/exoplayer2/text/a/c;->h:Lcom/google/android/exoplayer2/text/a/c$b;

    .line 228
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->h:Lcom/google/android/exoplayer2/text/a/c$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/text/a/c$b;->c:[B

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/a/c;->h:Lcom/google/android/exoplayer2/text/a/c$b;

    iget v4, v3, Lcom/google/android/exoplayer2/text/a/c$b;->d:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v3, Lcom/google/android/exoplayer2/text/a/c$b;->d:I

    aput-byte v5, v0, v4

    .line 242
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->h:Lcom/google/android/exoplayer2/text/a/c$b;

    iget v0, v0, Lcom/google/android/exoplayer2/text/a/c$b;->d:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/a/c;->h:Lcom/google/android/exoplayer2/text/a/c$b;

    iget v3, v3, Lcom/google/android/exoplayer2/text/a/c$b;->b:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/c;->i()V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 204
    goto :goto_1

    .line 231
    :cond_4
    if-ne v3, v9, :cond_5

    move v0, v1

    :goto_3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->h:Lcom/google/android/exoplayer2/text/a/c$b;

    if-nez v0, :cond_6

    .line 234
    const-string v0, "Cea708Decoder"

    const-string v3, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move v0, v2

    .line 231
    goto :goto_3

    .line 238
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->h:Lcom/google/android/exoplayer2/text/a/c$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/text/a/c$b;->c:[B

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/a/c;->h:Lcom/google/android/exoplayer2/text/a/c$b;

    iget v6, v3, Lcom/google/android/exoplayer2/text/a/c$b;->d:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v3, Lcom/google/android/exoplayer2/text/a/c$b;->d:I

    aput-byte v4, v0, v6

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->h:Lcom/google/android/exoplayer2/text/a/c$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/text/a/c$b;->c:[B

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/a/c;->h:Lcom/google/android/exoplayer2/text/a/c$b;

    iget v4, v3, Lcom/google/android/exoplayer2/text/a/c$b;->d:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v3, Lcom/google/android/exoplayer2/text/a/c$b;->d:I

    aput-byte v5, v0, v4

    goto :goto_2

    .line 246
    :cond_7
    return-void
.end method

.method public bridge synthetic b(Lcom/google/android/exoplayer2/text/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/text/a/d;->b(Lcom/google/android/exoplayer2/text/h;)V

    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/a/d;->c()V

    .line 178
    iput-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->f:Ljava/util/List;

    .line 179
    iput-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->g:Ljava/util/List;

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/text/a/c;->i:I

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->d:[Lcom/google/android/exoplayer2/text/a/c$a;

    iget v1, p0, Lcom/google/android/exoplayer2/text/a/c;->i:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->e:Lcom/google/android/exoplayer2/text/a/c$a;

    .line 182
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/c;->p()V

    .line 183
    iput-object v2, p0, Lcom/google/android/exoplayer2/text/a/c;->h:Lcom/google/android/exoplayer2/text/a/c$b;

    .line 184
    return-void
.end method

.method public bridge synthetic d()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/a/d;->d()V

    return-void
.end method

.method protected e()Z
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/c;->g:Ljava/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f()Lcom/google/android/exoplayer2/text/e;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/c;->g:Ljava/util/List;

    .line 194
    new-instance v0, Lcom/google/android/exoplayer2/text/a/f;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/c;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/text/a/f;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic g()Lcom/google/android/exoplayer2/text/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/a/d;->g()Lcom/google/android/exoplayer2/text/i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Lcom/google/android/exoplayer2/text/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/a/d;->h()Lcom/google/android/exoplayer2/text/h;

    move-result-object v0

    return-object v0
.end method
