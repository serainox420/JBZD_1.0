.class final Lcom/google/android/exoplayer2/extractor/f/i$a;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/f/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/f/i$a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/n;

.field private final b:Z

.field private final c:Z

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/util/j$b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/util/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/exoplayer2/util/m;

.field private g:[B

.field private h:I

.field private i:I

.field private j:J

.field private k:Z

.field private l:J

.field private m:Lcom/google/android/exoplayer2/extractor/f/i$a$a;

.field private n:Lcom/google/android/exoplayer2/extractor/f/i$a$a;

.field private o:Z

.field private p:J

.field private q:J

.field private r:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/n;ZZ)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->a:Lcom/google/android/exoplayer2/extractor/n;

    .line 250
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->b:Z

    .line 251
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->c:Z

    .line 252
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->d:Landroid/util/SparseArray;

    .line 253
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->e:Landroid/util/SparseArray;

    .line 254
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/f/i$a$a;-><init>(Lcom/google/android/exoplayer2/extractor/f/i$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->m:Lcom/google/android/exoplayer2/extractor/f/i$a$a;

    .line 255
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/f/i$a$a;-><init>(Lcom/google/android/exoplayer2/extractor/f/i$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->n:Lcom/google/android/exoplayer2/extractor/f/i$a$a;

    .line 256
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->g:[B

    .line 257
    new-instance v0, Lcom/google/android/exoplayer2/util/m;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->g:[B

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/exoplayer2/util/m;-><init>([BII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    .line 258
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/f/i$a;->b()V

    .line 259
    return-void
.end method

.method private a(I)V
    .locals 8

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->r:Z

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .line 437
    :goto_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->j:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->p:J

    sub-long/2addr v0, v2

    long-to-int v5, v0

    .line 438
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->a:Lcom/google/android/exoplayer2/extractor/n;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->q:J

    const/4 v7, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/n;->a(JIII[B)V

    .line 439
    return-void

    .line 436
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(JI)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 419
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->i:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->c:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->n:Lcom/google/android/exoplayer2/extractor/f/i$a$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->m:Lcom/google/android/exoplayer2/extractor/f/i$a$a;

    .line 420
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->a(Lcom/google/android/exoplayer2/extractor/f/i$a$a;Lcom/google/android/exoplayer2/extractor/f/i$a$a;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 422
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->o:Z

    if-eqz v2, :cond_1

    .line 423
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->j:J

    sub-long v2, p1, v2

    long-to-int v2, v2

    .line 424
    add-int/2addr v2, p3

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/extractor/f/i$a;->a(I)V

    .line 426
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->j:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->p:J

    .line 427
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->l:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->q:J

    .line 428
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->r:Z

    .line 429
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->o:Z

    .line 431
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->r:Z

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->i:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->b:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->i:I

    if-ne v3, v1, :cond_4

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->n:Lcom/google/android/exoplayer2/extractor/f/i$a$a;

    .line 432
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->r:Z

    .line 433
    return-void
.end method

.method public a(JIJ)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 280
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->i:I

    .line 281
    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->l:J

    .line 282
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->j:J

    .line 283
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->i:I

    if-eq v0, v2, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->c:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->i:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->i:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->m:Lcom/google/android/exoplayer2/extractor/f/i$a$a;

    .line 289
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->n:Lcom/google/android/exoplayer2/extractor/f/i$a$a;

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->m:Lcom/google/android/exoplayer2/extractor/f/i$a$a;

    .line 290
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->n:Lcom/google/android/exoplayer2/extractor/f/i$a$a;

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->n:Lcom/google/android/exoplayer2/extractor/f/i$a$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->a()V

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->h:I

    .line 293
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->k:Z

    .line 295
    :cond_2
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/util/j$a;)V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->e:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/exoplayer2/util/j$a;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 271
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/util/j$b;)V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->d:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/exoplayer2/util/j$b;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 267
    return-void
.end method

.method public a([BII)V
    .locals 19

    .prologue
    .line 305
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->k:Z

    if-nez v2, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    sub-int v2, p3, p2

    .line 309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->g:[B

    array-length v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->h:I

    add-int/2addr v4, v2

    if-ge v3, v4, :cond_2

    .line 310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->g:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->h:I

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->g:[B

    .line 312
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->g:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->h:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->h:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->h:I

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->g:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->h:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/exoplayer2/util/m;->a([BII)V

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/m;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/m;->c(I)I

    move-result v4

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/m;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/m;->c()I

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/m;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v5

    .line 333
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->c:Z

    if-nez v2, :cond_3

    .line 335
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->k:Z

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->n:Lcom/google/android/exoplayer2/extractor/f/i$a$a;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->a(I)V

    goto/16 :goto_0

    .line 339
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/m;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v7

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_4

    .line 345
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->k:Z

    goto/16 :goto_0

    .line 348
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/util/j$a;

    .line 349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->d:Landroid/util/SparseArray;

    iget v6, v2, Lcom/google/android/exoplayer2/util/j$a;->b:I

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/util/j$b;

    .line 350
    iget-boolean v6, v3, Lcom/google/android/exoplayer2/util/j$b;->e:Z

    if-eqz v6, :cond_5

    .line 351
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/util/m;->b(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 354
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 356
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    iget v8, v3, Lcom/google/android/exoplayer2/util/j$b;->g:I

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/util/m;->b(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 359
    const/4 v8, 0x0

    .line 360
    const/4 v9, 0x0

    .line 361
    const/4 v10, 0x0

    .line 362
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    iget v11, v3, Lcom/google/android/exoplayer2/util/j$b;->g:I

    invoke-virtual {v6, v11}, Lcom/google/android/exoplayer2/util/m;->c(I)I

    move-result v6

    .line 363
    iget-boolean v11, v3, Lcom/google/android/exoplayer2/util/j$b;->f:Z

    if-nez v11, :cond_6

    .line 364
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Lcom/google/android/exoplayer2/util/m;->b(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 367
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v8

    .line 368
    if-eqz v8, :cond_6

    .line 369
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/m;->b(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 372
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v10

    .line 373
    const/4 v9, 0x1

    .line 376
    :cond_6
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->i:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_9

    const/4 v11, 0x1

    .line 377
    :goto_1
    const/4 v12, 0x0

    .line 378
    if-eqz v11, :cond_7

    .line 379
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/m;->b()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 382
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v12

    .line 384
    :cond_7
    const/4 v13, 0x0

    .line 385
    const/4 v14, 0x0

    .line 386
    const/4 v15, 0x0

    .line 387
    const/16 v16, 0x0

    .line 388
    iget v0, v3, Lcom/google/android/exoplayer2/util/j$b;->h:I

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 389
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    iget v0, v3, Lcom/google/android/exoplayer2/util/j$b;->i:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/google/android/exoplayer2/util/m;->b(I)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 392
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    iget v0, v3, Lcom/google/android/exoplayer2/util/j$b;->i:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/google/android/exoplayer2/util/m;->c(I)I

    move-result v13

    .line 393
    iget-boolean v2, v2, Lcom/google/android/exoplayer2/util/j$a;->c:Z

    if-eqz v2, :cond_8

    if-nez v8, :cond_8

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/m;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/m;->d()I

    move-result v14

    .line 412
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->n:Lcom/google/android/exoplayer2/extractor/f/i$a$a;

    invoke-virtual/range {v2 .. v16}, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->a(Lcom/google/android/exoplayer2/util/j$b;IIIIZZZZIIIII)V

    .line 415
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->k:Z

    goto/16 :goto_0

    .line 376
    :cond_9
    const/4 v11, 0x0

    goto :goto_1

    .line 399
    :cond_a
    iget v0, v3, Lcom/google/android/exoplayer2/util/j$b;->h:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    iget-boolean v0, v3, Lcom/google/android/exoplayer2/util/j$b;->j:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 401
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/m;->b()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 404
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/m;->d()I

    move-result v15

    .line 405
    iget-boolean v2, v2, Lcom/google/android/exoplayer2/util/j$a;->c:Z

    if-eqz v2, :cond_8

    if-nez v8, :cond_8

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/m;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/i$a;->f:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/m;->d()I

    move-result v16

    goto :goto_2
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->c:Z

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 274
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->k:Z

    .line 275
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->o:Z

    .line 276
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a;->n:Lcom/google/android/exoplayer2/extractor/f/i$a$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->a()V

    .line 277
    return-void
.end method
