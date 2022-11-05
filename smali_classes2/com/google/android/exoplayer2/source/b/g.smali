.class public final Lcom/google/android/exoplayer2/source/b/g;
.super Ljava/lang/Object;
.source "HlsMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/b/a/e$b;
.implements Lcom/google/android/exoplayer2/source/b/j$a;
.implements Lcom/google/android/exoplayer2/source/f;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/b/a/e;

.field private final b:Lcom/google/android/exoplayer2/source/b/d;

.field private final c:I

.field private final d:Lcom/google/android/exoplayer2/source/a$a;

.field private final e:Lcom/google/android/exoplayer2/upstream/b;

.field private final f:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lcom/google/android/exoplayer2/source/i;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/exoplayer2/source/b/k;

.field private final h:Landroid/os/Handler;

.field private final i:J

.field private j:Lcom/google/android/exoplayer2/source/f$a;

.field private k:I

.field private l:Z

.field private m:Lcom/google/android/exoplayer2/source/m;

.field private n:[Lcom/google/android/exoplayer2/source/b/j;

.field private o:[Lcom/google/android/exoplayer2/source/b/j;

.field private p:Lcom/google/android/exoplayer2/source/b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/b/a/e;Lcom/google/android/exoplayer2/source/b/d;ILcom/google/android/exoplayer2/source/a$a;Lcom/google/android/exoplayer2/upstream/b;J)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b/g;->a:Lcom/google/android/exoplayer2/source/b/a/e;

    .line 68
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/b/g;->b:Lcom/google/android/exoplayer2/source/b/d;

    .line 69
    iput p3, p0, Lcom/google/android/exoplayer2/source/b/g;->c:I

    .line 70
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/b/g;->d:Lcom/google/android/exoplayer2/source/a$a;

    .line 71
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/b/g;->e:Lcom/google/android/exoplayer2/upstream/b;

    .line 72
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/g;->f:Ljava/util/IdentityHashMap;

    .line 73
    new-instance v0, Lcom/google/android/exoplayer2/source/b/k;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/b/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/g;->g:Lcom/google/android/exoplayer2/source/b/k;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/g;->h:Landroid/os/Handler;

    .line 75
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/b/g;->i:J

    .line 76
    return-void
.end method

.method private a(I[Lcom/google/android/exoplayer2/source/b/a/a$a;Lcom/google/android/exoplayer2/Format;Ljava/util/List;)Lcom/google/android/exoplayer2/source/b/j;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/google/android/exoplayer2/source/b/a/a$a;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/b/j;"
        }
    .end annotation

    .prologue
    .line 352
    new-instance v0, Lcom/google/android/exoplayer2/source/b/c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/g;->a:Lcom/google/android/exoplayer2/source/b/a/e;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/b/g;->b:Lcom/google/android/exoplayer2/source/b/d;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/b/g;->g:Lcom/google/android/exoplayer2/source/b/k;

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/b/c;-><init>(Lcom/google/android/exoplayer2/source/b/a/e;[Lcom/google/android/exoplayer2/source/b/a/a$a;Lcom/google/android/exoplayer2/source/b/d;Lcom/google/android/exoplayer2/source/b/k;Ljava/util/List;)V

    .line 354
    new-instance v1, Lcom/google/android/exoplayer2/source/b/j;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/b/g;->e:Lcom/google/android/exoplayer2/upstream/b;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/b/g;->i:J

    iget v9, p0, Lcom/google/android/exoplayer2/source/b/g;->c:I

    iget-object v10, p0, Lcom/google/android/exoplayer2/source/b/g;->d:Lcom/google/android/exoplayer2/source/a$a;

    move v2, p1

    move-object v3, p0

    move-object v4, v0

    move-object v8, p3

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/b/j;-><init>(ILcom/google/android/exoplayer2/source/b/j$a;Lcom/google/android/exoplayer2/source/b/c;Lcom/google/android/exoplayer2/upstream/b;JLcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/source/a$a;)V

    return-object v1
.end method

.method private static a(Lcom/google/android/exoplayer2/source/b/a/a$a;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 370
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/a/a$a;->b:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    .line 371
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v0

    .line 374
    :cond_1
    const-string v2, "(\\s*,\\s*)|(\\s*$)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 375
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 376
    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 377
    const/4 v0, 0x1

    goto :goto_0

    .line 375
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private i()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/g;->a:Lcom/google/android/exoplayer2/source/b/a/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b/a/e;->b()Lcom/google/android/exoplayer2/source/b/a/a;

    move-result-object v6

    .line 291
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, v6, Lcom/google/android/exoplayer2/source/b/a/a;->a:Ljava/util/List;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 292
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 293
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 294
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 295
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/a/a$a;

    .line 296
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/b/a/a$a;->b:Lcom/google/android/exoplayer2/Format;

    iget v8, v8, Lcom/google/android/exoplayer2/Format;->k:I

    if-gtz v8, :cond_0

    const-string v8, "avc"

    invoke-static {v0, v8}, Lcom/google/android/exoplayer2/source/b/g;->a(Lcom/google/android/exoplayer2/source/b/a/a$a;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 297
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 298
    :cond_2
    const-string v8, "mp4a"

    invoke-static {v0, v8}, Lcom/google/android/exoplayer2/source/b/g;->a(Lcom/google/android/exoplayer2/source/b/a/a$a;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 299
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 302
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v3

    .line 314
    :goto_2
    iget-object v7, v6, Lcom/google/android/exoplayer2/source/b/a/a;->b:Ljava/util/List;

    .line 315
    iget-object v8, v6, Lcom/google/android/exoplayer2/source/b/a/a;->c:Ljava/util/List;

    .line 316
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 317
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    new-array v1, v1, [Lcom/google/android/exoplayer2/source/b/j;

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/b/g;->n:[Lcom/google/android/exoplayer2/source/b/j;

    .line 319
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/g;->n:[Lcom/google/android/exoplayer2/source/b/j;

    array-length v1, v1

    iput v1, p0, Lcom/google/android/exoplayer2/source/b/g;->k:I

    .line 321
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v5

    :goto_3
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 322
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/exoplayer2/source/b/a/a$a;

    .line 323
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 324
    iget-object v0, v6, Lcom/google/android/exoplayer2/source/b/a/a;->d:Lcom/google/android/exoplayer2/Format;

    iget-object v3, v6, Lcom/google/android/exoplayer2/source/b/a/a;->e:Ljava/util/List;

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/google/android/exoplayer2/source/b/g;->a(I[Lcom/google/android/exoplayer2/source/b/a/a$a;Lcom/google/android/exoplayer2/Format;Ljava/util/List;)Lcom/google/android/exoplayer2/source/b/j;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/g;->n:[Lcom/google/android/exoplayer2/source/b/j;

    aput-object v0, v1, v2

    .line 327
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/source/b/j;->a(Z)V

    .line 328
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b/j;->b()V

    move v1, v2

    move v3, v5

    .line 333
    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 334
    new-array v4, v5, [Lcom/google/android/exoplayer2/source/b/a/a$a;

    .line 335
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/a/a$a;

    aput-object v0, v4, v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 334
    invoke-direct {p0, v5, v4, v9, v0}, Lcom/google/android/exoplayer2/source/b/g;->a(I[Lcom/google/android/exoplayer2/source/b/a/a$a;Lcom/google/android/exoplayer2/Format;Ljava/util/List;)Lcom/google/android/exoplayer2/source/b/j;

    move-result-object v0

    .line 336
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/b/g;->n:[Lcom/google/android/exoplayer2/source/b/j;

    add-int/lit8 v4, v3, 0x1

    aput-object v0, v6, v3

    .line 337
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b/j;->b()V

    .line 333
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v3, v4

    goto :goto_4

    .line 307
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 310
    invoke-interface {v4, v7}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_5
    move-object v0, v4

    goto :goto_2

    :cond_6
    move v1, v2

    .line 321
    goto :goto_3

    :cond_7
    move v1, v2

    .line 341
    :goto_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 342
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/a/a$a;

    .line 343
    const/4 v4, 0x3

    new-array v6, v5, [Lcom/google/android/exoplayer2/source/b/a/a$a;

    aput-object v0, v6, v2

    .line 344
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 343
    invoke-direct {p0, v4, v6, v9, v7}, Lcom/google/android/exoplayer2/source/b/g;->a(I[Lcom/google/android/exoplayer2/source/b/a/a$a;Lcom/google/android/exoplayer2/Format;Ljava/util/List;)Lcom/google/android/exoplayer2/source/b/j;

    move-result-object v6

    .line 345
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/b/a/a$a;->b:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/source/b/j;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 346
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/g;->n:[Lcom/google/android/exoplayer2/source/b/j;

    add-int/lit8 v4, v3, 0x1

    aput-object v6, v0, v3

    .line 341
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v3, v4

    goto :goto_5

    .line 348
    :cond_8
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/g;->m:Lcom/google/android/exoplayer2/source/m;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/g;->j:Lcom/google/android/exoplayer2/source/f$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/f$a;->a(Lcom/google/android/exoplayer2/source/j;)V

    .line 367
    :cond_0
    return-void

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/g;->n:[Lcom/google/android/exoplayer2/source/b/j;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 364
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/b/j;->b()V

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a([Lcom/google/android/exoplayer2/b/f;[Z[Lcom/google/android/exoplayer2/source/i;[ZJ)J
    .locals 15

    .prologue
    .line 113
    move-object/from16 v0, p1

    array-length v2, v0

    new-array v10, v2, [I

    .line 114
    move-object/from16 v0, p1

    array-length v2, v0

    new-array v11, v2, [I

    .line 115
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v3, v2, :cond_3

    .line 116
    aget-object v2, p3, v3

    if-nez v2, :cond_1

    const/4 v2, -0x1

    .line 117
    :goto_1
    aput v2, v10, v3

    .line 118
    const/4 v2, -0x1

    aput v2, v11, v3

    .line 119
    aget-object v2, p1, v3

    if-eqz v2, :cond_0

    .line 120
    aget-object v2, p1, v3

    invoke-interface {v2}, Lcom/google/android/exoplayer2/b/f;->d()Lcom/google/android/exoplayer2/source/l;

    move-result-object v4

    .line 121
    const/4 v2, 0x0

    :goto_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/b/g;->n:[Lcom/google/android/exoplayer2/source/b/j;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 122
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/b/g;->n:[Lcom/google/android/exoplayer2/source/b/j;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/b/j;->d()Lcom/google/android/exoplayer2/source/m;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/source/m;->a(Lcom/google/android/exoplayer2/source/l;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 123
    aput v2, v11, v3

    .line 115
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/g;->f:Ljava/util/IdentityHashMap;

    aget-object v4, p3, v3

    .line 117
    invoke-virtual {v2, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 121
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 129
    :cond_3
    const/4 v4, 0x0

    .line 130
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/g;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->clear()V

    .line 132
    move-object/from16 v0, p1

    array-length v2, v0

    new-array v12, v2, [Lcom/google/android/exoplayer2/source/i;

    .line 133
    move-object/from16 v0, p1

    array-length v2, v0

    new-array v5, v2, [Lcom/google/android/exoplayer2/source/i;

    .line 134
    move-object/from16 v0, p1

    array-length v2, v0

    new-array v3, v2, [Lcom/google/android/exoplayer2/b/f;

    .line 135
    new-instance v13, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/g;->n:[Lcom/google/android/exoplayer2/source/b/j;

    array-length v2, v2

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    const/4 v2, 0x0

    move v8, v2

    move v9, v4

    :goto_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/g;->n:[Lcom/google/android/exoplayer2/source/b/j;

    array-length v2, v2

    if-ge v8, v2, :cond_e

    .line 138
    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, p1

    array-length v4, v0

    if-ge v2, v4, :cond_6

    .line 139
    aget v4, v10, v2

    if-ne v4, v8, :cond_4

    aget-object v4, p3, v2

    :goto_5
    aput-object v4, v5, v2

    .line 140
    aget v4, v11, v2

    if-ne v4, v8, :cond_5

    aget-object v4, p1, v2

    :goto_6
    aput-object v4, v3, v2

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 139
    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    .line 140
    :cond_5
    const/4 v4, 0x0

    goto :goto_6

    .line 142
    :cond_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/g;->n:[Lcom/google/android/exoplayer2/source/b/j;

    aget-object v2, v2, v8

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/b/g;->l:Z

    if-nez v4, :cond_8

    const/4 v7, 0x1

    :goto_7
    move-object/from16 v4, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/b/j;->a([Lcom/google/android/exoplayer2/b/f;[Z[Lcom/google/android/exoplayer2/source/i;[ZZ)Z

    move-result v2

    or-int v4, v9, v2

    .line 144
    const/4 v6, 0x0

    .line 145
    const/4 v2, 0x0

    :goto_8
    move-object/from16 v0, p1

    array-length v7, v0

    if-ge v2, v7, :cond_c

    .line 146
    aget v7, v11, v2

    if-ne v7, v8, :cond_a

    .line 148
    aget-object v6, v5, v2

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    :goto_9
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 149
    aget-object v6, v5, v2

    aput-object v6, v12, v2

    .line 150
    const/4 v6, 0x1

    .line 151
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/b/g;->f:Ljava/util/IdentityHashMap;

    aget-object v9, v5, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v9, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_7
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 142
    :cond_8
    const/4 v7, 0x0

    goto :goto_7

    .line 148
    :cond_9
    const/4 v6, 0x0

    goto :goto_9

    .line 152
    :cond_a
    aget v7, v10, v2

    if-ne v7, v8, :cond_7

    .line 154
    aget-object v7, v5, v2

    if-nez v7, :cond_b

    const/4 v7, 0x1

    :goto_b
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    goto :goto_a

    :cond_b
    const/4 v7, 0x0

    goto :goto_b

    .line 157
    :cond_c
    if-eqz v6, :cond_d

    .line 158
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/g;->n:[Lcom/google/android/exoplayer2/source/b/j;

    aget-object v2, v2, v8

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_d
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v9, v4

    goto :goto_3

    .line 162
    :cond_e
    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v12

    move-object/from16 v0, p3

    invoke-static {v12, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/exoplayer2/source/b/j;

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/b/g;->o:[Lcom/google/android/exoplayer2/source/b/j;

    .line 165
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/g;->o:[Lcom/google/android/exoplayer2/source/b/j;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 171
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/g;->o:[Lcom/google/android/exoplayer2/source/b/j;

    array-length v2, v2

    if-lez v2, :cond_f

    .line 172
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/g;->o:[Lcom/google/android/exoplayer2/source/b/j;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/b/j;->a(Z)V

    .line 173
    const/4 v2, 0x1

    :goto_c
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/b/g;->o:[Lcom/google/android/exoplayer2/source/b/j;

    array-length v3, v3

    if-ge v2, v3, :cond_f

    .line 174
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/b/g;->o:[Lcom/google/android/exoplayer2/source/b/j;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/b/j;->a(Z)V

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 178
    :cond_f
    new-instance v2, Lcom/google/android/exoplayer2/source/b;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/b/g;->o:[Lcom/google/android/exoplayer2/source/b/j;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/source/b;-><init>([Lcom/google/android/exoplayer2/source/j;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/b/g;->p:Lcom/google/android/exoplayer2/source/b;

    .line 179
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/b/g;->l:Z

    if-eqz v2, :cond_11

    if-eqz v9, :cond_11

    .line 180
    move-wide/from16 v0, p5

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/b/g;->c(J)J

    .line 182
    const/4 v2, 0x0

    :goto_d
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v2, v3, :cond_11

    .line 183
    aget-object v3, p3, v2

    if-eqz v3, :cond_10

    .line 184
    const/4 v3, 0x1

    aput-boolean v3, p4, v2

    .line 182
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 188
    :cond_11
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/b/g;->l:Z

    .line 189
    return-wide p5
.end method

.method public a(Lcom/google/android/exoplayer2/source/b/a/a$a;)V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/g;->a:Lcom/google/android/exoplayer2/source/b/a/e;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/b/a/e;->c(Lcom/google/android/exoplayer2/source/b/a/a$a;)V

    .line 260
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/b/a/a$a;J)V
    .locals 4

    .prologue
    .line 280
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/g;->n:[Lcom/google/android/exoplayer2/source/b/j;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 281
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/b/j;->a(Lcom/google/android/exoplayer2/source/b/a/a$a;J)V

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/b/g;->j()V

    .line 284
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/b/j;)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/g;->m:Lcom/google/android/exoplayer2/source/m;

    if-nez v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/g;->j:Lcom/google/android/exoplayer2/source/f$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/f$a;->a(Lcom/google/android/exoplayer2/source/j;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/source/f$a;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/g;->a:Lcom/google/android/exoplayer2/source/b/a/e;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/b/a/e;->a(Lcom/google/android/exoplayer2/source/b/a/e$b;)V

    .line 91
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b/g;->j:Lcom/google/android/exoplayer2/source/f$a;

    .line 92
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/b/g;->i()V

    .line 93
    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/source/j;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lcom/google/android/exoplayer2/source/b/j;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/b/g;->a(Lcom/google/android/exoplayer2/source/b/j;)V

    return-void
.end method

.method public a(J)Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/g;->p:Lcom/google/android/exoplayer2/source/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/b;->a(J)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/g;->a:Lcom/google/android/exoplayer2/source/b/a/e;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/b/a/e;->b(Lcom/google/android/exoplayer2/source/b/a/e$b;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/g;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/g;->n:[Lcom/google/android/exoplayer2/source/b/j;

    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/g;->n:[Lcom/google/android/exoplayer2/source/b/j;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 83
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/b/j;->f()V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public b_()J
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/g;->p:Lcom/google/android/exoplayer2/source/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b;->b_()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(J)J
    .locals 5

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/g;->g:Lcom/google/android/exoplayer2/source/b/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b/k;->a()V

    .line 227
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/g;->o:[Lcom/google/android/exoplayer2/source/b/j;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 228
    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/source/b/j;->b(J)V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_0
    return-wide p1
.end method

.method public c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/g;->n:[Lcom/google/android/exoplayer2/source/b/j;

    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/g;->n:[Lcom/google/android/exoplayer2/source/b/j;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 99
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/b/j;->c()V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method public d()Lcom/google/android/exoplayer2/source/m;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/g;->m:Lcom/google/android/exoplayer2/source/m;

    return-object v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 209
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public f()J
    .locals 12

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const-wide/high16 v2, -0x8000000000000000L

    .line 214
    .line 215
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/b/g;->o:[Lcom/google/android/exoplayer2/source/b/j;

    array-length v8, v5

    const/4 v0, 0x0

    move v4, v0

    move-wide v0, v6

    :goto_0
    if-ge v4, v8, :cond_1

    aget-object v9, v5, v4

    .line 216
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/b/j;->e()J

    move-result-wide v10

    .line 217
    cmp-long v9, v10, v2

    if-eqz v9, :cond_0

    .line 218
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 215
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 221
    :cond_1
    cmp-long v4, v0, v6

    if-nez v4, :cond_2

    move-wide v0, v2

    :cond_2
    return-wide v0
.end method

.method public g()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 237
    iget v0, p0, Lcom/google/android/exoplayer2/source/b/g;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/source/b/g;->k:I

    if-lez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/b/g;->n:[Lcom/google/android/exoplayer2/source/b/j;

    array-length v4, v3

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 243
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/b/j;->d()Lcom/google/android/exoplayer2/source/m;

    move-result-object v5

    iget v5, v5, Lcom/google/android/exoplayer2/source/m;->b:I

    add-int/2addr v2, v5

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 245
    :cond_1
    new-array v5, v2, [Lcom/google/android/exoplayer2/source/l;

    .line 247
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/b/g;->n:[Lcom/google/android/exoplayer2/source/b/j;

    array-length v7, v6

    move v4, v1

    move v0, v1

    :goto_2
    if-ge v4, v7, :cond_3

    aget-object v8, v6, v4

    .line 248
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/b/j;->d()Lcom/google/android/exoplayer2/source/m;

    move-result-object v2

    iget v9, v2, Lcom/google/android/exoplayer2/source/m;->b:I

    move v2, v0

    move v0, v1

    .line 249
    :goto_3
    if-ge v0, v9, :cond_2

    .line 250
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/b/j;->d()Lcom/google/android/exoplayer2/source/m;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/source/m;->a(I)Lcom/google/android/exoplayer2/source/l;

    move-result-object v10

    aput-object v10, v5, v2

    .line 249
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_3

    .line 247
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_2

    .line 253
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/source/m;

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/source/m;-><init>([Lcom/google/android/exoplayer2/source/l;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/g;->m:Lcom/google/android/exoplayer2/source/m;

    .line 254
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/g;->j:Lcom/google/android/exoplayer2/source/f$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/f$a;->a(Lcom/google/android/exoplayer2/source/f;)V

    goto :goto_0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/b/g;->j()V

    .line 276
    return-void
.end method
