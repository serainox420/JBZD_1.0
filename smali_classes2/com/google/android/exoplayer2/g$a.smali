.class final Lcom/google/android/exoplayer2/g$a;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/f;

.field public final b:Ljava/lang/Object;

.field public final c:[Lcom/google/android/exoplayer2/source/i;

.field public final d:[Z

.field public final e:J

.field public f:I

.field public g:J

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Lcom/google/android/exoplayer2/g$a;

.field public l:Z

.field public m:Lcom/google/android/exoplayer2/b/i;

.field private final n:[Lcom/google/android/exoplayer2/j;

.field private final o:[Lcom/google/android/exoplayer2/k;

.field private final p:Lcom/google/android/exoplayer2/b/h;

.field private final q:Lcom/google/android/exoplayer2/i;

.field private final r:Lcom/google/android/exoplayer2/source/g;

.field private s:Lcom/google/android/exoplayer2/b/i;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/j;[Lcom/google/android/exoplayer2/k;JLcom/google/android/exoplayer2/b/h;Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/source/g;Ljava/lang/Object;IZJ)V
    .locals 1

    .prologue
    .line 1424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1425
    iput-object p1, p0, Lcom/google/android/exoplayer2/g$a;->n:[Lcom/google/android/exoplayer2/j;

    .line 1426
    iput-object p2, p0, Lcom/google/android/exoplayer2/g$a;->o:[Lcom/google/android/exoplayer2/k;

    .line 1427
    iput-wide p3, p0, Lcom/google/android/exoplayer2/g$a;->e:J

    .line 1428
    iput-object p5, p0, Lcom/google/android/exoplayer2/g$a;->p:Lcom/google/android/exoplayer2/b/h;

    .line 1429
    iput-object p6, p0, Lcom/google/android/exoplayer2/g$a;->q:Lcom/google/android/exoplayer2/i;

    .line 1430
    iput-object p7, p0, Lcom/google/android/exoplayer2/g$a;->r:Lcom/google/android/exoplayer2/source/g;

    .line 1431
    invoke-static {p8}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/g$a;->b:Ljava/lang/Object;

    .line 1432
    iput p9, p0, Lcom/google/android/exoplayer2/g$a;->f:I

    .line 1433
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/g$a;->h:Z

    .line 1434
    iput-wide p11, p0, Lcom/google/android/exoplayer2/g$a;->g:J

    .line 1435
    array-length v0, p1

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/i;

    iput-object v0, p0, Lcom/google/android/exoplayer2/g$a;->c:[Lcom/google/android/exoplayer2/source/i;

    .line 1436
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/g$a;->d:[Z

    .line 1437
    invoke-interface {p6}, Lcom/google/android/exoplayer2/i;->d()Lcom/google/android/exoplayer2/upstream/b;

    move-result-object v0

    invoke-interface {p7, p9, v0, p11, p12}, Lcom/google/android/exoplayer2/source/g;->a(ILcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/source/f;

    .line 1439
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 1450
    iget-wide v0, p0, Lcom/google/android/exoplayer2/g$a;->e:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/g$a;->g:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public a(J)J
    .locals 3

    .prologue
    .line 1442
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/g$a;->a()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public a(JZ)J
    .locals 3

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/google/android/exoplayer2/g$a;->n:[Lcom/google/android/exoplayer2/j;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/g$a;->a(JZ[Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(JZ[Z)J
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1486
    iget-object v0, p0, Lcom/google/android/exoplayer2/g$a;->m:Lcom/google/android/exoplayer2/b/i;

    iget-object v10, v0, Lcom/google/android/exoplayer2/b/i;->b:Lcom/google/android/exoplayer2/b/g;

    move v0, v8

    .line 1487
    :goto_0
    iget v1, v10, Lcom/google/android/exoplayer2/b/g;->a:I

    if-ge v0, v1, :cond_1

    .line 1488
    iget-object v2, p0, Lcom/google/android/exoplayer2/g$a;->d:[Z

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/g$a;->m:Lcom/google/android/exoplayer2/b/i;

    iget-object v3, p0, Lcom/google/android/exoplayer2/g$a;->s:Lcom/google/android/exoplayer2/b/i;

    .line 1489
    invoke-virtual {v1, v3, v0}, Lcom/google/android/exoplayer2/b/i;->a(Lcom/google/android/exoplayer2/b/i;I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v9

    :goto_1
    aput-boolean v1, v2, v0

    .line 1487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v8

    .line 1489
    goto :goto_1

    .line 1493
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/source/f;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/b/g;->a()[Lcom/google/android/exoplayer2/b/f;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/g$a;->d:[Z

    iget-object v4, p0, Lcom/google/android/exoplayer2/g$a;->c:[Lcom/google/android/exoplayer2/source/i;

    move-object v5, p4

    move-wide v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/f;->a([Lcom/google/android/exoplayer2/b/f;[Z[Lcom/google/android/exoplayer2/source/i;[ZJ)J

    move-result-wide v2

    .line 1495
    iget-object v0, p0, Lcom/google/android/exoplayer2/g$a;->m:Lcom/google/android/exoplayer2/b/i;

    iput-object v0, p0, Lcom/google/android/exoplayer2/g$a;->s:Lcom/google/android/exoplayer2/b/i;

    .line 1498
    iput-boolean v8, p0, Lcom/google/android/exoplayer2/g$a;->j:Z

    move v0, v8

    .line 1499
    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/g$a;->c:[Lcom/google/android/exoplayer2/source/i;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 1500
    iget-object v1, p0, Lcom/google/android/exoplayer2/g$a;->c:[Lcom/google/android/exoplayer2/source/i;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 1501
    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/b/g;->a(I)Lcom/google/android/exoplayer2/b/f;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v9

    :goto_3
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 1502
    iput-boolean v9, p0, Lcom/google/android/exoplayer2/g$a;->j:Z

    .line 1499
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v1, v8

    .line 1501
    goto :goto_3

    .line 1504
    :cond_3
    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/b/g;->a(I)Lcom/google/android/exoplayer2/b/f;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v9

    :goto_5
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    goto :goto_4

    :cond_4
    move v1, v8

    goto :goto_5

    .line 1509
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/g$a;->q:Lcom/google/android/exoplayer2/i;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g$a;->n:[Lcom/google/android/exoplayer2/j;

    iget-object v4, p0, Lcom/google/android/exoplayer2/g$a;->m:Lcom/google/android/exoplayer2/b/i;

    iget-object v4, v4, Lcom/google/android/exoplayer2/b/i;->a:Lcom/google/android/exoplayer2/source/m;

    invoke-interface {v0, v1, v4, v10}, Lcom/google/android/exoplayer2/i;->a([Lcom/google/android/exoplayer2/j;Lcom/google/android/exoplayer2/source/m;Lcom/google/android/exoplayer2/b/g;)V

    .line 1510
    return-wide v2
.end method

.method public a(IZ)V
    .locals 0

    .prologue
    .line 1454
    iput p1, p0, Lcom/google/android/exoplayer2/g$a;->f:I

    .line 1455
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/g$a;->h:Z

    .line 1456
    return-void
.end method

.method public b(J)J
    .locals 3

    .prologue
    .line 1446
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/g$a;->a()J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 1459
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g$a;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g$a;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/source/f;

    .line 1460
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/f;->f()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/g$a;->i:Z

    .line 1465
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/g$a;->d()Z

    .line 1466
    iget-wide v0, p0, Lcom/google/android/exoplayer2/g$a;->g:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/g$a;->a(JZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/g$a;->g:J

    .line 1467
    return-void
.end method

.method public d()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/google/android/exoplayer2/g$a;->p:Lcom/google/android/exoplayer2/b/h;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g$a;->o:[Lcom/google/android/exoplayer2/k;

    iget-object v2, p0, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/source/f;

    .line 1471
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/f;->d()Lcom/google/android/exoplayer2/source/m;

    move-result-object v2

    .line 1470
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/b/h;->a([Lcom/google/android/exoplayer2/k;Lcom/google/android/exoplayer2/source/m;)Lcom/google/android/exoplayer2/b/i;

    move-result-object v0

    .line 1472
    iget-object v1, p0, Lcom/google/android/exoplayer2/g$a;->s:Lcom/google/android/exoplayer2/b/i;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b/i;->a(Lcom/google/android/exoplayer2/b/i;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1473
    const/4 v0, 0x0

    .line 1476
    :goto_0
    return v0

    .line 1475
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/g$a;->m:Lcom/google/android/exoplayer2/b/i;

    .line 1476
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 1515
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/g$a;->r:Lcom/google/android/exoplayer2/source/g;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/source/f;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/g;->a(Lcom/google/android/exoplayer2/source/f;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1520
    :goto_0
    return-void

    .line 1516
    :catch_0
    move-exception v0

    .line 1518
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Period release failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
