.class final Lcom/google/android/exoplayer2/source/dash/b;
.super Ljava/lang/Object;
.source "DashMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/f;
.implements Lcom/google/android/exoplayer2/source/j$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/f;",
        "Lcom/google/android/exoplayer2/source/j$a",
        "<",
        "Lcom/google/android/exoplayer2/source/a/f",
        "<",
        "Lcom/google/android/exoplayer2/source/dash/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final a:I

.field private final b:Lcom/google/android/exoplayer2/source/dash/a$a;

.field private final c:I

.field private final d:Lcom/google/android/exoplayer2/source/a$a;

.field private final e:J

.field private final f:Lcom/google/android/exoplayer2/upstream/o;

.field private final g:Lcom/google/android/exoplayer2/upstream/b;

.field private final h:Lcom/google/android/exoplayer2/source/m;

.field private final i:[Lcom/google/android/exoplayer2/source/dash/b$a;

.field private j:Lcom/google/android/exoplayer2/source/f$a;

.field private k:[Lcom/google/android/exoplayer2/source/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/exoplayer2/source/a/f",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/google/android/exoplayer2/source/b;

.field private m:Lcom/google/android/exoplayer2/source/dash/manifest/b;

.field private n:I

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/source/dash/manifest/b;ILcom/google/android/exoplayer2/source/dash/a$a;ILcom/google/android/exoplayer2/source/a$a;JLcom/google/android/exoplayer2/upstream/o;Lcom/google/android/exoplayer2/upstream/b;)V
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/b;->a:I

    .line 72
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/b;->m:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    .line 73
    iput p3, p0, Lcom/google/android/exoplayer2/source/dash/b;->n:I

    .line 74
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/b;->b:Lcom/google/android/exoplayer2/source/dash/a$a;

    .line 75
    iput p5, p0, Lcom/google/android/exoplayer2/source/dash/b;->c:I

    .line 76
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/dash/b;->d:Lcom/google/android/exoplayer2/source/a$a;

    .line 77
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/dash/b;->e:J

    .line 78
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/dash/b;->f:Lcom/google/android/exoplayer2/upstream/o;

    .line 79
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/dash/b;->g:Lcom/google/android/exoplayer2/upstream/b;

    .line 80
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/b;->a(I)[Lcom/google/android/exoplayer2/source/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->k:[Lcom/google/android/exoplayer2/source/a/f;

    .line 81
    new-instance v0, Lcom/google/android/exoplayer2/source/b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/b;->k:[Lcom/google/android/exoplayer2/source/a/f;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/b;-><init>([Lcom/google/android/exoplayer2/source/j;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->l:Lcom/google/android/exoplayer2/source/b;

    .line 82
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/d;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->o:Ljava/util/List;

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->o:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/b;->a(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v1

    .line 84
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/m;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->h:Lcom/google/android/exoplayer2/source/m;

    .line 85
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/exoplayer2/source/dash/b$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->i:[Lcom/google/android/exoplayer2/source/dash/b$a;

    .line 86
    return-void
.end method

.method private static a(Ljava/util/List;)Landroid/util/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/a;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/exoplayer2/source/m;",
            "[",
            "Lcom/google/android/exoplayer2/source/dash/b$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 240
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    .line 241
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/dash/b;->b(Ljava/util/List;)I

    move-result v0

    .line 242
    add-int v1, v9, v0

    new-array v10, v1, [Lcom/google/android/exoplayer2/source/l;

    .line 243
    new-array v11, v0, [Lcom/google/android/exoplayer2/source/dash/b$a;

    move v8, v4

    move v6, v4

    .line 246
    :goto_0
    if-ge v8, v9, :cond_2

    .line 247
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/a;

    .line 248
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/manifest/a;->c:Ljava/util/List;

    .line 249
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    new-array v12, v1, [Lcom/google/android/exoplayer2/Format;

    move v5, v4

    .line 250
    :goto_1
    array-length v1, v12

    if-ge v5, v1, :cond_0

    .line 251
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/f;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/f;->c:Lcom/google/android/exoplayer2/Format;

    aput-object v1, v12, v5

    .line 250
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 253
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/source/l;

    invoke-direct {v1, v12}, Lcom/google/android/exoplayer2/source/l;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v1, v10, v8

    .line 254
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/b;->a(Lcom/google/android/exoplayer2/source/dash/manifest/a;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/google/android/exoplayer2/source/dash/manifest/a;->a:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ":emsg"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "application/x-emsg"

    invoke-static {v1, v5, v2, v3, v2}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 257
    add-int v5, v9, v6

    new-instance v7, Lcom/google/android/exoplayer2/source/l;

    new-array v12, v13, [Lcom/google/android/exoplayer2/Format;

    aput-object v1, v12, v4

    invoke-direct {v7, v12}, Lcom/google/android/exoplayer2/source/l;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v7, v10, v5

    .line 258
    add-int/lit8 v1, v6, 0x1

    new-instance v5, Lcom/google/android/exoplayer2/source/dash/b$a;

    const/4 v7, 0x4

    invoke-direct {v5, v8, v7}, Lcom/google/android/exoplayer2/source/dash/b$a;-><init>(II)V

    aput-object v5, v11, v6

    move v7, v1

    .line 260
    :goto_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/b;->b(Lcom/google/android/exoplayer2/source/dash/manifest/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/a;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":cea608"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/cea-608"

    move-object v5, v2

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 263
    add-int v1, v9, v7

    new-instance v5, Lcom/google/android/exoplayer2/source/l;

    new-array v6, v13, [Lcom/google/android/exoplayer2/Format;

    aput-object v0, v6, v4

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/source/l;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v5, v10, v1

    .line 264
    add-int/lit8 v0, v7, 0x1

    new-instance v1, Lcom/google/android/exoplayer2/source/dash/b$a;

    const/4 v5, 0x3

    invoke-direct {v1, v8, v5}, Lcom/google/android/exoplayer2/source/dash/b$a;-><init>(II)V

    aput-object v1, v11, v7

    move v7, v0

    .line 246
    :cond_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move v6, v7

    goto/16 :goto_0

    .line 268
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/source/m;

    invoke-direct {v0, v10}, Lcom/google/android/exoplayer2/source/m;-><init>([Lcom/google/android/exoplayer2/source/l;)V

    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_3
    move v7, v6

    goto :goto_2
.end method

.method private a(ILcom/google/android/exoplayer2/b/f;J)Lcom/google/android/exoplayer2/source/a/f;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/b/f;",
            "J)",
            "Lcom/google/android/exoplayer2/source/a/f",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/exoplayer2/source/dash/manifest/a;

    .line 274
    const/4 v1, 0x0

    .line 275
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 276
    invoke-static {v10}, Lcom/google/android/exoplayer2/source/dash/b;->a(Lcom/google/android/exoplayer2/source/dash/manifest/a;)Z

    move-result v8

    .line 277
    if-eqz v8, :cond_2

    .line 278
    const/4 v0, 0x1

    const/4 v3, 0x4

    aput v3, v2, v1

    .line 280
    :goto_0
    invoke-static {v10}, Lcom/google/android/exoplayer2/source/dash/b;->b(Lcom/google/android/exoplayer2/source/dash/manifest/a;)Z

    move-result v9

    .line 281
    if-eqz v9, :cond_0

    .line 282
    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x3

    aput v3, v2, v0

    move v0, v1

    .line 284
    :cond_0
    array-length v1, v2

    if-ge v0, v1, :cond_1

    .line 285
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    move-object v11, v0

    .line 287
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->b:Lcom/google/android/exoplayer2/source/dash/a$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/b;->f:Lcom/google/android/exoplayer2/upstream/o;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/b;->m:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    iget v3, p0, Lcom/google/android/exoplayer2/source/dash/b;->n:I

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/b;->e:J

    move v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/dash/a$a;->a(Lcom/google/android/exoplayer2/upstream/o;Lcom/google/android/exoplayer2/source/dash/manifest/b;IILcom/google/android/exoplayer2/b/f;JZZ)Lcom/google/android/exoplayer2/source/dash/a;

    move-result-object v3

    .line 290
    new-instance v0, Lcom/google/android/exoplayer2/source/a/f;

    iget v1, v10, Lcom/google/android/exoplayer2/source/dash/manifest/a;->b:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/b;->g:Lcom/google/android/exoplayer2/upstream/b;

    iget v8, p0, Lcom/google/android/exoplayer2/source/dash/b;->c:I

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/dash/b;->d:Lcom/google/android/exoplayer2/source/a$a;

    move-object v2, v11

    move-object v4, p0

    move-wide/from16 v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/a/f;-><init>(I[ILcom/google/android/exoplayer2/source/a/g;Lcom/google/android/exoplayer2/source/j$a;Lcom/google/android/exoplayer2/upstream/b;JILcom/google/android/exoplayer2/source/a$a;)V

    .line 293
    return-object v0

    :cond_1
    move-object v11, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/source/i;)V
    .locals 1

    .prologue
    .line 338
    instance-of v0, p0, Lcom/google/android/exoplayer2/source/a/f$a;

    if-eqz v0, :cond_0

    .line 339
    check-cast p0, Lcom/google/android/exoplayer2/source/a/f$a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a/f$a;->c()V

    .line 341
    :cond_0
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/source/dash/manifest/a;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 311
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/a;->c:Ljava/util/List;

    move v1, v2

    .line 312
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 313
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/f;

    .line 314
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    const/4 v2, 0x1

    .line 318
    :cond_0
    return v2

    .line 312
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static a(I)[Lcom/google/android/exoplayer2/source/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/android/exoplayer2/source/a/f",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    new-array v0, p0, [Lcom/google/android/exoplayer2/source/a/f;

    return-object v0
.end method

.method private static b(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/a;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 297
    move v1, v0

    move v2, v0

    .line 298
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 299
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/a;

    .line 300
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/b;->a(Lcom/google/android/exoplayer2/source/dash/manifest/a;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    add-int/lit8 v2, v2, 0x1

    .line 303
    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/b;->b(Lcom/google/android/exoplayer2/source/dash/manifest/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    add-int/lit8 v2, v2, 0x1

    .line 298
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 307
    :cond_2
    return v2
.end method

.method private static b(Lcom/google/android/exoplayer2/source/dash/manifest/a;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 322
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/a;->d:Ljava/util/List;

    move v1, v2

    .line 323
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 324
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/g;

    .line 325
    const-string v4, "urn:scte:dash:cc:cea-608:2015"

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/g;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    const/4 v2, 0x1

    .line 329
    :cond_0
    return v2

    .line 323
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a([Lcom/google/android/exoplayer2/b/f;[Z[Lcom/google/android/exoplayer2/source/i;[ZJ)J
    .locals 7

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 126
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 128
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_4

    .line 129
    aget-object v0, p3, v1

    instance-of v0, v0, Lcom/google/android/exoplayer2/source/a/f;

    if-eqz v0, :cond_1

    .line 131
    aget-object v0, p3, v1

    check-cast v0, Lcom/google/android/exoplayer2/source/a/f;

    .line 132
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    aget-boolean v2, p2, v1

    if-nez v2, :cond_3

    .line 133
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a/f;->e()V

    .line 134
    const/4 v0, 0x0

    aput-object v0, p3, v1

    .line 140
    :cond_1
    :goto_1
    aget-object v0, p3, v1

    if-nez v0, :cond_2

    aget-object v0, p1, v1

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->h:Lcom/google/android/exoplayer2/source/m;

    aget-object v2, p1, v1

    invoke-interface {v2}, Lcom/google/android/exoplayer2/b/f;->d()Lcom/google/android/exoplayer2/source/l;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/m;->a(Lcom/google/android/exoplayer2/source/l;)I

    move-result v0

    .line 142
    if-ge v0, v4, :cond_2

    .line 143
    aget-object v2, p1, v1

    invoke-direct {p0, v0, v2, p5, p6}, Lcom/google/android/exoplayer2/source/dash/b;->a(ILcom/google/android/exoplayer2/b/f;J)Lcom/google/android/exoplayer2/source/a/f;

    move-result-object v2

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    aput-object v2, p3, v1

    .line 147
    const/4 v0, 0x1

    aput-boolean v0, p4, v1

    .line 128
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 136
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/b;->h:Lcom/google/android/exoplayer2/source/m;

    aget-object v3, p1, v1

    invoke-interface {v3}, Lcom/google/android/exoplayer2/b/f;->d()Lcom/google/android/exoplayer2/source/l;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/m;->a(Lcom/google/android/exoplayer2/source/l;)I

    move-result v2

    .line 137
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 152
    :cond_4
    const/4 v0, 0x0

    move v3, v0

    :goto_2
    array-length v0, p1

    if-ge v3, v0, :cond_c

    .line 153
    aget-object v0, p3, v3

    instance-of v0, v0, Lcom/google/android/exoplayer2/source/a/f$a;

    if-nez v0, :cond_5

    aget-object v0, p3, v3

    instance-of v0, v0, Lcom/google/android/exoplayer2/source/c;

    if-eqz v0, :cond_7

    :cond_5
    aget-object v0, p1, v3

    if-eqz v0, :cond_6

    aget-boolean v0, p2, v3

    if-nez v0, :cond_7

    .line 156
    :cond_6
    aget-object v0, p3, v3

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/b;->a(Lcom/google/android/exoplayer2/source/i;)V

    .line 157
    const/4 v0, 0x0

    aput-object v0, p3, v3

    .line 161
    :cond_7
    aget-object v0, p1, v3

    if-eqz v0, :cond_8

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->h:Lcom/google/android/exoplayer2/source/m;

    aget-object v1, p1, v3

    invoke-interface {v1}, Lcom/google/android/exoplayer2/b/f;->d()Lcom/google/android/exoplayer2/source/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/m;->a(Lcom/google/android/exoplayer2/source/l;)I

    move-result v0

    .line 163
    if-lt v0, v4, :cond_8

    .line 164
    sub-int/2addr v0, v4

    .line 165
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/b;->i:[Lcom/google/android/exoplayer2/source/dash/b$a;

    aget-object v6, v1, v0

    .line 166
    iget v0, v6, Lcom/google/android/exoplayer2/source/dash/b$a;->a:I

    .line 167
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/a/f;

    .line 168
    aget-object v2, p3, v3

    .line 169
    if-nez v0, :cond_9

    instance-of v1, v2, Lcom/google/android/exoplayer2/source/c;

    .line 172
    :goto_3
    if-nez v1, :cond_8

    .line 173
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/dash/b;->a(Lcom/google/android/exoplayer2/source/i;)V

    .line 174
    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/exoplayer2/source/c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/c;-><init>()V

    .line 175
    :goto_4
    aput-object v0, p3, v3

    .line 176
    const/4 v0, 0x1

    aput-boolean v0, p4, v3

    .line 152
    :cond_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 169
    :cond_9
    instance-of v1, v2, Lcom/google/android/exoplayer2/source/a/f$a;

    if-eqz v1, :cond_a

    move-object v1, v2

    check-cast v1, Lcom/google/android/exoplayer2/source/a/f$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/a/f$a;->a:Lcom/google/android/exoplayer2/source/a/f;

    if-ne v1, v0, :cond_a

    const/4 v1, 0x1

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    goto :goto_3

    .line 174
    :cond_b
    iget v1, v6, Lcom/google/android/exoplayer2/source/dash/b$a;->b:I

    .line 175
    invoke-virtual {v0, p5, p6, v1}, Lcom/google/android/exoplayer2/source/a/f;->a(JI)Lcom/google/android/exoplayer2/source/a/f$a;

    move-result-object v0

    goto :goto_4

    .line 181
    :cond_c
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/b;->a(I)[Lcom/google/android/exoplayer2/source/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->k:[Lcom/google/android/exoplayer2/source/a/f;

    .line 182
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/b;->k:[Lcom/google/android/exoplayer2/source/a/f;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 183
    new-instance v0, Lcom/google/android/exoplayer2/source/b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/b;->k:[Lcom/google/android/exoplayer2/source/a/f;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/b;-><init>([Lcom/google/android/exoplayer2/source/j;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->l:Lcom/google/android/exoplayer2/source/b;

    .line 184
    return-wide p5
.end method

.method public a(Lcom/google/android/exoplayer2/source/a/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/a/f",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->j:Lcom/google/android/exoplayer2/source/f$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/f$a;->a(Lcom/google/android/exoplayer2/source/j;)V

    .line 234
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/dash/manifest/b;I)V
    .locals 4

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/b;->m:Lcom/google/android/exoplayer2/source/dash/manifest/b;

    .line 90
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/b;->n:I

    .line 91
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/b;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/d;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->o:Ljava/util/List;

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->k:[Lcom/google/android/exoplayer2/source/a/f;

    if-eqz v0, :cond_1

    .line 93
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/b;->k:[Lcom/google/android/exoplayer2/source/a/f;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 94
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a/f;->c()Lcom/google/android/exoplayer2/source/a/g;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/a;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/a;->a(Lcom/google/android/exoplayer2/source/dash/manifest/b;I)V

    .line 93
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->j:Lcom/google/android/exoplayer2/source/f$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/f$a;->a(Lcom/google/android/exoplayer2/source/j;)V

    .line 98
    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/f$a;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/b;->j:Lcom/google/android/exoplayer2/source/f$a;

    .line 109
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/f$a;->a(Lcom/google/android/exoplayer2/source/f;)V

    .line 110
    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/source/j;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Lcom/google/android/exoplayer2/source/a/f;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/b;->a(Lcom/google/android/exoplayer2/source/a/f;)V

    return-void
.end method

.method public a(J)Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->l:Lcom/google/android/exoplayer2/source/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/b;->a(J)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 101
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/b;->k:[Lcom/google/android/exoplayer2/source/a/f;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 102
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/a/f;->e()V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 5

    .prologue
    .line 189
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/b;->k:[Lcom/google/android/exoplayer2/source/a/f;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 190
    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/source/a/f;->b(J)V

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method public b_()J
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->l:Lcom/google/android/exoplayer2/source/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b;->b_()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(J)J
    .locals 5

    .prologue
    .line 223
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/b;->k:[Lcom/google/android/exoplayer2/source/a/f;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 224
    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/source/a/f;->c(J)V

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_0
    return-wide p1
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->f:Lcom/google/android/exoplayer2/upstream/o;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/o;->d()V

    .line 115
    return-void
.end method

.method public d()Lcom/google/android/exoplayer2/source/m;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->h:Lcom/google/android/exoplayer2/source/m;

    return-object v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 206
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public f()J
    .locals 12

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const-wide/high16 v2, -0x8000000000000000L

    .line 211
    .line 212
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/b;->k:[Lcom/google/android/exoplayer2/source/a/f;

    array-length v8, v5

    const/4 v0, 0x0

    move v4, v0

    move-wide v0, v6

    :goto_0
    if-ge v4, v8, :cond_1

    aget-object v9, v5, v4

    .line 213
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/a/f;->d()J

    move-result-wide v10

    .line 214
    cmp-long v9, v10, v2

    if-eqz v9, :cond_0

    .line 215
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 212
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 218
    :cond_1
    cmp-long v4, v0, v6

    if-nez v4, :cond_2

    move-wide v0, v2

    :cond_2
    return-wide v0
.end method
