.class public Lcom/google/android/exoplayer2/source/dash/f;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/f$b;,
        Lcom/google/android/exoplayer2/source/dash/f$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/o;

.field private final b:I

.field private final c:Lcom/google/android/exoplayer2/b/f;

.field private final d:[Lcom/google/android/exoplayer2/source/dash/f$b;

.field private final e:Lcom/google/android/exoplayer2/upstream/e;

.field private final f:J

.field private final g:I

.field private h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

.field private i:I

.field private j:Ljava/io/IOException;

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/o;Lcom/google/android/exoplayer2/source/dash/manifest/b;IILcom/google/android/exoplayer2/b/f;Lcom/google/android/exoplayer2/upstream/e;JIZZ)V
    .locals 13

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/f;->a:Lcom/google/android/exoplayer2/upstream/o;

    .line 120
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/f;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    .line 121
    move/from16 v0, p4

    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->b:I

    .line 122
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->c:Lcom/google/android/exoplayer2/b/f;

    .line 123
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->e:Lcom/google/android/exoplayer2/upstream/e;

    .line 124
    move/from16 v0, p3

    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->i:I

    .line 125
    move-wide/from16 v0, p7

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->f:J

    .line 126
    move/from16 v0, p9

    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->g:I

    .line 128
    invoke-virtual/range {p2 .. p3}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->c(I)J

    move-result-wide v4

    .line 129
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/f;->b()Lcom/google/android/exoplayer2/source/dash/manifest/a;

    move-result-object v10

    .line 130
    iget-object v11, v10, Lcom/google/android/exoplayer2/source/dash/manifest/a;->c:Ljava/util/List;

    .line 131
    invoke-interface/range {p5 .. p5}, Lcom/google/android/exoplayer2/b/f;->e()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/exoplayer2/source/dash/f$b;

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/dash/f;->d:[Lcom/google/android/exoplayer2/source/dash/f$b;

    .line 132
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/f;->d:[Lcom/google/android/exoplayer2/source/dash/f$b;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 133
    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/b/f;->b(I)I

    move-result v3

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/dash/manifest/f;

    .line 134
    iget-object v12, p0, Lcom/google/android/exoplayer2/source/dash/f;->d:[Lcom/google/android/exoplayer2/source/dash/f$b;

    new-instance v3, Lcom/google/android/exoplayer2/source/dash/f$b;

    iget v9, v10, Lcom/google/android/exoplayer2/source/dash/manifest/a;->b:I

    move/from16 v7, p10

    move/from16 v8, p11

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/dash/f$b;-><init>(JLcom/google/android/exoplayer2/source/dash/manifest/f;ZZI)V

    aput-object v3, v12, v2

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/source/dash/f$b;Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;II)Lcom/google/android/exoplayer2/source/a/c;
    .locals 19

    .prologue
    .line 338
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/f$b;->c:Lcom/google/android/exoplayer2/source/dash/manifest/f;

    .line 339
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/f$b;->a(I)J

    move-result-wide v10

    .line 340
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/f$b;->c(I)Lcom/google/android/exoplayer2/source/dash/manifest/e;

    move-result-object v6

    .line 341
    iget-object v4, v9, Lcom/google/android/exoplayer2/source/dash/manifest/f;->d:Ljava/lang/String;

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/f$b;->b:Lcom/google/android/exoplayer2/source/a/d;

    if-nez v2, :cond_0

    .line 343
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/f$b;->b(I)J

    move-result-wide v12

    .line 344
    new-instance v2, Lcom/google/android/exoplayer2/upstream/g;

    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/e;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-wide v4, v6, Lcom/google/android/exoplayer2/source/dash/manifest/e;->a:J

    iget-wide v6, v6, Lcom/google/android/exoplayer2/source/dash/manifest/e;->b:J

    .line 345
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/dash/manifest/f;->f()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/g;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 346
    new-instance v4, Lcom/google/android/exoplayer2/source/a/m;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer2/source/dash/f$b;->a:I

    move-object/from16 v5, p1

    move-object v6, v2

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v14, p5

    move-object/from16 v16, p2

    invoke-direct/range {v4 .. v16}, Lcom/google/android/exoplayer2/source/a/m;-><init>(Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/g;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJIILcom/google/android/exoplayer2/Format;)V

    .line 365
    :goto_0
    return-object v4

    .line 350
    :cond_0
    const/4 v15, 0x1

    .line 351
    const/4 v2, 0x1

    :goto_1
    move/from16 v0, p6

    if-ge v2, v0, :cond_1

    .line 352
    add-int v3, p5, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/source/dash/f$b;->c(I)Lcom/google/android/exoplayer2/source/dash/manifest/e;

    move-result-object v3

    .line 353
    invoke-virtual {v6, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/e;->a(Lcom/google/android/exoplayer2/source/dash/manifest/e;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/e;

    move-result-object v3

    .line 354
    if-nez v3, :cond_2

    .line 361
    :cond_1
    add-int v2, p5, v15

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/dash/f$b;->b(I)J

    move-result-wide v12

    .line 362
    new-instance v2, Lcom/google/android/exoplayer2/upstream/g;

    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/e;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-wide v4, v6, Lcom/google/android/exoplayer2/source/dash/manifest/e;->a:J

    iget-wide v6, v6, Lcom/google/android/exoplayer2/source/dash/manifest/e;->b:J

    .line 363
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/dash/manifest/f;->f()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/g;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 364
    iget-wide v4, v9, Lcom/google/android/exoplayer2/source/dash/manifest/f;->e:J

    neg-long v0, v4

    move-wide/from16 v16, v0

    .line 365
    new-instance v4, Lcom/google/android/exoplayer2/source/a/i;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/f$b;->b:Lcom/google/android/exoplayer2/source/a/d;

    move-object/from16 v18, v0

    move-object/from16 v5, p1

    move-object v6, v2

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v14, p5

    invoke-direct/range {v4 .. v18}, Lcom/google/android/exoplayer2/source/a/i;-><init>(Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/g;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJIIJLcom/google/android/exoplayer2/source/a/d;)V

    goto :goto_0

    .line 359
    :cond_2
    add-int/lit8 v15, v15, 0x1

    .line 351
    add-int/lit8 v2, v2, 0x1

    move-object v6, v3

    goto :goto_1
.end method

.method private static a(Lcom/google/android/exoplayer2/source/dash/f$b;Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/dash/manifest/e;Lcom/google/android/exoplayer2/source/dash/manifest/e;)Lcom/google/android/exoplayer2/source/a/c;
    .locals 8

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->c:Lcom/google/android/exoplayer2/source/dash/manifest/f;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/f;->d:Ljava/lang/String;

    .line 319
    if-eqz p5, :cond_0

    .line 322
    invoke-virtual {p5, p6, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/e;->a(Lcom/google/android/exoplayer2/source/dash/manifest/e;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/e;

    move-result-object p6

    .line 323
    if-nez p6, :cond_1

    .line 329
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/g;

    invoke-virtual {p5, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/e;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p5, Lcom/google/android/exoplayer2/source/dash/manifest/e;->a:J

    iget-wide v4, p5, Lcom/google/android/exoplayer2/source/dash/manifest/e;->b:J

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->c:Lcom/google/android/exoplayer2/source/dash/manifest/f;

    .line 330
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/dash/manifest/f;->f()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/g;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 331
    new-instance v1, Lcom/google/android/exoplayer2/source/a/k;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/dash/f$b;->b:Lcom/google/android/exoplayer2/source/a/d;

    move-object v2, p1

    move-object v3, v0

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/a/k;-><init>(Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/g;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/a/d;)V

    return-object v1

    :cond_0
    move-object p5, p6

    .line 327
    goto :goto_0

    :cond_1
    move-object p5, p6

    goto :goto_0
.end method

.method private b()Lcom/google/android/exoplayer2/source/dash/manifest/a;
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/f;->i:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/d;->c:Ljava/util/List;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/f;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/a;

    return-object v0
.end method

.method private c()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 307
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 308
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/f;->f:J

    add-long/2addr v0, v2

    mul-long/2addr v0, v4

    .line 310
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-long/2addr v0, v4

    goto :goto_0
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
    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->j:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->j:Ljava/io/IOException;

    throw v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->a:Lcom/google/android/exoplayer2/upstream/o;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/o;->d()V

    .line 162
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/a/c;)V
    .locals 3

    .prologue
    .line 259
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/a/k;

    if-eqz v0, :cond_0

    .line 260
    check-cast p1, Lcom/google/android/exoplayer2/source/a/k;

    .line 261
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->d:[Lcom/google/android/exoplayer2/source/dash/f$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/f;->c:Lcom/google/android/exoplayer2/b/f;

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/a/k;->c:Lcom/google/android/exoplayer2/Format;

    .line 262
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/b/f;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    aget-object v1, v0, v1

    .line 266
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/f$b;->d:Lcom/google/android/exoplayer2/source/dash/d;

    if-nez v0, :cond_0

    .line 267
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/f$b;->b:Lcom/google/android/exoplayer2/source/a/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a/d;->b()Lcom/google/android/exoplayer2/extractor/m;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_0

    .line 269
    new-instance v2, Lcom/google/android/exoplayer2/source/dash/e;

    check-cast v0, Lcom/google/android/exoplayer2/extractor/a;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/source/dash/e;-><init>(Lcom/google/android/exoplayer2/extractor/a;)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/source/dash/f$b;->d:Lcom/google/android/exoplayer2/source/dash/d;

    .line 273
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/a/l;JLcom/google/android/exoplayer2/source/a/e;)V
    .locals 10

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->j:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 178
    :cond_0
    if-eqz p1, :cond_4

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/a/l;->g:J

    sub-long/2addr v0, p2

    .line 179
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/f;->c:Lcom/google/android/exoplayer2/b/f;

    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer2/b/f;->a(J)V

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->d:[Lcom/google/android/exoplayer2/source/dash/f$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/f;->c:Lcom/google/android/exoplayer2/b/f;

    .line 182
    invoke-interface {v1}, Lcom/google/android/exoplayer2/b/f;->a()I

    move-result v1

    aget-object v0, v0, v1

    .line 184
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/f$b;->b:Lcom/google/android/exoplayer2/source/a/d;

    if-eqz v1, :cond_5

    .line 185
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/f$b;->c:Lcom/google/android/exoplayer2/source/dash/manifest/f;

    .line 186
    const/4 v5, 0x0

    .line 187
    const/4 v6, 0x0

    .line 188
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/f$b;->b:Lcom/google/android/exoplayer2/source/a/d;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/a/d;->c()[Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    if-nez v2, :cond_1

    .line 189
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/f;->c()Lcom/google/android/exoplayer2/source/dash/manifest/e;

    move-result-object v5

    .line 191
    :cond_1
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/f$b;->d:Lcom/google/android/exoplayer2/source/dash/d;

    if-nez v2, :cond_2

    .line 192
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/f;->d()Lcom/google/android/exoplayer2/source/dash/manifest/e;

    move-result-object v6

    .line 194
    :cond_2
    if-nez v5, :cond_3

    if-eqz v6, :cond_5

    .line 196
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/f;->e:Lcom/google/android/exoplayer2/upstream/e;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/f;->c:Lcom/google/android/exoplayer2/b/f;

    .line 197
    invoke-interface {v2}, Lcom/google/android/exoplayer2/b/f;->f()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/f;->c:Lcom/google/android/exoplayer2/b/f;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/b/f;->b()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/f;->c:Lcom/google/android/exoplayer2/b/f;

    .line 198
    invoke-interface {v4}, Lcom/google/android/exoplayer2/b/f;->c()Ljava/lang/Object;

    move-result-object v4

    .line 196
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/dash/f;->a(Lcom/google/android/exoplayer2/source/dash/f$b;Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/dash/manifest/e;Lcom/google/android/exoplayer2/source/dash/manifest/e;)Lcom/google/android/exoplayer2/source/a/c;

    move-result-object v0

    iput-object v0, p4, Lcom/google/android/exoplayer2/source/a/e;->a:Lcom/google/android/exoplayer2/source/a/c;

    goto :goto_0

    .line 178
    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 203
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/f;->c()J

    move-result-wide v2

    .line 204
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/f$b;->b()I

    move-result v4

    .line 205
    if-nez v4, :cond_8

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/b;->d:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->i:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/f;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_7

    :cond_6
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p4, Lcom/google/android/exoplayer2/source/a/e;->b:Z

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 211
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/f$b;->a()I

    move-result v1

    .line 213
    const/4 v5, -0x1

    if-ne v4, v5, :cond_d

    .line 216
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/f;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    .line 217
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/f;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget v5, p0, Lcom/google/android/exoplayer2/source/dash/f;->i:I

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/d;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/d;->b:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 218
    sub-long/2addr v2, v4

    .line 219
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/f;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/b;->f:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-eqz v4, :cond_9

    .line 220
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/f;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/b;->f:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 221
    sub-long v4, v2, v4

    .line 222
    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/source/dash/f$b;->a(J)I

    move-result v4

    .line 221
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 226
    :cond_9
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/source/dash/f$b;->a(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v8, v2

    move v2, v1

    move v1, v8

    .line 232
    :goto_3
    if-nez p1, :cond_e

    .line 233
    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/source/dash/f$b;->a(J)I

    move-result v3

    invoke-static {v3, v2, v1}, Lcom/google/android/exoplayer2/util/v;->a(III)I

    move-result v5

    .line 244
    :cond_a
    if-gt v5, v1, :cond_b

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/dash/f;->k:Z

    if-eqz v2, :cond_10

    if-lt v5, v1, :cond_10

    .line 247
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/b;->d:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->i:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/f;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_f

    :cond_c
    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p4, Lcom/google/android/exoplayer2/source/a/e;->b:Z

    goto/16 :goto_0

    .line 228
    :cond_d
    add-int v2, v1, v4

    add-int/lit8 v2, v2, -0x1

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_3

    .line 236
    :cond_e
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/a/l;->f()I

    move-result v5

    .line 237
    if-ge v5, v2, :cond_a

    .line 239
    new-instance v0, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->j:Ljava/io/IOException;

    goto/16 :goto_0

    .line 247
    :cond_f
    const/4 v0, 0x0

    goto :goto_4

    .line 251
    :cond_10
    iget v2, p0, Lcom/google/android/exoplayer2/source/dash/f;->g:I

    sub-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 252
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/f;->e:Lcom/google/android/exoplayer2/upstream/e;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/f;->c:Lcom/google/android/exoplayer2/b/f;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/b/f;->f()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/f;->c:Lcom/google/android/exoplayer2/b/f;

    .line 253
    invoke-interface {v3}, Lcom/google/android/exoplayer2/b/f;->b()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/f;->c:Lcom/google/android/exoplayer2/b/f;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/b/f;->c()Ljava/lang/Object;

    move-result-object v4

    .line 252
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/dash/f;->a(Lcom/google/android/exoplayer2/source/dash/f$b;Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;II)Lcom/google/android/exoplayer2/source/a/c;

    move-result-object v0

    iput-object v0, p4, Lcom/google/android/exoplayer2/source/a/e;->a:Lcom/google/android/exoplayer2/source/a/c;

    goto/16 :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/source/dash/manifest/b;I)V
    .locals 6

    .prologue
    .line 142
    :try_start_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/f;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    .line 143
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/f;->i:I

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/f;->i:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->c(I)J

    move-result-wide v2

    .line 145
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/f;->b()Lcom/google/android/exoplayer2/source/dash/manifest/a;

    move-result-object v0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/manifest/a;->c:Ljava/util/List;

    .line 146
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->d:[Lcom/google/android/exoplayer2/source/dash/f$b;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->c:Lcom/google/android/exoplayer2/b/f;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/b/f;->b(I)I

    move-result v0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/f;

    .line 148
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/f;->d:[Lcom/google/android/exoplayer2/source/dash/f$b;

    aget-object v5, v5, v1

    invoke-virtual {v5, v2, v3, v0}, Lcom/google/android/exoplayer2/source/dash/f$b;->a(JLcom/google/android/exoplayer2/source/dash/manifest/f;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/source/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->j:Ljava/io/IOException;

    .line 153
    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/a/c;ZLjava/lang/Exception;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 277
    if-nez p2, :cond_0

    .line 278
    const/4 v0, 0x0

    .line 296
    :goto_0
    return v0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->h:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/b;->d:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/android/exoplayer2/source/a/l;

    if-eqz v0, :cond_1

    instance-of v0, p3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v0, v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v2, 0x194

    if-ne v0, v2, :cond_1

    .line 284
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->d:[Lcom/google/android/exoplayer2/source/dash/f$b;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/f;->c:Lcom/google/android/exoplayer2/b/f;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/a/c;->c:Lcom/google/android/exoplayer2/Format;

    .line 285
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/b/f;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    aget-object v0, v0, v2

    .line 286
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/f$b;->b()I

    move-result v2

    .line 287
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-eqz v2, :cond_1

    .line 288
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/f$b;->a()I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, -0x1

    move-object v0, p1

    .line 289
    check-cast v0, Lcom/google/android/exoplayer2/source/a/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a/l;->f()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 290
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/dash/f;->k:Z

    move v0, v1

    .line 291
    goto :goto_0

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f;->c:Lcom/google/android/exoplayer2/b/f;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/f;->c:Lcom/google/android/exoplayer2/b/f;

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/a/c;->c:Lcom/google/android/exoplayer2/Format;

    .line 297
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/b/f;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    .line 296
    invoke-static {v0, v1, p3}, Lcom/google/android/exoplayer2/source/a/h;->a(Lcom/google/android/exoplayer2/b/f;ILjava/lang/Exception;)Z

    move-result v0

    goto :goto_0
.end method
