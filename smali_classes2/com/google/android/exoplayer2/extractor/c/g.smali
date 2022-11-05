.class public final Lcom/google/android/exoplayer2/extractor/c/g;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/f;
.implements Lcom/google/android/exoplayer2/extractor/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/c/g$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/extractor/i;

.field private static final b:I


# instance fields
.field private final c:Lcom/google/android/exoplayer2/util/l;

.field private final d:Lcom/google/android/exoplayer2/util/l;

.field private final e:Lcom/google/android/exoplayer2/util/l;

.field private final f:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/exoplayer2/extractor/c/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:J

.field private j:I

.field private k:Lcom/google/android/exoplayer2/util/l;

.field private l:I

.field private m:I

.field private n:Lcom/google/android/exoplayer2/extractor/h;

.field private o:[Lcom/google/android/exoplayer2/extractor/c/g$a;

.field private p:J

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/google/android/exoplayer2/extractor/c/g$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/c/g$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/c/g;->a:Lcom/google/android/exoplayer2/extractor/i;

    .line 71
    const-string v0, "qt  "

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/g;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/l;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->e:Lcom/google/android/exoplayer2/util/l;

    .line 103
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->f:Ljava/util/Stack;

    .line 104
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    sget-object v1, Lcom/google/android/exoplayer2/util/j;->a:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/l;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->c:Lcom/google/android/exoplayer2/util/l;

    .line 105
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/l;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->d:Lcom/google/android/exoplayer2/util/l;

    .line 106
    return-void
.end method

.method private a(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 272
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/a$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/c/a$a;->aQ:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/a$a;

    .line 274
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/c/a$a;->aP:I

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->B:I

    if-ne v1, v2, :cond_1

    .line 276
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/c/g;->a(Lcom/google/android/exoplayer2/extractor/c/a$a;)V

    .line 277
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 278
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/c/g;->g:I

    goto :goto_0

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/g;->f:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/g;->f:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/c/a$a;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/c/a$a;->a(Lcom/google/android/exoplayer2/extractor/c/a$a;)V

    goto :goto_0

    .line 283
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->g:I

    if-eq v0, v3, :cond_3

    .line 284
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/c/g;->d()V

    .line 286
    :cond_3
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/c/a$a;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 313
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 314
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 315
    const-wide v2, 0x7fffffffffffffffL

    .line 317
    const/4 v0, 0x0

    .line 318
    new-instance v13, Lcom/google/android/exoplayer2/extractor/j;

    invoke-direct {v13}, Lcom/google/android/exoplayer2/extractor/j;-><init>()V

    .line 319
    sget v1, Lcom/google/android/exoplayer2/extractor/c/a;->aA:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/extractor/c/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/c/a$b;

    move-result-object v1

    .line 320
    if-eqz v1, :cond_8

    .line 321
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->q:Z

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/extractor/c/b;->a(Lcom/google/android/exoplayer2/extractor/c/a$b;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v13, v0}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    :cond_0
    move-object v6, v0

    .line 327
    :goto_0
    const/4 v0, 0x0

    move v7, v0

    move-wide v8, v2

    move-wide v10, v4

    :goto_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/c/a$a;->aS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_6

    .line 328
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/c/a$a;->aS:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/a$a;

    .line 329
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/c/a$a;->aP:I

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->D:I

    if-eq v1, v2, :cond_1

    move-wide v2, v8

    move-wide v4, v10

    .line 327
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move-wide v8, v2

    move-wide v10, v4

    goto :goto_1

    .line 333
    :cond_1
    sget v1, Lcom/google/android/exoplayer2/extractor/c/a;->C:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/extractor/c/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/c/a$b;

    move-result-object v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/c/g;->q:Z

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/c/b;->a(Lcom/google/android/exoplayer2/extractor/c/a$a;Lcom/google/android/exoplayer2/extractor/c/a$b;JLcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/c/j;

    move-result-object v1

    .line 335
    if-nez v1, :cond_2

    move-wide v2, v8

    move-wide v4, v10

    .line 336
    goto :goto_2

    .line 339
    :cond_2
    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->E:I

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/c/a$a;->e(I)Lcom/google/android/exoplayer2/extractor/c/a$a;

    move-result-object v0

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->F:I

    .line 340
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/c/a$a;->e(I)Lcom/google/android/exoplayer2/extractor/c/a$a;

    move-result-object v0

    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->G:I

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/c/a$a;->e(I)Lcom/google/android/exoplayer2/extractor/c/a$a;

    move-result-object v0

    .line 341
    invoke-static {v1, v0, v13}, Lcom/google/android/exoplayer2/extractor/c/b;->a(Lcom/google/android/exoplayer2/extractor/c/j;Lcom/google/android/exoplayer2/extractor/c/a$a;Lcom/google/android/exoplayer2/extractor/j;)Lcom/google/android/exoplayer2/extractor/c/m;

    move-result-object v2

    .line 342
    iget v0, v2, Lcom/google/android/exoplayer2/extractor/c/m;->a:I

    if-nez v0, :cond_3

    move-wide v2, v8

    move-wide v4, v10

    .line 343
    goto :goto_2

    .line 346
    :cond_3
    new-instance v3, Lcom/google/android/exoplayer2/extractor/c/g$a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->n:Lcom/google/android/exoplayer2/extractor/h;

    iget v4, v1, Lcom/google/android/exoplayer2/extractor/c/j;->b:I

    .line 347
    invoke-interface {v0, v7, v4}, Lcom/google/android/exoplayer2/extractor/h;->a(II)Lcom/google/android/exoplayer2/extractor/n;

    move-result-object v0

    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/exoplayer2/extractor/c/g$a;-><init>(Lcom/google/android/exoplayer2/extractor/c/j;Lcom/google/android/exoplayer2/extractor/c/m;Lcom/google/android/exoplayer2/extractor/n;)V

    .line 350
    iget v0, v2, Lcom/google/android/exoplayer2/extractor/c/m;->d:I

    add-int/lit8 v0, v0, 0x1e

    .line 351
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/c/j;->f:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/Format;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 352
    iget v4, v1, Lcom/google/android/exoplayer2/extractor/c/j;->b:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 353
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/j;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 354
    iget v4, v13, Lcom/google/android/exoplayer2/extractor/j;->b:I

    iget v5, v13, Lcom/google/android/exoplayer2/extractor/j;->c:I

    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/Format;->a(II)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 357
    :cond_4
    if-eqz v6, :cond_5

    .line 358
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/Format;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 361
    :cond_5
    iget-object v4, v3, Lcom/google/android/exoplayer2/extractor/c/g$a;->c:Lcom/google/android/exoplayer2/extractor/n;

    invoke-interface {v4, v0}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 363
    iget-wide v0, v1, Lcom/google/android/exoplayer2/extractor/c/j;->e:J

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 364
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v0, v2, Lcom/google/android/exoplayer2/extractor/c/m;->b:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    .line 367
    cmp-long v0, v2, v8

    if-gez v0, :cond_7

    move-wide v4, v10

    .line 368
    goto/16 :goto_2

    .line 371
    :cond_6
    iput-wide v10, p0, Lcom/google/android/exoplayer2/extractor/c/g;->p:J

    .line 372
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/c/g$a;

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/extractor/c/g$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->o:[Lcom/google/android/exoplayer2/extractor/c/g$a;

    .line 373
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->n:Lcom/google/android/exoplayer2/extractor/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/h;->a()V

    .line 374
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->n:Lcom/google/android/exoplayer2/extractor/h;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/extractor/h;->a(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 375
    return-void

    :cond_7
    move-wide v2, v8

    move-wide v4, v10

    goto/16 :goto_2

    :cond_8
    move-object v6, v0

    goto/16 :goto_0
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 504
    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->R:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->C:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->S:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->T:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->am:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->an:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->ao:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->Q:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->ap:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->aq:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->ar:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->as:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->at:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->O:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->a:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->aA:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/l;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 295
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 296
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v1

    .line 297
    sget v2, Lcom/google/android/exoplayer2/extractor/c/g;->b:I

    if-ne v1, v2, :cond_0

    .line 306
    :goto_0
    return v0

    .line 300
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 301
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v1

    if-lez v1, :cond_2

    .line 302
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v1

    sget v2, Lcom/google/android/exoplayer2/extractor/c/g;->b:I

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 306
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(I)Z
    .locals 1

    .prologue
    .line 516
    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->B:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->D:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->E:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->F:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->G:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->P:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/google/android/exoplayer2/extractor/g;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->j:I

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->e:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-interface {p1, v0, v2, v8, v1}, Lcom/google/android/exoplayer2/extractor/g;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return v2

    .line 202
    :cond_0
    iput v8, p0, Lcom/google/android/exoplayer2/extractor/c/g;->j:I

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->e:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->e:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->k()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/c/g;->i:J

    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->e:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->h:I

    .line 208
    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/c/g;->i:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->e:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-interface {p1, v0, v8, v8}, Lcom/google/android/exoplayer2/extractor/g;->b([BII)V

    .line 212
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->j:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->j:I

    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->e:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->u()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/c/g;->i:J

    .line 216
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->h:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/g;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/c/g;->i:J

    add-long/2addr v2, v4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->j:I

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 218
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->f:Ljava/util/Stack;

    new-instance v4, Lcom/google/android/exoplayer2/extractor/c/a$a;

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/c/g;->h:I

    invoke-direct {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/extractor/c/a$a;-><init>(IJ)V

    invoke-virtual {v0, v4}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 219
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/c/g;->i:J

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->j:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 220
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/c/g;->a(J)V

    :goto_1
    move v2, v1

    .line 238
    goto :goto_0

    .line 223
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/c/g;->d()V

    goto :goto_1

    .line 225
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->h:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 228
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->j:I

    if-ne v0, v8, :cond_5

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 229
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/c/g;->i:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-gtz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 230
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/c/g;->i:J

    long-to-int v3, v4

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/util/l;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->k:Lcom/google/android/exoplayer2/util/l;

    .line 231
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->e:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/c/g;->k:Lcom/google/android/exoplayer2/util/l;

    iget-object v3, v3, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-static {v0, v2, v3, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/c/g;->g:I

    goto :goto_1

    :cond_5
    move v0, v2

    .line 228
    goto :goto_2

    :cond_6
    move v0, v2

    .line 229
    goto :goto_3

    .line 234
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->k:Lcom/google/android/exoplayer2/util/l;

    .line 235
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/c/g;->g:I

    goto :goto_1
.end method

.method private b(Lcom/google/android/exoplayer2/extractor/g;Lcom/google/android/exoplayer2/extractor/l;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 248
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/c/g;->i:J

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->j:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    .line 249
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v6

    add-long/2addr v6, v4

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->k:Lcom/google/android/exoplayer2/util/l;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->k:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/c/g;->j:I

    long-to-int v4, v4

    invoke-interface {p1, v0, v3, v4}, Lcom/google/android/exoplayer2/extractor/g;->b([BII)V

    .line 253
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->h:I

    sget v3, Lcom/google/android/exoplayer2/extractor/c/a;->a:I

    if-ne v0, v3, :cond_0

    .line 254
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->k:Lcom/google/android/exoplayer2/util/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/g;->a(Lcom/google/android/exoplayer2/util/l;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->q:Z

    move v0, v1

    .line 267
    :goto_0
    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer2/extractor/c/g;->a(J)V

    .line 268
    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->g:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    :goto_1
    return v2

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 256
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/a$a;

    new-instance v3, Lcom/google/android/exoplayer2/extractor/c/a$b;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/c/g;->h:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/c/g;->k:Lcom/google/android/exoplayer2/util/l;

    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/c/a$b;-><init>(ILcom/google/android/exoplayer2/util/l;)V

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/c/a$a;->a(Lcom/google/android/exoplayer2/extractor/c/a$b;)V

    move v0, v1

    goto :goto_0

    .line 260
    :cond_1
    const-wide/32 v8, 0x40000

    cmp-long v0, v4, v8

    if-gez v0, :cond_2

    .line 261
    long-to-int v0, v4

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/g;->b(I)V

    move v0, v1

    goto :goto_0

    .line 263
    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v8

    add-long/2addr v4, v8

    iput-wide v4, p2, Lcom/google/android/exoplayer2/extractor/l;->a:J

    move v0, v2

    .line 264
    goto :goto_0

    :cond_3
    move v2, v1

    .line 268
    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private c(Lcom/google/android/exoplayer2/extractor/g;Lcom/google/android/exoplayer2/extractor/l;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/c/g;->e()I

    move-result v0

    .line 396
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 397
    const/4 v0, -0x1

    .line 458
    :goto_0
    return v0

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/g;->o:[Lcom/google/android/exoplayer2/extractor/c/g$a;

    aget-object v8, v1, v0

    .line 400
    iget-object v1, v8, Lcom/google/android/exoplayer2/extractor/c/g$a;->c:Lcom/google/android/exoplayer2/extractor/n;

    .line 401
    iget v4, v8, Lcom/google/android/exoplayer2/extractor/c/g$a;->d:I

    .line 402
    iget-object v0, v8, Lcom/google/android/exoplayer2/extractor/c/g$a;->b:Lcom/google/android/exoplayer2/extractor/c/m;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/m;->b:[J

    aget-wide v2, v0, v4

    .line 403
    iget-object v0, v8, Lcom/google/android/exoplayer2/extractor/c/g$a;->b:Lcom/google/android/exoplayer2/extractor/c/m;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/m;->c:[I

    aget v0, v0, v4

    .line 404
    iget-object v5, v8, Lcom/google/android/exoplayer2/extractor/c/g$a;->a:Lcom/google/android/exoplayer2/extractor/c/j;

    iget v5, v5, Lcom/google/android/exoplayer2/extractor/c/j;->g:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 407
    const-wide/16 v6, 0x8

    add-long/2addr v2, v6

    .line 408
    add-int/lit8 v0, v0, -0x8

    .line 410
    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v6

    sub-long v6, v2, v6

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/c/g;->l:I

    int-to-long v10, v5

    add-long/2addr v6, v10

    .line 411
    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-ltz v5, :cond_2

    const-wide/32 v10, 0x40000

    cmp-long v5, v6, v10

    if-ltz v5, :cond_3

    .line 412
    :cond_2
    iput-wide v2, p2, Lcom/google/android/exoplayer2/extractor/l;->a:J

    .line 413
    const/4 v0, 0x1

    goto :goto_0

    .line 415
    :cond_3
    long-to-int v2, v6

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/g;->b(I)V

    .line 416
    iget-object v2, v8, Lcom/google/android/exoplayer2/extractor/c/g$a;->a:Lcom/google/android/exoplayer2/extractor/c/j;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/c/j;->k:I

    if-eqz v2, :cond_6

    .line 419
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/c/g;->d:Lcom/google/android/exoplayer2/util/l;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/l;->a:[B

    .line 420
    const/4 v3, 0x0

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    .line 421
    const/4 v3, 0x1

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    .line 422
    const/4 v3, 0x2

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    .line 423
    iget-object v2, v8, Lcom/google/android/exoplayer2/extractor/c/g$a;->a:Lcom/google/android/exoplayer2/extractor/c/j;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/c/j;->k:I

    .line 424
    iget-object v3, v8, Lcom/google/android/exoplayer2/extractor/c/g$a;->a:Lcom/google/android/exoplayer2/extractor/c/j;

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/c/j;->k:I

    rsub-int/lit8 v3, v3, 0x4

    .line 428
    :goto_1
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/c/g;->l:I

    if-ge v5, v0, :cond_5

    .line 429
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/c/g;->m:I

    if-nez v5, :cond_4

    .line 431
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/c/g;->d:Lcom/google/android/exoplayer2/util/l;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-interface {p1, v5, v3, v2}, Lcom/google/android/exoplayer2/extractor/g;->b([BII)V

    .line 432
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/c/g;->d:Lcom/google/android/exoplayer2/util/l;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 433
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/c/g;->d:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v5

    iput v5, p0, Lcom/google/android/exoplayer2/extractor/c/g;->m:I

    .line 435
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/c/g;->c:Lcom/google/android/exoplayer2/util/l;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 436
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/c/g;->c:Lcom/google/android/exoplayer2/util/l;

    const/4 v6, 0x4

    invoke-interface {v1, v5, v6}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 437
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/c/g;->l:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/android/exoplayer2/extractor/c/g;->l:I

    .line 438
    add-int/2addr v0, v3

    goto :goto_1

    .line 441
    :cond_4
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/c/g;->m:I

    const/4 v6, 0x0

    invoke-interface {v1, p1, v5, v6}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/extractor/g;IZ)I

    move-result v5

    .line 442
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/c/g;->l:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/c/g;->l:I

    .line 443
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/c/g;->m:I

    sub-int v5, v6, v5

    iput v5, p0, Lcom/google/android/exoplayer2/extractor/c/g;->m:I

    goto :goto_1

    :cond_5
    move v5, v0

    .line 453
    :goto_2
    iget-object v0, v8, Lcom/google/android/exoplayer2/extractor/c/g$a;->b:Lcom/google/android/exoplayer2/extractor/c/m;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/m;->e:[J

    aget-wide v2, v0, v4

    iget-object v0, v8, Lcom/google/android/exoplayer2/extractor/c/g$a;->b:Lcom/google/android/exoplayer2/extractor/c/m;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/m;->f:[I

    aget v4, v0, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/n;->a(JIII[B)V

    .line 455
    iget v0, v8, Lcom/google/android/exoplayer2/extractor/c/g$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lcom/google/android/exoplayer2/extractor/c/g$a;->d:I

    .line 456
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->l:I

    .line 457
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->m:I

    .line 458
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 447
    :cond_6
    :goto_3
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/c/g;->l:I

    if-ge v2, v0, :cond_7

    .line 448
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/c/g;->l:I

    sub-int v2, v0, v2

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/extractor/g;IZ)I

    move-result v2

    .line 449
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/c/g;->l:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/c/g;->l:I

    .line 450
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/c/g;->m:I

    sub-int v2, v3, v2

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/c/g;->m:I

    goto :goto_3

    :cond_7
    move v5, v0

    goto :goto_2
.end method

.method private c(J)V
    .locals 7

    .prologue
    .line 489
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/c/g;->o:[Lcom/google/android/exoplayer2/extractor/c/g$a;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 490
    iget-object v5, v4, Lcom/google/android/exoplayer2/extractor/c/g$a;->b:Lcom/google/android/exoplayer2/extractor/c/m;

    .line 491
    invoke-virtual {v5, p1, p2}, Lcom/google/android/exoplayer2/extractor/c/m;->a(J)I

    move-result v0

    .line 492
    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    .line 494
    invoke-virtual {v5, p1, p2}, Lcom/google/android/exoplayer2/extractor/c/m;->b(J)I

    move-result v0

    .line 496
    :cond_0
    iput v0, v4, Lcom/google/android/exoplayer2/extractor/c/g$a;->d:I

    .line 489
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 498
    :cond_1
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 192
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->g:I

    .line 193
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->j:I

    .line 194
    return-void
.end method

.method private e()I
    .locals 7

    .prologue
    .line 466
    const/4 v1, -0x1

    .line 467
    const-wide v2, 0x7fffffffffffffffL

    .line 468
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/c/g;->o:[Lcom/google/android/exoplayer2/extractor/c/g$a;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 469
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/c/g;->o:[Lcom/google/android/exoplayer2/extractor/c/g$a;

    aget-object v4, v4, v0

    .line 470
    iget v5, v4, Lcom/google/android/exoplayer2/extractor/c/g$a;->d:I

    .line 471
    iget-object v6, v4, Lcom/google/android/exoplayer2/extractor/c/g$a;->b:Lcom/google/android/exoplayer2/extractor/c/m;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/c/m;->a:I

    if-ne v5, v6, :cond_1

    .line 468
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 475
    :cond_1
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/c/g$a;->b:Lcom/google/android/exoplayer2/extractor/c/m;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/c/m;->b:[J

    aget-wide v4, v4, v5

    .line 476
    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    move-wide v2, v4

    move v1, v0

    .line 478
    goto :goto_1

    .line 482
    :cond_2
    return v1
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/extractor/g;Lcom/google/android/exoplayer2/extractor/l;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 140
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->g:I

    packed-switch v0, :pswitch_data_0

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 142
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/c/g;->b(Lcom/google/android/exoplayer2/extractor/g;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const/4 v0, -0x1

    .line 152
    :goto_0
    return v0

    .line 147
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/c/g;->b(Lcom/google/android/exoplayer2/extractor/g;Lcom/google/android/exoplayer2/extractor/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x1

    goto :goto_0

    .line 152
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/c/g;->c(Lcom/google/android/exoplayer2/extractor/g;Lcom/google/android/exoplayer2/extractor/l;)I

    move-result v0

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(JJ)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 121
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/c/g;->j:I

    .line 122
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/c/g;->l:I

    .line 123
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/c/g;->m:I

    .line 124
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/c/g;->d()V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->o:[Lcom/google/android/exoplayer2/extractor/c/g$a;

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0, p3, p4}, Lcom/google/android/exoplayer2/extractor/c/g;->c(J)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/h;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/c/g;->n:Lcom/google/android/exoplayer2/extractor/h;

    .line 116
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/g;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/c/i;->b(Lcom/google/android/exoplayer2/extractor/g;)Z

    move-result v0

    return v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/c/g;->p:J

    return-wide v0
.end method

.method public b(J)J
    .locals 9

    .prologue
    .line 173
    const-wide v2, 0x7fffffffffffffffL

    .line 174
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/c/g;->o:[Lcom/google/android/exoplayer2/extractor/c/g$a;

    array-length v6, v5

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    .line 175
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/c/g$a;->b:Lcom/google/android/exoplayer2/extractor/c/m;

    .line 176
    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer2/extractor/c/m;->a(J)I

    move-result v0

    .line 177
    const/4 v7, -0x1

    if-ne v0, v7, :cond_0

    .line 179
    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer2/extractor/c/m;->b(J)I

    move-result v0

    .line 181
    :cond_0
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/c/m;->b:[J

    aget-wide v0, v1, v0

    .line 182
    cmp-long v7, v0, v2

    if-gez v7, :cond_2

    .line 174
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_0

    .line 186
    :cond_1
    return-wide v2

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public c()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method
