.class final Lcom/google/android/exoplayer2/extractor/f/o$a;
.super Ljava/lang/Object;
.source "PsExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/f/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/f/g;

.field private final b:Lcom/google/android/exoplayer2/util/s;

.field private final c:Lcom/google/android/exoplayer2/util/k;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/f/g;Lcom/google/android/exoplayer2/util/s;)V
    .locals 2

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->a:Lcom/google/android/exoplayer2/extractor/f/g;

    .line 258
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->b:Lcom/google/android/exoplayer2/util/s;

    .line 259
    new-instance v0, Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0x40

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/k;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->c:Lcom/google/android/exoplayer2/util/k;

    .line 260
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 297
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 298
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/k;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->d:Z

    .line 299
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/k;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->e:Z

    .line 302
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->c:Lcom/google/android/exoplayer2/util/k;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->g:I

    .line 304
    return-void
.end method

.method private c()V
    .locals 9

    .prologue
    const/16 v8, 0x1e

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/16 v7, 0xf

    const/4 v6, 0x1

    .line 307
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->h:J

    .line 308
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->d:Z

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 310
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v8

    .line 311
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 312
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xf

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 313
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 314
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 315
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 316
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->f:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->e:Z

    if-eqz v2, :cond_0

    .line 317
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 318
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v8

    .line 319
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 320
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0xf

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 321
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 322
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 323
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 329
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->b:Lcom/google/android/exoplayer2/util/s;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/exoplayer2/util/s;->b(J)J

    .line 330
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->f:Z

    .line 332
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->b:Lcom/google/android/exoplayer2/util/s;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/util/s;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->h:J

    .line 334
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->f:Z

    .line 271
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->a:Lcom/google/android/exoplayer2/extractor/f/g;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/f/g;->a()V

    .line 272
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/util/l;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->c:Lcom/google/android/exoplayer2/util/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/k;->a:[B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 281
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/k;->a(I)V

    .line 282
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/f/o$a;->b()V

    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->c:Lcom/google/android/exoplayer2/util/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/k;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->g:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 284
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/k;->a(I)V

    .line 285
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/f/o$a;->c()V

    .line 286
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->a:Lcom/google/android/exoplayer2/extractor/f/g;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->h:J

    const/4 v1, 0x1

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/f/g;->a(JZ)V

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->a:Lcom/google/android/exoplayer2/extractor/f/g;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/f/g;->a(Lcom/google/android/exoplayer2/util/l;)V

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/o$a;->a:Lcom/google/android/exoplayer2/extractor/f/g;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/f/g;->b()V

    .line 290
    return-void
.end method
