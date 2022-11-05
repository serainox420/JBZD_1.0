.class public final Lcom/google/android/exoplayer2/text/a/a;
.super Lcom/google/android/exoplayer2/text/a/d;
.source "Cea608Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/a/a$a;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I

.field private static final g:[I


# instance fields
.field private final h:Lcom/google/android/exoplayer2/util/l;

.field private final i:I

.field private final j:I

.field private final k:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/exoplayer2/text/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/google/android/exoplayer2/text/a/a$a;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:I

.field private q:Z

.field private r:B

.field private s:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    const/16 v1, 0x8

    .line 57
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/text/a/a;->a:[I

    .line 58
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/text/a/a;->b:[I

    .line 59
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/text/a/a;->c:[I

    .line 118
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/exoplayer2/text/a/a;->d:[I

    .line 146
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/exoplayer2/text/a/a;->e:[I

    .line 166
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/android/exoplayer2/text/a/a;->f:[I

    .line 176
    new-array v0, v2, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/google/android/exoplayer2/text/a/a;->g:[I

    return-void

    .line 57
    nop

    :array_0
    .array-data 4
        0xb
        0x1
        0x3
        0xc
        0xe
        0x5
        0x7
        0x9
    .end array-data

    .line 58
    :array_1
    .array-data 4
        0x0
        0x4
        0x8
        0xc
        0x10
        0x14
        0x18
        0x1c
    .end array-data

    .line 59
    :array_2
    .array-data 4
        -0x1
        -0xff0100
        -0xffff01
        -0xff0001
        -0x10000
        -0x100
        -0xff01
    .end array-data

    .line 118
    :array_3
    .array-data 4
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0xe1
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0xe9
        0x5d
        0xed
        0xf3
        0xfa
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
        0xe7
        0xf7
        0xd1
        0xf1
        0x25a0
    .end array-data

    .line 146
    :array_4
    .array-data 4
        0xae
        0xb0
        0xbd
        0xbf
        0x2122
        0xa2
        0xa3
        0x266a
        0xe0
        0x20
        0xe8
        0xe2
        0xea
        0xee
        0xf4
        0xfb
    .end array-data

    .line 166
    :array_5
    .array-data 4
        0xc1
        0xc9
        0xd3
        0xda
        0xdc
        0xfc
        0x2018
        0xa1
        0x2a
        0x27
        0x2014
        0xa9
        0x2120
        0x2022
        0x201c
        0x201d
        0xc0
        0xc2
        0xc7
        0xc8
        0xca
        0xcb
        0xeb
        0xce
        0xcf
        0xef
        0xd4
        0xd9
        0xf9
        0xdb
        0xab
        0xbb
    .end array-data

    .line 176
    :array_6
    .array-data 4
        0xc3
        0xe3
        0xcd
        0xcc
        0xec
        0xd2
        0xf2
        0xd5
        0xf5
        0x7b
        0x7d
        0x5c
        0x5e
        0x5f
        0x7c
        0x7e
        0xc4
        0xe4
        0xd6
        0xf6
        0xdf
        0xa5
        0xa4
        0x2502
        0xc5
        0xe5
        0xd8
        0xf8
        0x250c
        0x2510
        0x2514
        0x2518
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 201
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/d;-><init>()V

    .line 202
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->h:Lcom/google/android/exoplayer2/util/l;

    .line 203
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->k:Ljava/util/LinkedList;

    .line 204
    new-instance v0, Lcom/google/android/exoplayer2/text/a/a$a;

    const/4 v2, 0x4

    invoke-direct {v0, v3, v2}, Lcom/google/android/exoplayer2/text/a/a$a;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    .line 205
    const-string v0, "application/x-mp4-cea-608"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/text/a/a;->i:I

    .line 206
    packed-switch p2, :pswitch_data_0

    .line 215
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/text/a/a;->j:I

    .line 218
    :goto_1
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/text/a/a;->a(I)V

    .line 219
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/a;->j()V

    .line 220
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 209
    :pswitch_0
    iput v1, p0, Lcom/google/android/exoplayer2/text/a/a;->j:I

    goto :goto_1

    .line 206
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(B)V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 380
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 381
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/text/a/a$a;->a(Z)V

    .line 383
    shr-int/lit8 v0, p1, 0x1

    and-int/lit8 v0, v0, 0xf

    .line 384
    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    .line 385
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/text/a/a$a;->a(Landroid/text/style/CharacterStyle;I)V

    .line 386
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/text/a/a$a;->a(Landroid/text/style/CharacterStyle;I)V

    .line 390
    :goto_1
    return-void

    .line 380
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 388
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    sget-object v4, Lcom/google/android/exoplayer2/text/a/a;->c:[I

    aget v0, v4, v0

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2, v3, v1}, Lcom/google/android/exoplayer2/text/a/a$a;->a(Landroid/text/style/CharacterStyle;I)V

    goto :goto_1
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 502
    iget v0, p0, Lcom/google/android/exoplayer2/text/a/a;->o:I

    if-ne v0, p1, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/text/a/a;->o:I

    .line 507
    iput p1, p0, Lcom/google/android/exoplayer2/text/a/a;->o:I

    .line 510
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/a;->j()V

    .line 511
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_0

    .line 514
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->m:Ljava/util/List;

    goto :goto_0
.end method

.method private a(BB)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 340
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/a/a;->g(B)Z

    move-result v1

    .line 345
    if-eqz v1, :cond_1

    .line 346
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/text/a/a;->q:Z

    if-eqz v2, :cond_0

    iget-byte v2, p0, Lcom/google/android/exoplayer2/text/a/a;->r:B

    if-ne v2, p1, :cond_0

    iget-byte v2, p0, Lcom/google/android/exoplayer2/text/a/a;->s:B

    if-ne v2, p2, :cond_0

    .line 350
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/a/a;->q:Z

    .line 372
    :goto_0
    return v0

    .line 356
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/a/a;->q:Z

    .line 357
    iput-byte p1, p0, Lcom/google/android/exoplayer2/text/a/a;->r:B

    .line 358
    iput-byte p2, p0, Lcom/google/android/exoplayer2/text/a/a;->s:B

    .line 362
    :cond_1
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/text/a/a;->c(BB)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 363
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/a/a;->a(B)V

    :cond_2
    :goto_1
    move v0, v1

    .line 372
    goto :goto_0

    .line 364
    :cond_3
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/text/a/a;->d(BB)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 365
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/text/a/a;->b(BB)V

    goto :goto_1

    .line 366
    :cond_4
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/text/a/a;->e(BB)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 367
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    add-int/lit8 v2, p2, -0x20

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/text/a/a$a;->c(I)V

    goto :goto_1

    .line 368
    :cond_5
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/text/a/a;->f(BB)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/a/a;->b(B)V

    goto :goto_1
.end method

.method private b(B)V
    .locals 3

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 435
    packed-switch p1, :pswitch_data_0

    .line 456
    :pswitch_0
    iget v0, p0, Lcom/google/android/exoplayer2/text/a/a;->o:I

    if-nez v0, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 437
    :pswitch_1
    iput v0, p0, Lcom/google/android/exoplayer2/text/a/a;->p:I

    .line 438
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/a/a;->a(I)V

    goto :goto_0

    .line 441
    :pswitch_2
    iput v2, p0, Lcom/google/android/exoplayer2/text/a/a;->p:I

    .line 442
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/a/a;->a(I)V

    goto :goto_0

    .line 445
    :pswitch_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer2/text/a/a;->p:I

    .line 446
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/a/a;->a(I)V

    goto :goto_0

    .line 449
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/a/a;->a(I)V

    goto :goto_0

    .line 452
    :pswitch_5
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/a/a;->a(I)V

    goto :goto_0

    .line 460
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 482
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/a/a$a;->b()V

    goto :goto_0

    .line 462
    :sswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->m:Ljava/util/List;

    .line 463
    iget v0, p0, Lcom/google/android/exoplayer2/text/a/a;->o:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/exoplayer2/text/a/a;->o:I

    if-ne v0, v2, :cond_0

    .line 464
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/a;->j()V

    goto :goto_0

    .line 468
    :sswitch_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/a;->j()V

    goto :goto_0

    .line 471
    :sswitch_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/a;->i()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->m:Ljava/util/List;

    .line 472
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/a;->j()V

    goto :goto_0

    .line 477
    :sswitch_4
    iget v0, p0, Lcom/google/android/exoplayer2/text/a/a;->o:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/a/a$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/a/a$a;->d()V

    goto :goto_0

    .line 435
    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 460
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2d -> :sswitch_4
        0x2e -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private b(BB)V
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v2, 0x1

    .line 395
    sget-object v0, Lcom/google/android/exoplayer2/text/a/a;->a:[I

    and-int/lit8 v1, p1, 0x7

    aget v0, v0, v1

    .line 402
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_4

    move v1, v2

    .line 403
    :goto_0
    if-eqz v1, :cond_0

    .line 404
    add-int/lit8 v0, v0, 0x1

    .line 407
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/a/a$a;->c()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 408
    iget v1, p0, Lcom/google/android/exoplayer2/text/a/a;->o:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/a/a$a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 409
    new-instance v1, Lcom/google/android/exoplayer2/text/a/a$a;

    iget v3, p0, Lcom/google/android/exoplayer2/text/a/a;->o:I

    iget v4, p0, Lcom/google/android/exoplayer2/text/a/a;->p:I

    invoke-direct {v1, v3, v4}, Lcom/google/android/exoplayer2/text/a/a$a;-><init>(II)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    .line 410
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/a;->k:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/text/a/a$a;->a(I)V

    .line 415
    :cond_2
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v2, :cond_3

    .line 416
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/a$a;->a(Landroid/text/style/CharacterStyle;)V

    .line 421
    :cond_3
    shr-int/lit8 v0, p2, 0x1

    and-int/lit8 v0, v0, 0xf

    .line 422
    if-gt v0, v5, :cond_6

    .line 423
    if-ne v0, v5, :cond_5

    .line 424
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/a$a;->a(Landroid/text/style/CharacterStyle;)V

    .line 425
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a/a$a;->a(Landroid/text/style/CharacterStyle;)V

    .line 432
    :goto_1
    return-void

    .line 402
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 427
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    sget-object v3, Lcom/google/android/exoplayer2/text/a/a;->c:[I

    aget v0, v3, v0

    invoke-direct {v2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/a/a$a;->a(Landroid/text/style/CharacterStyle;)V

    goto :goto_1

    .line 430
    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    sget-object v2, Lcom/google/android/exoplayer2/text/a/a;->b:[I

    and-int/lit8 v0, v0, 0x7

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/text/a/a$a;->b(I)V

    goto :goto_1
.end method

.method private static c(B)C
    .locals 2

    .prologue
    .line 525
    and-int/lit8 v0, p0, 0x7f

    add-int/lit8 v0, v0, -0x20

    .line 526
    sget-object v1, Lcom/google/android/exoplayer2/text/a/a;->d:[I

    aget v0, v1, v0

    int-to-char v0, v0

    return v0
.end method

.method private static c(BB)Z
    .locals 2

    .prologue
    .line 547
    and-int/lit16 v0, p0, 0xf7

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    and-int/lit16 v0, p1, 0xf0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(B)C
    .locals 2

    .prologue
    .line 530
    and-int/lit8 v0, p0, 0xf

    .line 531
    sget-object v1, Lcom/google/android/exoplayer2/text/a/a;->e:[I

    aget v0, v1, v0

    int-to-char v0, v0

    return v0
.end method

.method private static d(BB)Z
    .locals 2

    .prologue
    .line 553
    and-int/lit16 v0, p0, 0xf0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    and-int/lit16 v0, p1, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(B)C
    .locals 2

    .prologue
    .line 535
    and-int/lit8 v0, p0, 0x1f

    .line 536
    sget-object v1, Lcom/google/android/exoplayer2/text/a/a;->f:[I

    aget v0, v1, v0

    int-to-char v0, v0

    return v0
.end method

.method private static e(BB)Z
    .locals 2

    .prologue
    .line 559
    and-int/lit16 v0, p0, 0xf7

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    const/16 v0, 0x23

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f(B)C
    .locals 2

    .prologue
    .line 540
    and-int/lit8 v0, p0, 0x1f

    .line 541
    sget-object v1, Lcom/google/android/exoplayer2/text/a/a;->g:[I

    aget v0, v1, v0

    int-to-char v0, v0

    return v0
.end method

.method private static f(BB)Z
    .locals 2

    .prologue
    .line 565
    and-int/lit16 v0, p0, 0xf7

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    and-int/lit16 v0, p1, 0xf0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g(B)Z
    .locals 2

    .prologue
    .line 570
    and-int/lit16 v0, p0, 0xf0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()Ljava/util/List;
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
    .line 491
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 492
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->k:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/a/a$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/a/a$a;->f()Lcom/google/android/exoplayer2/text/b;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_0

    .line 495
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 498
    :cond_1
    return-object v2
.end method

.method private j()V
    .locals 3

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    iget v1, p0, Lcom/google/android/exoplayer2/text/a/a;->o:I

    iget v2, p0, Lcom/google/android/exoplayer2/text/a/a;->p:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/text/a/a$a;->a(II)V

    .line 520
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 521
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->k:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 522
    return-void
.end method


# virtual methods
.method public bridge synthetic a(J)V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/text/a/d;->a(J)V

    return-void
.end method

.method protected a(Lcom/google/android/exoplayer2/text/h;)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 258
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->h:Lcom/google/android/exoplayer2/util/l;

    iget-object v2, p1, Lcom/google/android/exoplayer2/text/h;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v4, p1, Lcom/google/android/exoplayer2/text/h;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lcom/google/android/exoplayer2/util/l;->a([BI)V

    move v0, v1

    move v2, v1

    .line 261
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/a/a;->h:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v4

    iget v5, p0, Lcom/google/android/exoplayer2/text/a/a;->i:I

    if-lt v4, v5, :cond_a

    .line 262
    iget v4, p0, Lcom/google/android/exoplayer2/text/a/a;->i:I

    if-ne v4, v9, :cond_4

    const/4 v4, -0x4

    .line 264
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/a/a;->h:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v5

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    .line 265
    iget-object v6, p0, Lcom/google/android/exoplayer2/text/a/a;->h:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v6

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    .line 271
    and-int/lit8 v7, v4, 0x6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 276
    iget v7, p0, Lcom/google/android/exoplayer2/text/a/a;->j:I

    if-ne v7, v3, :cond_1

    and-int/lit8 v7, v4, 0x1

    if-nez v7, :cond_0

    :cond_1
    iget v7, p0, Lcom/google/android/exoplayer2/text/a/a;->j:I

    if-ne v7, v9, :cond_2

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_0

    .line 282
    :cond_2
    if-nez v5, :cond_3

    if-eqz v6, :cond_0

    .line 292
    :cond_3
    and-int/lit16 v2, v5, 0xf7

    const/16 v4, 0x11

    if-ne v2, v4, :cond_5

    and-int/lit16 v2, v6, 0xf0

    const/16 v4, 0x30

    if-ne v2, v4, :cond_5

    .line 294
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    invoke-static {v6}, Lcom/google/android/exoplayer2/text/a/a;->d(B)C

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/text/a/a$a;->a(C)V

    move v2, v3

    .line 295
    goto :goto_0

    .line 262
    :cond_4
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/a/a;->h:Lcom/google/android/exoplayer2/util/l;

    .line 263
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v4

    int-to-byte v4, v4

    goto :goto_1

    .line 301
    :cond_5
    and-int/lit16 v2, v5, 0xf6

    const/16 v4, 0x12

    if-ne v2, v4, :cond_7

    and-int/lit16 v2, v6, 0xe0

    const/16 v4, 0x20

    if-ne v2, v4, :cond_7

    .line 304
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/a/a$a;->b()V

    .line 305
    and-int/lit8 v2, v5, 0x1

    if-nez v2, :cond_6

    .line 307
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    invoke-static {v6}, Lcom/google/android/exoplayer2/text/a/a;->e(B)C

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/text/a/a$a;->a(C)V

    move v2, v3

    goto :goto_0

    .line 310
    :cond_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    invoke-static {v6}, Lcom/google/android/exoplayer2/text/a/a;->f(B)C

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/text/a/a$a;->a(C)V

    move v2, v3

    .line 312
    goto/16 :goto_0

    .line 317
    :cond_7
    and-int/lit16 v2, v5, 0xe0

    if-nez v2, :cond_8

    .line 318
    invoke-direct {p0, v5, v6}, Lcom/google/android/exoplayer2/text/a/a;->a(BB)Z

    move-result v0

    move v2, v3

    .line 319
    goto/16 :goto_0

    .line 323
    :cond_8
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    invoke-static {v5}, Lcom/google/android/exoplayer2/text/a/a;->c(B)C

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/text/a/a$a;->a(C)V

    .line 324
    and-int/lit16 v2, v6, 0xe0

    if-eqz v2, :cond_9

    .line 325
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/a;->l:Lcom/google/android/exoplayer2/text/a/a$a;

    invoke-static {v6}, Lcom/google/android/exoplayer2/text/a/a;->c(B)C

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/text/a/a$a;->a(C)V

    :cond_9
    move v2, v3

    .line 327
    goto/16 :goto_0

    .line 329
    :cond_a
    if-eqz v2, :cond_d

    .line 330
    if-nez v0, :cond_b

    .line 331
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/a/a;->q:Z

    .line 333
    :cond_b
    iget v0, p0, Lcom/google/android/exoplayer2/text/a/a;->o:I

    if-eq v0, v3, :cond_c

    iget v0, p0, Lcom/google/android/exoplayer2/text/a/a;->o:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 334
    :cond_c
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/a;->i()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->m:Ljava/util/List;

    .line 337
    :cond_d
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
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/text/a/d;->b(Lcom/google/android/exoplayer2/text/h;)V

    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 229
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/a/d;->c()V

    .line 230
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->m:Ljava/util/List;

    .line 231
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->n:Ljava/util/List;

    .line 232
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/a/a;->a(I)V

    .line 233
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/a;->j()V

    .line 234
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer2/text/a/a;->p:I

    .line 235
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/a/a;->q:Z

    .line 236
    iput-byte v1, p0, Lcom/google/android/exoplayer2/text/a/a;->r:B

    .line 237
    iput-byte v1, p0, Lcom/google/android/exoplayer2/text/a/a;->s:B

    .line 238
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method protected e()Z
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/a;->n:Ljava/util/List;

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
    .line 252
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->m:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/a;->n:Ljava/util/List;

    .line 253
    new-instance v0, Lcom/google/android/exoplayer2/text/a/f;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/a;->m:Ljava/util/List;

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
    .line 42
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
    .line 42
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/a/d;->h()Lcom/google/android/exoplayer2/text/h;

    move-result-object v0

    return-object v0
.end method
