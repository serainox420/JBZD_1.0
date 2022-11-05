.class Lcom/google/android/exoplayer2/source/b/c;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/b/c$a;,
        Lcom/google/android/exoplayer2/source/b/c$c;,
        Lcom/google/android/exoplayer2/source/b/c$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/e;

.field private final b:Lcom/google/android/exoplayer2/upstream/e;

.field private final c:Lcom/google/android/exoplayer2/source/b/k;

.field private final d:[Lcom/google/android/exoplayer2/source/b/a/a$a;

.field private final e:Lcom/google/android/exoplayer2/source/b/a/e;

.field private final f:Lcom/google/android/exoplayer2/source/l;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:[B

.field private j:Ljava/io/IOException;

.field private k:Landroid/net/Uri;

.field private l:[B

.field private m:Ljava/lang/String;

.field private n:[B

.field private o:Lcom/google/android/exoplayer2/b/f;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/b/a/e;[Lcom/google/android/exoplayer2/source/b/a/a$a;Lcom/google/android/exoplayer2/source/b/d;Lcom/google/android/exoplayer2/source/b/k;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/b/a/e;",
            "[",
            "Lcom/google/android/exoplayer2/source/b/a/a$a;",
            "Lcom/google/android/exoplayer2/source/b/d;",
            "Lcom/google/android/exoplayer2/source/b/k;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b/c;->e:Lcom/google/android/exoplayer2/source/b/a/e;

    .line 120
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/b/c;->d:[Lcom/google/android/exoplayer2/source/b/a/a$a;

    .line 121
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/b/c;->c:Lcom/google/android/exoplayer2/source/b/k;

    .line 122
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/b/c;->g:Ljava/util/List;

    .line 123
    array-length v0, p2

    new-array v1, v0, [Lcom/google/android/exoplayer2/Format;

    .line 124
    array-length v0, p2

    new-array v2, v0, [I

    .line 125
    const/4 v0, 0x0

    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 126
    aget-object v3, p2, v0

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/b/a/a$a;->b:Lcom/google/android/exoplayer2/Format;

    aput-object v3, v1, v0

    .line 127
    aput v0, v2, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Lcom/google/android/exoplayer2/source/b/d;->a(I)Lcom/google/android/exoplayer2/upstream/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/c;->a:Lcom/google/android/exoplayer2/upstream/e;

    .line 130
    const/4 v0, 0x3

    invoke-interface {p3, v0}, Lcom/google/android/exoplayer2/source/b/d;->a(I)Lcom/google/android/exoplayer2/upstream/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/c;->b:Lcom/google/android/exoplayer2/upstream/e;

    .line 131
    new-instance v0, Lcom/google/android/exoplayer2/source/l;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/l;-><init>([Lcom/google/android/exoplayer2/Format;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/c;->f:Lcom/google/android/exoplayer2/source/l;

    .line 132
    new-instance v0, Lcom/google/android/exoplayer2/source/b/c$c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/c;->f:Lcom/google/android/exoplayer2/source/l;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/b/c$c;-><init>(Lcom/google/android/exoplayer2/source/l;[I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/c;->o:Lcom/google/android/exoplayer2/b/f;

    .line 133
    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/Object;)Lcom/google/android/exoplayer2/source/b/c$a;
    .locals 9

    .prologue
    .line 346
    new-instance v0, Lcom/google/android/exoplayer2/upstream/g;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/g;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 347
    new-instance v1, Lcom/google/android/exoplayer2/source/b/c$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/c;->b:Lcom/google/android/exoplayer2/upstream/e;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/b/c;->d:[Lcom/google/android/exoplayer2/source/b/a/a$a;

    aget-object v3, v3, p3

    iget-object v4, v3, Lcom/google/android/exoplayer2/source/b/a/a$a;->b:Lcom/google/android/exoplayer2/Format;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/b/c;->i:[B

    move-object v3, v0

    move v5, p4

    move-object v6, p5

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/b/c$a;-><init>(Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/g;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;[BLjava/lang/String;)V

    return-object v1
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 5

    .prologue
    const/16 v3, 0x10

    .line 353
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 359
    :goto_0
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 360
    new-array v2, v3, [B

    .line 361
    array-length v0, v1

    if-le v0, v3, :cond_1

    array-length v0, v1

    add-int/lit8 v0, v0, -0x10

    .line 362
    :goto_1
    array-length v3, v2

    array-length v4, v1

    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    array-length v4, v1

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b/c;->k:Landroid/net/Uri;

    .line 366
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/b/c;->l:[B

    .line 367
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/b/c;->m:Ljava/lang/String;

    .line 368
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/b/c;->n:[B

    .line 369
    return-void

    :cond_0
    move-object v0, p2

    .line 356
    goto :goto_0

    .line 361
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 372
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/c;->k:Landroid/net/Uri;

    .line 373
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/c;->l:[B

    .line 374
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/c;->m:Ljava/lang/String;

    .line 375
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/c;->n:[B

    .line 376
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/c;->j:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/c;->j:Ljava/io/IOException;

    throw v0

    .line 145
    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/b/f;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b/c;->o:Lcom/google/android/exoplayer2/b/f;

    .line 161
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/a/c;)V
    .locals 3

    .prologue
    .line 304
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/b/c$a;

    if-eqz v0, :cond_0

    .line 305
    check-cast p1, Lcom/google/android/exoplayer2/source/b/c$a;

    .line 306
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/b/c$a;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/c;->i:[B

    .line 307
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/b/c$a;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/g;->a:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/b/c$a;->i:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/b/c$a;->f()[B

    move-result-object v2

    .line 307
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/source/b/c;->a(Landroid/net/Uri;Ljava/lang/String;[B)V

    .line 310
    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/b/a/a$a;J)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 333
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/c;->f:Lcom/google/android/exoplayer2/source/l;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/b/a/a$a;->b:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/l;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    .line 334
    if-eq v0, v2, :cond_0

    .line 335
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/c;->o:Lcom/google/android/exoplayer2/b/f;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/b/f;->c(I)I

    move-result v0

    .line 336
    if-eq v0, v2, :cond_0

    .line 337
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/c;->o:Lcom/google/android/exoplayer2/b/f;

    invoke-interface {v1, v0, p2, p3}, Lcom/google/android/exoplayer2/b/f;->a(IJ)Z

    .line 340
    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/b/f;JLcom/google/android/exoplayer2/source/b/c$b;)V
    .locals 24

    .prologue
    .line 195
    if-nez p1, :cond_0

    const/4 v6, -0x1

    .line 199
    :goto_0
    if-nez p1, :cond_1

    const-wide/16 v2, 0x0

    .line 203
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/b/c;->o:Lcom/google/android/exoplayer2/b/f;

    invoke-interface {v4, v2, v3}, Lcom/google/android/exoplayer2/b/f;->a(J)V

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/c;->o:Lcom/google/android/exoplayer2/b/f;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/b/f;->g()I

    move-result v5

    .line 206
    if-eq v6, v5, :cond_2

    const/4 v2, 0x1

    .line 207
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/b/c;->d:[Lcom/google/android/exoplayer2/source/b/a/a$a;

    aget-object v4, v3, v5

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/b/c;->e:Lcom/google/android/exoplayer2/source/b/a/e;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/b/a/e;->b(Lcom/google/android/exoplayer2/source/b/a/a$a;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 209
    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/b/c$b;->c:Lcom/google/android/exoplayer2/source/b/a/a$a;

    .line 295
    :goto_3
    return-void

    .line 195
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/c;->f:Lcom/google/android/exoplayer2/source/l;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/b/f;->c:Lcom/google/android/exoplayer2/Format;

    .line 196
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/l;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v6

    goto :goto_0

    .line 199
    :cond_1
    const-wide/16 v2, 0x0

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/b/f;->f:J

    sub-long v4, v4, p2

    .line 200
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_1

    .line 206
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 213
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/b/c;->e:Lcom/google/android/exoplayer2/source/b/a/e;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/b/a/e;->a(Lcom/google/android/exoplayer2/source/b/a/a$a;)Lcom/google/android/exoplayer2/source/b/a/b;

    move-result-object v3

    .line 217
    if-eqz p1, :cond_4

    if-eqz v2, :cond_a

    .line 218
    :cond_4
    if-nez p1, :cond_6

    .line 219
    :goto_4
    iget-boolean v2, v3, Lcom/google/android/exoplayer2/source/b/a/b;->i:Z

    if-nez v2, :cond_7

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/b/a/b;->a()J

    move-result-wide v8

    cmp-long v2, p2, v8

    if-lez v2, :cond_7

    .line 221
    iget v2, v3, Lcom/google/android/exoplayer2/source/b/a/b;->f:I

    iget-object v6, v3, Lcom/google/android/exoplayer2/source/b/a/b;->l:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v2, v6

    :cond_5
    :goto_5
    move/from16 v16, v2

    move-object v9, v3

    move-object/from16 v20, v4

    .line 238
    :goto_6
    iget v2, v9, Lcom/google/android/exoplayer2/source/b/a/b;->f:I

    move/from16 v0, v16

    if-ge v0, v2, :cond_b

    .line 239
    new-instance v2, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/b/c;->j:Ljava/io/IOException;

    goto :goto_3

    .line 218
    :cond_6
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/b/f;->f:J

    move-wide/from16 p2, v0

    goto :goto_4

    .line 223
    :cond_7
    iget-object v7, v3, Lcom/google/android/exoplayer2/source/b/a/b;->l:Ljava/util/List;

    iget-wide v8, v3, Lcom/google/android/exoplayer2/source/b/a/b;->c:J

    sub-long v8, p2, v8

    .line 224
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/c;->e:Lcom/google/android/exoplayer2/source/b/a/e;

    .line 225
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/b/a/e;->e()Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez p1, :cond_9

    :cond_8
    const/4 v2, 0x1

    .line 223
    :goto_7
    invoke-static {v7, v8, v9, v2}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/util/List;Ljava/lang/Object;ZZ)I

    move-result v2

    iget v7, v3, Lcom/google/android/exoplayer2/source/b/a/b;->f:I

    add-int/2addr v2, v7

    .line 226
    iget v7, v3, Lcom/google/android/exoplayer2/source/b/a/b;->f:I

    if-ge v2, v7, :cond_5

    if-eqz p1, :cond_5

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/c;->d:[Lcom/google/android/exoplayer2/source/b/a/a$a;

    aget-object v4, v2, v6

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/c;->e:Lcom/google/android/exoplayer2/source/b/a/e;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/source/b/a/e;->a(Lcom/google/android/exoplayer2/source/b/a/a$a;)Lcom/google/android/exoplayer2/source/b/a/b;

    move-result-object v3

    .line 232
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/b/f;->f()I

    move-result v2

    move v5, v6

    goto :goto_5

    .line 225
    :cond_9
    const/4 v2, 0x0

    goto :goto_7

    .line 236
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/b/f;->f()I

    move-result v16

    move-object v9, v3

    move-object/from16 v20, v4

    goto :goto_6

    .line 243
    :cond_b
    iget v2, v9, Lcom/google/android/exoplayer2/source/b/a/b;->f:I

    sub-int v2, v16, v2

    .line 244
    iget-object v3, v9, Lcom/google/android/exoplayer2/source/b/a/b;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_d

    .line 245
    iget-boolean v2, v9, Lcom/google/android/exoplayer2/source/b/a/b;->i:Z

    if-eqz v2, :cond_c

    .line 246
    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/b/c$b;->b:Z

    goto/16 :goto_3

    .line 248
    :cond_c
    move-object/from16 v0, v20

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/b/c$b;->c:Lcom/google/android/exoplayer2/source/b/a/a$a;

    goto/16 :goto_3

    .line 254
    :cond_d
    iget-object v3, v9, Lcom/google/android/exoplayer2/source/b/a/b;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/google/android/exoplayer2/source/b/a/b$a;

    .line 257
    iget-boolean v2, v14, Lcom/google/android/exoplayer2/source/b/a/b$a;->e:Z

    if-eqz v2, :cond_10

    .line 258
    iget-object v2, v9, Lcom/google/android/exoplayer2/source/b/a/b;->n:Ljava/lang/String;

    iget-object v3, v14, Lcom/google/android/exoplayer2/source/b/a/b$a;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/u;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/c;->k:Landroid/net/Uri;

    invoke-virtual {v3, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 261
    iget-object v4, v14, Lcom/google/android/exoplayer2/source/b/a/b$a;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/c;->o:Lcom/google/android/exoplayer2/b/f;

    .line 262
    invoke-interface {v2}, Lcom/google/android/exoplayer2/b/f;->b()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/c;->o:Lcom/google/android/exoplayer2/b/f;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/b/f;->c()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v2, p0

    .line 261
    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/b/c;->a(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/Object;)Lcom/google/android/exoplayer2/source/b/c$a;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/b/c$b;->a:Lcom/google/android/exoplayer2/source/a/c;

    goto/16 :goto_3

    .line 265
    :cond_e
    iget-object v2, v14, Lcom/google/android/exoplayer2/source/b/a/b$a;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/b/c;->m:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 266
    iget-object v2, v14, Lcom/google/android/exoplayer2/source/b/a/b$a;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/b/c;->l:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/google/android/exoplayer2/source/b/c;->a(Landroid/net/Uri;Ljava/lang/String;[B)V

    .line 272
    :cond_f
    :goto_8
    const/4 v2, 0x0

    .line 273
    iget-object v6, v9, Lcom/google/android/exoplayer2/source/b/a/b;->k:Lcom/google/android/exoplayer2/source/b/a/b$a;

    .line 274
    if-eqz v6, :cond_11

    .line 275
    iget-object v2, v9, Lcom/google/android/exoplayer2/source/b/a/b;->n:Ljava/lang/String;

    iget-object v3, v6, Lcom/google/android/exoplayer2/source/b/a/b$a;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/u;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 276
    new-instance v2, Lcom/google/android/exoplayer2/upstream/g;

    iget-wide v4, v6, Lcom/google/android/exoplayer2/source/b/a/b$a;->h:J

    iget-wide v6, v6, Lcom/google/android/exoplayer2/source/b/a/b$a;->i:J

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/g;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    move-object/from16 v23, v2

    .line 281
    :goto_9
    iget-wide v2, v9, Lcom/google/android/exoplayer2/source/b/a/b;->c:J

    iget-wide v4, v14, Lcom/google/android/exoplayer2/source/b/a/b$a;->d:J

    add-long v12, v2, v4

    .line 282
    iget v2, v9, Lcom/google/android/exoplayer2/source/b/a/b;->e:I

    iget v3, v14, Lcom/google/android/exoplayer2/source/b/a/b$a;->c:I

    add-int v17, v2, v3

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/c;->c:Lcom/google/android/exoplayer2/source/b/k;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/b/k;->a(I)Lcom/google/android/exoplayer2/util/s;

    move-result-object v19

    .line 288
    iget-object v2, v9, Lcom/google/android/exoplayer2/source/b/a/b;->n:Ljava/lang/String;

    iget-object v3, v14, Lcom/google/android/exoplayer2/source/b/a/b$a;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/u;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 289
    new-instance v2, Lcom/google/android/exoplayer2/upstream/g;

    iget-wide v4, v14, Lcom/google/android/exoplayer2/source/b/a/b$a;->h:J

    iget-wide v6, v14, Lcom/google/android/exoplayer2/source/b/a/b$a;->i:J

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/g;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 291
    new-instance v4, Lcom/google/android/exoplayer2/source/b/f;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/b/c;->a:Lcom/google/android/exoplayer2/upstream/e;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/b/c;->g:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/b/c;->o:Lcom/google/android/exoplayer2/b/f;

    .line 292
    invoke-interface {v3}, Lcom/google/android/exoplayer2/b/f;->b()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/b/c;->o:Lcom/google/android/exoplayer2/b/f;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/b/f;->c()Ljava/lang/Object;

    move-result-object v11

    iget-wide v6, v14, Lcom/google/android/exoplayer2/source/b/a/b$a;->b:J

    add-long v14, v12, v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/b/c;->h:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/b/c;->l:[B

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/b/c;->n:[B

    move-object/from16 v22, v0

    move-object v6, v2

    move-object/from16 v7, v23

    move-object/from16 v8, v20

    move-object/from16 v20, p1

    invoke-direct/range {v4 .. v22}, Lcom/google/android/exoplayer2/source/b/f;-><init>(Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/g;Lcom/google/android/exoplayer2/upstream/g;Lcom/google/android/exoplayer2/source/b/a/a$a;Ljava/util/List;ILjava/lang/Object;JJIIZLcom/google/android/exoplayer2/util/s;Lcom/google/android/exoplayer2/source/b/f;[B[B)V

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/b/c$b;->a:Lcom/google/android/exoplayer2/source/a/c;

    goto/16 :goto_3

    .line 269
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/b/c;->d()V

    goto/16 :goto_8

    :cond_11
    move-object/from16 v23, v2

    goto :goto_9
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/b/c;->h:Z

    .line 178
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/a/c;ZLjava/io/IOException;)Z
    .locals 4

    .prologue
    .line 322
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/c;->o:Lcom/google/android/exoplayer2/b/f;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/c;->o:Lcom/google/android/exoplayer2/b/f;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/c;->f:Lcom/google/android/exoplayer2/source/l;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/a/c;->c:Lcom/google/android/exoplayer2/Format;

    .line 323
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/l;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/b/f;->c(I)I

    move-result v1

    .line 322
    invoke-static {v0, v1, p3}, Lcom/google/android/exoplayer2/source/a/h;->a(Lcom/google/android/exoplayer2/b/f;ILjava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/google/android/exoplayer2/source/l;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/c;->f:Lcom/google/android/exoplayer2/source/l;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/c;->j:Ljava/io/IOException;

    .line 168
    return-void
.end method
