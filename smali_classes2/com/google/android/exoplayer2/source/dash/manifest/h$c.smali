.class public Lcom/google/android/exoplayer2/source/dash/manifest/h$c;
.super Lcom/google/android/exoplayer2/source/dash/manifest/h$a;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/manifest/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field final g:Lcom/google/android/exoplayer2/source/dash/manifest/j;

.field final h:Lcom/google/android/exoplayer2/source/dash/manifest/j;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/e;JJIJLjava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/j;Lcom/google/android/exoplayer2/source/dash/manifest/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/e;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/h$d;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/j;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/j;",
            ")V"
        }
    .end annotation

    .prologue
    .line 300
    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/e;JJIJLjava/util/List;)V

    .line 302
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;->g:Lcom/google/android/exoplayer2/source/dash/manifest/j;

    .line 303
    iput-object p11, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;->h:Lcom/google/android/exoplayer2/source/dash/manifest/j;

    .line 304
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 5

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 338
    :goto_0
    return v0

    .line 334
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 335
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;->e:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;->b:J

    div-long/2addr v0, v2

    .line 336
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/util/v;->a(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 338
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/source/dash/manifest/f;)Lcom/google/android/exoplayer2/source/dash/manifest/e;
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 308
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;->g:Lcom/google/android/exoplayer2/source/dash/manifest/j;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;->g:Lcom/google/android/exoplayer2/source/dash/manifest/j;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/f;->c:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/dash/manifest/f;->c:Lcom/google/android/exoplayer2/Format;

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->b:I

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/j;->a(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v3

    .line 311
    new-instance v2, Lcom/google/android/exoplayer2/source/dash/manifest/e;

    const-wide/16 v6, -0x1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/dash/manifest/e;-><init>(Ljava/lang/String;JJ)V

    .line 313
    :goto_0
    return-object v2

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->a(Lcom/google/android/exoplayer2/source/dash/manifest/f;)Lcom/google/android/exoplayer2/source/dash/manifest/e;

    move-result-object v2

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/source/dash/manifest/f;I)Lcom/google/android/exoplayer2/source/dash/manifest/e;
    .locals 6

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;->f:Ljava/util/List;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;->d:I

    sub-int v1, p2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/h$d;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/dash/manifest/h$d;->a:J

    .line 325
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;->h:Lcom/google/android/exoplayer2/source/dash/manifest/j;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/f;->c:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/f;->c:Lcom/google/android/exoplayer2/Format;

    iget v3, v2, Lcom/google/android/exoplayer2/Format;->b:I

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/j;->a(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v1

    .line 327
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/e;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/e;-><init>(Ljava/lang/String;JJ)V

    return-object v0

    .line 323
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;->d:I

    sub-int v0, p2, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$c;->e:J

    mul-long v4, v0, v2

    goto :goto_0
.end method
