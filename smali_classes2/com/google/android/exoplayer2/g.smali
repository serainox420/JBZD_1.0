.class final Lcom/google/android/exoplayer2/g;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/exoplayer2/b/h$a;
.implements Lcom/google/android/exoplayer2/source/f$a;
.implements Lcom/google/android/exoplayer2/source/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/g$c;,
        Lcom/google/android/exoplayer2/g$a;,
        Lcom/google/android/exoplayer2/g$d;,
        Lcom/google/android/exoplayer2/g$b;
    }
.end annotation


# instance fields
.field private A:J

.field private B:Lcom/google/android/exoplayer2/g$a;

.field private C:Lcom/google/android/exoplayer2/g$a;

.field private D:Lcom/google/android/exoplayer2/g$a;

.field private E:Lcom/google/android/exoplayer2/n;

.field private final a:[Lcom/google/android/exoplayer2/j;

.field private final b:[Lcom/google/android/exoplayer2/k;

.field private final c:Lcom/google/android/exoplayer2/b/h;

.field private final d:Lcom/google/android/exoplayer2/i;

.field private final e:Lcom/google/android/exoplayer2/util/r;

.field private final f:Landroid/os/Handler;

.field private final g:Landroid/os/HandlerThread;

.field private final h:Landroid/os/Handler;

.field private final i:Lcom/google/android/exoplayer2/d;

.field private final j:Lcom/google/android/exoplayer2/n$b;

.field private final k:Lcom/google/android/exoplayer2/n$a;

.field private l:Lcom/google/android/exoplayer2/g$b;

.field private m:Lcom/google/android/exoplayer2/j;

.field private n:Lcom/google/android/exoplayer2/util/h;

.field private o:Lcom/google/android/exoplayer2/source/g;

.field private p:[Lcom/google/android/exoplayer2/j;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:J

.field private y:I

.field private z:Lcom/google/android/exoplayer2/g$c;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/j;Lcom/google/android/exoplayer2/b/h;Lcom/google/android/exoplayer2/i;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/g$b;Lcom/google/android/exoplayer2/d;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/google/android/exoplayer2/g;->a:[Lcom/google/android/exoplayer2/j;

    .line 173
    iput-object p2, p0, Lcom/google/android/exoplayer2/g;->c:Lcom/google/android/exoplayer2/b/h;

    .line 174
    iput-object p3, p0, Lcom/google/android/exoplayer2/g;->d:Lcom/google/android/exoplayer2/i;

    .line 175
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/g;->r:Z

    .line 176
    iput-object p5, p0, Lcom/google/android/exoplayer2/g;->h:Landroid/os/Handler;

    .line 177
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/g;->u:I

    .line 178
    iput-object p6, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    .line 179
    iput-object p7, p0, Lcom/google/android/exoplayer2/g;->i:Lcom/google/android/exoplayer2/d;

    .line 181
    array-length v0, p1

    new-array v0, v0, [Lcom/google/android/exoplayer2/k;

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->b:[Lcom/google/android/exoplayer2/k;

    move v0, v1

    .line 182
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 183
    aget-object v2, p1, v0

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/j;->a(I)V

    .line 184
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->b:[Lcom/google/android/exoplayer2/k;

    aget-object v3, p1, v0

    invoke-interface {v3}, Lcom/google/android/exoplayer2/j;->b()Lcom/google/android/exoplayer2/k;

    move-result-object v3

    aput-object v3, v2, v0

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/util/r;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/r;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->e:Lcom/google/android/exoplayer2/util/r;

    .line 187
    new-array v0, v1, [Lcom/google/android/exoplayer2/j;

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->p:[Lcom/google/android/exoplayer2/j;

    .line 188
    new-instance v0, Lcom/google/android/exoplayer2/n$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/n$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->j:Lcom/google/android/exoplayer2/n$b;

    .line 189
    new-instance v0, Lcom/google/android/exoplayer2/n$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/n$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/n$a;

    .line 190
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/b/h;->a(Lcom/google/android/exoplayer2/b/h$a;)V

    .line 194
    new-instance v0, Lcom/google/android/exoplayer2/util/o;

    const-string v1, "ExoPlayerImplInternal:Handler"

    const/16 v2, -0x10

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/o;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->g:Landroid/os/HandlerThread;

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 197
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->f:Landroid/os/Handler;

    .line 198
    return-void
.end method

.method private a(ILcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/n;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 991
    move v0, v1

    .line 992
    :goto_0
    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/n;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_0

    .line 993
    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/n$a;

    const/4 v2, 0x1

    .line 994
    invoke-virtual {p2, p1, v0, v2}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$a;Z)Lcom/google/android/exoplayer2/n$a;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/n$a;->b:Ljava/lang/Object;

    .line 993
    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/n;->a(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 996
    :cond_0
    return v0
.end method

.method private a(IJ)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 581
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->d()V

    .line 582
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/g;->s:Z

    .line 583
    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/g;->a(I)V

    .line 586
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-nez v0, :cond_2

    .line 588
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_8

    .line 589
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/g$a;->e()V

    move-object v0, v2

    .line 606
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    if-eq v1, v4, :cond_5

    .line 608
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->p:[Lcom/google/android/exoplayer2/j;

    array-length v5, v4

    move v1, v3

    :goto_1
    if-ge v1, v5, :cond_4

    aget-object v6, v4, v1

    .line 609
    invoke-interface {v6}, Lcom/google/android/exoplayer2/j;->l()V

    .line 608
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 593
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    move-object v0, v2

    .line 594
    :goto_2
    if-eqz v1, :cond_0

    .line 595
    iget v4, v1, Lcom/google/android/exoplayer2/g$a;->f:I

    if-ne v4, p1, :cond_3

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/g$a;->i:Z

    if-eqz v4, :cond_3

    move-object v0, v1

    .line 600
    :goto_3
    iget-object v1, v1, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    goto :goto_2

    .line 598
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/g$a;->e()V

    goto :goto_3

    .line 611
    :cond_4
    new-array v1, v3, [Lcom/google/android/exoplayer2/j;

    iput-object v1, p0, Lcom/google/android/exoplayer2/g;->p:[Lcom/google/android/exoplayer2/j;

    .line 612
    iput-object v2, p0, Lcom/google/android/exoplayer2/g;->n:Lcom/google/android/exoplayer2/util/h;

    .line 613
    iput-object v2, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/j;

    .line 614
    iput-object v2, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    .line 618
    :cond_5
    if-eqz v0, :cond_7

    .line 619
    iput-object v2, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    .line 620
    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    .line 621
    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    .line 622
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->b(Lcom/google/android/exoplayer2/g$a;)V

    .line 623
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/g$a;->j:Z

    if-eqz v0, :cond_6

    .line 624
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/source/f;

    invoke-interface {v0, p2, p3}, Lcom/google/android/exoplayer2/source/f;->c(J)J

    move-result-wide p2

    .line 626
    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/g;->a(J)V

    .line 627
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->m()V

    .line 635
    :goto_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->f:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 636
    return-wide p2

    .line 629
    :cond_7
    iput-object v2, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    .line 630
    iput-object v2, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    .line 631
    iput-object v2, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    .line 632
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/g;->a(J)V

    goto :goto_4

    :cond_8
    move-object v0, v2

    goto :goto_0
.end method

.method private a(Lcom/google/android/exoplayer2/n;IJJ)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/n;",
            "IJJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 1077
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/n;->b()I

    move-result v0

    invoke-static {p2, v3, v0}, Lcom/google/android/exoplayer2/util/a;->a(III)I

    .line 1078
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->j:Lcom/google/android/exoplayer2/n$b;

    move-object v0, p1

    move v1, p2

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$b;ZJ)Lcom/google/android/exoplayer2/n$b;

    .line 1079
    cmp-long v0, p3, v6

    if-nez v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->j:Lcom/google/android/exoplayer2/n$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n$b;->a()J

    move-result-wide p3

    .line 1081
    cmp-long v0, p3, v6

    if-nez v0, :cond_0

    .line 1082
    const/4 v0, 0x0

    .line 1093
    :goto_0
    return-object v0

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->j:Lcom/google/android/exoplayer2/n$b;

    iget v4, v0, Lcom/google/android/exoplayer2/n$b;->f:I

    .line 1086
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->j:Lcom/google/android/exoplayer2/n$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n$b;->c()J

    move-result-wide v0

    add-long v2, v0, p3

    .line 1087
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/n$a;

    invoke-virtual {p1, v4, v0}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$a;)Lcom/google/android/exoplayer2/n$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n$a;->a()J

    move-result-wide v0

    .line 1088
    :goto_1
    cmp-long v5, v0, v6

    if-eqz v5, :cond_1

    cmp-long v5, v2, v0

    if-ltz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/exoplayer2/g;->j:Lcom/google/android/exoplayer2/n$b;

    iget v5, v5, Lcom/google/android/exoplayer2/n$b;->g:I

    if-ge v4, v5, :cond_1

    .line 1090
    sub-long/2addr v2, v0

    .line 1091
    add-int/lit8 v4, v4, 0x1

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/n$a;

    invoke-virtual {p1, v4, v0}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$a;)Lcom/google/android/exoplayer2/n$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n$a;->a()J

    move-result-wide v0

    goto :goto_1

    .line 1093
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 360
    iget v0, p0, Lcom/google/android/exoplayer2/g;->u:I

    if-eq v0, p1, :cond_0

    .line 361
    iput p1, p0, Lcom/google/android/exoplayer2/g;->u:I

    .line 362
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 364
    :cond_0
    return-void
.end method

.method private a(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 640
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-nez v0, :cond_0

    const-wide/32 v0, 0x3938700

    add-long/2addr v0, p1

    .line 642
    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/g;->A:J

    .line 643
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->e:Lcom/google/android/exoplayer2/util/r;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/g;->A:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/util/r;->a(J)V

    .line 644
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->p:[Lcom/google/android/exoplayer2/j;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 645
    iget-wide v4, p0, Lcom/google/android/exoplayer2/g;->A:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/j;->a(J)V

    .line 644
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    .line 642
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/g$a;->a(J)J

    move-result-wide v0

    goto :goto_0

    .line 647
    :cond_1
    return-void
.end method

.method private a(JJ)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 527
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->f:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 528
    add-long v0, p1, p3

    .line 529
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 530
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 531
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->f:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->f:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private a(Landroid/util/Pair;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/exoplayer2/n;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 849
    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    .line 850
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/n;

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    .line 851
    iget-object v6, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 853
    const/4 v1, 0x0

    .line 854
    if-nez v4, :cond_1

    .line 855
    iget v0, p0, Lcom/google/android/exoplayer2/g;->y:I

    if-lez v0, :cond_2

    .line 856
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->z:Lcom/google/android/exoplayer2/g$c;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->b(Lcom/google/android/exoplayer2/g$c;)Landroid/util/Pair;

    move-result-object v2

    .line 857
    iget v1, p0, Lcom/google/android/exoplayer2/g;->y:I

    .line 858
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/g;->y:I

    .line 859
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->z:Lcom/google/android/exoplayer2/g$c;

    .line 860
    if-nez v2, :cond_0

    .line 863
    invoke-direct {p0, v6, v1}, Lcom/google/android/exoplayer2/g;->a(Ljava/lang/Object;I)V

    .line 960
    :goto_0
    return-void

    .line 866
    :cond_0
    new-instance v3, Lcom/google/android/exoplayer2/g$b;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v3, v5, v8, v9}, Lcom/google/android/exoplayer2/g$b;-><init>(IJ)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    .line 877
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    .line 879
    :goto_2
    if-nez v2, :cond_5

    .line 881
    invoke-direct {p0, v6, v1}, Lcom/google/android/exoplayer2/g;->b(Ljava/lang/Object;I)V

    goto :goto_0

    .line 867
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/g$b;->b:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v8

    if-nez v0, :cond_1

    .line 868
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 869
    invoke-direct {p0, v6, v1}, Lcom/google/android/exoplayer2/g;->a(Ljava/lang/Object;I)V

    goto :goto_0

    .line 872
    :cond_3
    const/4 v0, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/g;->b(IJ)Landroid/util/Pair;

    move-result-object v2

    .line 873
    new-instance v3, Lcom/google/android/exoplayer2/g$b;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v3, v5, v8, v9}, Lcom/google/android/exoplayer2/g$b;-><init>(IJ)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    goto :goto_1

    .line 877
    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    goto :goto_2

    .line 885
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    iget-object v3, v2, Lcom/google/android/exoplayer2/g$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/n;->a(Ljava/lang/Object;)I

    move-result v3

    .line 886
    const/4 v0, -0x1

    if-ne v3, v0, :cond_9

    .line 889
    iget v0, v2, Lcom/google/android/exoplayer2/g$a;->f:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    invoke-direct {p0, v0, v4, v3}, Lcom/google/android/exoplayer2/g;->a(ILcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/n;)I

    move-result v0

    .line 890
    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    .line 892
    invoke-direct {p0, v6, v1}, Lcom/google/android/exoplayer2/g;->a(Ljava/lang/Object;I)V

    goto :goto_0

    .line 896
    :cond_6
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/n$a;

    .line 897
    invoke-virtual {v3, v0, v4}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$a;)Lcom/google/android/exoplayer2/n$a;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/n$a;->c:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 896
    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/exoplayer2/g;->b(IJ)Landroid/util/Pair;

    move-result-object v4

    .line 898
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 899
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 900
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    iget-object v7, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/n$a;

    const/4 v8, 0x1

    invoke-virtual {v0, v3, v7, v8}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$a;Z)Lcom/google/android/exoplayer2/n$a;

    .line 903
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/n$a;

    iget-object v7, v0, Lcom/google/android/exoplayer2/n$a;->b:Ljava/lang/Object;

    .line 904
    const/4 v0, -0x1

    iput v0, v2, Lcom/google/android/exoplayer2/g$a;->f:I

    move-object v0, v2

    .line 905
    :goto_3
    iget-object v2, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    if-eqz v2, :cond_8

    .line 906
    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    .line 907
    iget-object v2, v0, Lcom/google/android/exoplayer2/g$a;->b:Ljava/lang/Object;

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_4
    iput v2, v0, Lcom/google/android/exoplayer2/g$a;->f:I

    goto :goto_3

    :cond_7
    const/4 v2, -0x1

    goto :goto_4

    .line 910
    :cond_8
    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/exoplayer2/g;->a(IJ)J

    move-result-wide v4

    .line 911
    new-instance v0, Lcom/google/android/exoplayer2/g$b;

    invoke-direct {v0, v3, v4, v5}, Lcom/google/android/exoplayer2/g$b;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    .line 912
    invoke-direct {p0, v6, v1}, Lcom/google/android/exoplayer2/g;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 917
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/n$a;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$a;)Lcom/google/android/exoplayer2/n$a;

    .line 918
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_b

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/n$a;

    iget v4, v4, Lcom/google/android/exoplayer2/n$a;->c:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/g;->j:Lcom/google/android/exoplayer2/n$b;

    .line 919
    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$b;)Lcom/google/android/exoplayer2/n$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/n$b;->e:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 920
    :goto_5
    invoke-virtual {v2, v3, v0}, Lcom/google/android/exoplayer2/g$a;->a(IZ)V

    .line 921
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    if-ne v2, v0, :cond_c

    const/4 v0, 0x1

    .line 922
    :goto_6
    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    iget v4, v4, Lcom/google/android/exoplayer2/g$b;->a:I

    if-eq v3, v4, :cond_a

    .line 923
    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/g$b;->a(I)Lcom/google/android/exoplayer2/g$b;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    :cond_a
    move v10, v3

    move-object v3, v2

    move v2, v10

    .line 928
    :goto_7
    iget-object v4, v3, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    if-eqz v4, :cond_10

    .line 930
    iget-object v4, v3, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    .line 931
    add-int/lit8 v2, v2, 0x1

    .line 932
    iget-object v5, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    iget-object v7, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/n$a;

    const/4 v8, 0x1

    invoke-virtual {v5, v2, v7, v8}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$a;Z)Lcom/google/android/exoplayer2/n$a;

    .line 933
    iget-object v5, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/n;->c()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_d

    iget-object v5, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    iget-object v7, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/n$a;

    iget v7, v7, Lcom/google/android/exoplayer2/n$a;->c:I

    iget-object v8, p0, Lcom/google/android/exoplayer2/g;->j:Lcom/google/android/exoplayer2/n$b;

    .line 934
    invoke-virtual {v5, v7, v8}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$b;)Lcom/google/android/exoplayer2/n$b;

    move-result-object v5

    iget-boolean v5, v5, Lcom/google/android/exoplayer2/n$b;->e:Z

    if-nez v5, :cond_d

    const/4 v5, 0x1

    .line 935
    :goto_8
    iget-object v7, v4, Lcom/google/android/exoplayer2/g$a;->b:Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/n$a;

    iget-object v8, v8, Lcom/google/android/exoplayer2/n$a;->b:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 937
    invoke-virtual {v4, v2, v5}, Lcom/google/android/exoplayer2/g$a;->a(IZ)V

    .line 938
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    if-ne v4, v3, :cond_e

    const/4 v3, 0x1

    :goto_9
    or-int/2addr v0, v3

    move-object v3, v4

    .line 957
    goto :goto_7

    .line 919
    :cond_b
    const/4 v0, 0x0

    goto :goto_5

    .line 921
    :cond_c
    const/4 v0, 0x0

    goto :goto_6

    .line 934
    :cond_d
    const/4 v5, 0x0

    goto :goto_8

    .line 938
    :cond_e
    const/4 v3, 0x0

    goto :goto_9

    .line 941
    :cond_f
    if-nez v0, :cond_11

    .line 944
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget v0, v0, Lcom/google/android/exoplayer2/g$a;->f:I

    .line 945
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/g$b;->c:J

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/g;->a(IJ)J

    move-result-wide v2

    .line 946
    new-instance v4, Lcom/google/android/exoplayer2/g$b;

    invoke-direct {v4, v0, v2, v3}, Lcom/google/android/exoplayer2/g$b;-><init>(IJ)V

    iput-object v4, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    .line 959
    :cond_10
    :goto_a
    invoke-direct {p0, v6, v1}, Lcom/google/android/exoplayer2/g;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 950
    :cond_11
    iput-object v3, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    .line 951
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    .line 953
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/g$a;)V

    goto :goto_a
.end method

.method private a(Lcom/google/android/exoplayer2/g$a;)V
    .locals 0

    .prologue
    .line 1309
    :goto_0
    if-eqz p1, :cond_0

    .line 1310
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/g$a;->e()V

    .line 1311
    iget-object p1, p1, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    goto :goto_0

    .line 1313
    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/g$c;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    if-nez v0, :cond_0

    .line 539
    iget v0, p0, Lcom/google/android/exoplayer2/g;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/g;->y:I

    .line 540
    iput-object p1, p0, Lcom/google/android/exoplayer2/g;->z:Lcom/google/android/exoplayer2/g$c;

    .line 577
    :goto_0
    return-void

    .line 544
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/g;->b(Lcom/google/android/exoplayer2/g$c;)Landroid/util/Pair;

    move-result-object v2

    .line 545
    if-nez v2, :cond_1

    .line 548
    new-instance v0, Lcom/google/android/exoplayer2/g$b;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/g$b;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    .line 549
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->h:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 552
    new-instance v0, Lcom/google/android/exoplayer2/g$b;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/g$b;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    .line 553
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->a(I)V

    .line 555
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->d(Z)V

    goto :goto_0

    .line 559
    :cond_1
    iget-wide v0, p1, Lcom/google/android/exoplayer2/g$c;->c:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 560
    :goto_1
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 561
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    iget v0, v0, Lcom/google/android/exoplayer2/g$b;->a:I

    if-ne v3, v0, :cond_4

    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    iget-wide v8, v0, Lcom/google/android/exoplayer2/g$b;->c:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v6, v8

    if-nez v0, :cond_4

    .line 573
    new-instance v0, Lcom/google/android/exoplayer2/g$b;

    invoke-direct {v0, v3, v4, v5}, Lcom/google/android/exoplayer2/g$b;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    .line 574
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->h:Landroid/os/Handler;

    const/4 v3, 0x4

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :goto_2
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 575
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 559
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 574
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 569
    :cond_4
    :try_start_1
    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/exoplayer2/g;->a(IJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 570
    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    or-int/2addr v0, v1

    .line 573
    new-instance v1, Lcom/google/android/exoplayer2/g$b;

    invoke-direct {v1, v3, v6, v7}, Lcom/google/android/exoplayer2/g$b;-><init>(IJ)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    .line 574
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->h:Landroid/os/Handler;

    const/4 v2, 0x4

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_4
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 575
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 570
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 574
    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 573
    :catchall_0
    move-exception v0

    move-object v2, v0

    new-instance v0, Lcom/google/android/exoplayer2/g$b;

    invoke-direct {v0, v3, v4, v5}, Lcom/google/android/exoplayer2/g$b;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    .line 574
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->h:Landroid/os/Handler;

    const/4 v4, 0x4

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :goto_5
    const/4 v1, 0x0

    iget-object v5, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 575
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    throw v2

    .line 574
    :cond_7
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private a(Lcom/google/android/exoplayer2/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 715
    invoke-interface {p1}, Lcom/google/android/exoplayer2/j;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 716
    invoke-interface {p1}, Lcom/google/android/exoplayer2/j;->k()V

    .line 718
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Object;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 965
    new-instance v0, Lcom/google/android/exoplayer2/g$b;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/g$b;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    .line 966
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/g;->b(Ljava/lang/Object;I)V

    .line 968
    new-instance v0, Lcom/google/android/exoplayer2/g$b;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/g$b;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    .line 969
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->a(I)V

    .line 971
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/g;->d(Z)V

    .line 972
    return-void
.end method

.method private a([ZI)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1353
    new-array v0, p2, [Lcom/google/android/exoplayer2/j;

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->p:[Lcom/google/android/exoplayer2/j;

    .line 1354
    const/4 v1, 0x0

    .line 1355
    const/4 v0, 0x0

    move v9, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->a:[Lcom/google/android/exoplayer2/j;

    array-length v0, v0

    if-ge v9, v0, :cond_7

    .line 1356
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->a:[Lcom/google/android/exoplayer2/j;

    aget-object v0, v0, v9

    .line 1357
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/g$a;->m:Lcom/google/android/exoplayer2/b/i;

    iget-object v2, v2, Lcom/google/android/exoplayer2/b/i;->b:Lcom/google/android/exoplayer2/b/g;

    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/b/g;->a(I)Lcom/google/android/exoplayer2/b/f;

    move-result-object v4

    .line 1358
    if-eqz v4, :cond_6

    .line 1359
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->p:[Lcom/google/android/exoplayer2/j;

    add-int/lit8 v11, v1, 0x1

    aput-object v0, v2, v1

    .line 1360
    invoke-interface {v0}, Lcom/google/android/exoplayer2/j;->d()I

    move-result v1

    if-nez v1, :cond_5

    .line 1361
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/g$a;->m:Lcom/google/android/exoplayer2/b/i;

    iget-object v1, v1, Lcom/google/android/exoplayer2/b/i;->d:[Lcom/google/android/exoplayer2/l;

    aget-object v1, v1, v9

    .line 1364
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/g;->r:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/exoplayer2/g;->u:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v10, v2

    .line 1366
    :goto_1
    aget-boolean v2, p1, v9

    if-nez v2, :cond_1

    if-eqz v10, :cond_1

    const/4 v6, 0x1

    .line 1368
    :goto_2
    invoke-interface {v4}, Lcom/google/android/exoplayer2/b/f;->e()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/exoplayer2/Format;

    .line 1369
    const/4 v3, 0x0

    :goto_3
    array-length v5, v2

    if-ge v3, v5, :cond_2

    .line 1370
    invoke-interface {v4, v3}, Lcom/google/android/exoplayer2/b/f;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    aput-object v5, v2, v3

    .line 1369
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1364
    :cond_0
    const/4 v2, 0x0

    move v10, v2

    goto :goto_1

    .line 1366
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 1373
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v3, v3, Lcom/google/android/exoplayer2/g$a;->c:[Lcom/google/android/exoplayer2/source/i;

    aget-object v3, v3, v9

    iget-wide v4, p0, Lcom/google/android/exoplayer2/g;->A:J

    iget-object v7, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    .line 1374
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/g$a;->a()J

    move-result-wide v7

    .line 1373
    invoke-interface/range {v0 .. v8}, Lcom/google/android/exoplayer2/j;->a(Lcom/google/android/exoplayer2/l;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/i;JZJ)V

    .line 1375
    invoke-interface {v0}, Lcom/google/android/exoplayer2/j;->c()Lcom/google/android/exoplayer2/util/h;

    move-result-object v1

    .line 1376
    if-eqz v1, :cond_4

    .line 1377
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->n:Lcom/google/android/exoplayer2/util/h;

    if-eqz v2, :cond_3

    .line 1378
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multiple renderer media clocks enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->a(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 1381
    :cond_3
    iput-object v1, p0, Lcom/google/android/exoplayer2/g;->n:Lcom/google/android/exoplayer2/util/h;

    .line 1382
    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/j;

    .line 1385
    :cond_4
    if-eqz v10, :cond_5

    .line 1386
    invoke-interface {v0}, Lcom/google/android/exoplayer2/j;->e()V

    :cond_5
    move v1, v11

    .line 1355
    :cond_6
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_0

    .line 1391
    :cond_7
    return-void
.end method

.method private b(IJ)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/g;->b(Lcom/google/android/exoplayer2/n;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/google/android/exoplayer2/g$c;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/g$c;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 1009
    iget-object v0, p1, Lcom/google/android/exoplayer2/g$c;->a:Lcom/google/android/exoplayer2/n;

    .line 1010
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1013
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    move-object v2, v0

    .line 1018
    :goto_0
    :try_start_0
    iget v0, p1, Lcom/google/android/exoplayer2/g$c;->b:I

    iget-wide v4, p1, Lcom/google/android/exoplayer2/g$c;->c:J

    invoke-direct {p0, v2, v0, v4, v5}, Lcom/google/android/exoplayer2/g;->b(Lcom/google/android/exoplayer2/n;IJ)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1025
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    if-ne v0, v2, :cond_0

    move-object v0, v1

    .line 1043
    :goto_1
    return-object v0

    .line 1020
    :catch_0
    move-exception v0

    .line 1022
    new-instance v0, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    iget v2, p1, Lcom/google/android/exoplayer2/g$c;->b:I

    iget-wide v4, p1, Lcom/google/android/exoplayer2/g$c;->c:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/n;IJ)V

    throw v0

    .line 1030
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 1031
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/n$a;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$a;Z)Lcom/google/android/exoplayer2/n$a;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/n$a;->b:Ljava/lang/Object;

    .line 1030
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/n;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1032
    if-eq v0, v6, :cond_1

    .line 1034
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    .line 1037
    :cond_1
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/g;->a(ILcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/n;)I

    move-result v0

    .line 1038
    if-eq v0, v6, :cond_2

    .line 1040
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/n$a;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$a;)Lcom/google/android/exoplayer2/n$a;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/n$a;->c:I

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/g;->b(IJ)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    .line 1043
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method private b(Lcom/google/android/exoplayer2/n;IJ)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/n;",
            "IJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1059
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/n;IJJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/google/android/exoplayer2/g$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 1316
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-ne v0, p1, :cond_0

    .line 1349
    :goto_0
    return-void

    .line 1321
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->a:[Lcom/google/android/exoplayer2/j;

    array-length v0, v0

    new-array v4, v0, [Z

    move v0, v1

    move v2, v1

    .line 1322
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->a:[Lcom/google/android/exoplayer2/j;

    array-length v3, v3

    if-ge v0, v3, :cond_6

    .line 1323
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->a:[Lcom/google/android/exoplayer2/j;

    aget-object v5, v3, v0

    .line 1324
    invoke-interface {v5}, Lcom/google/android/exoplayer2/j;->d()I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_2
    aput-boolean v3, v4, v0

    .line 1325
    iget-object v3, p1, Lcom/google/android/exoplayer2/g$a;->m:Lcom/google/android/exoplayer2/b/i;

    iget-object v3, v3, Lcom/google/android/exoplayer2/b/i;->b:Lcom/google/android/exoplayer2/b/g;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/b/g;->a(I)Lcom/google/android/exoplayer2/b/f;

    move-result-object v3

    .line 1326
    if-eqz v3, :cond_1

    .line 1327
    add-int/lit8 v2, v2, 0x1

    .line 1329
    :cond_1
    aget-boolean v6, v4, v0

    if-eqz v6, :cond_4

    if-eqz v3, :cond_2

    .line 1330
    invoke-interface {v5}, Lcom/google/android/exoplayer2/j;->i()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1331
    invoke-interface {v5}, Lcom/google/android/exoplayer2/j;->f()Lcom/google/android/exoplayer2/source/i;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v6, v6, Lcom/google/android/exoplayer2/g$a;->c:[Lcom/google/android/exoplayer2/source/i;

    aget-object v6, v6, v0

    if-ne v3, v6, :cond_4

    .line 1335
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/j;

    if-ne v5, v3, :cond_3

    .line 1337
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->e:Lcom/google/android/exoplayer2/util/r;

    iget-object v6, p0, Lcom/google/android/exoplayer2/g;->n:Lcom/google/android/exoplayer2/util/h;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/util/h;->w()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/android/exoplayer2/util/r;->a(J)V

    .line 1338
    iput-object v8, p0, Lcom/google/android/exoplayer2/g;->n:Lcom/google/android/exoplayer2/util/h;

    .line 1339
    iput-object v8, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/j;

    .line 1341
    :cond_3
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/j;)V

    .line 1342
    invoke-interface {v5}, Lcom/google/android/exoplayer2/j;->l()V

    .line 1322
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v3, v1

    .line 1324
    goto :goto_2

    .line 1346
    :cond_6
    iput-object p1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    .line 1347
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    iget-object v3, p1, Lcom/google/android/exoplayer2/g$a;->m:Lcom/google/android/exoplayer2/b/i;

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1348
    invoke-direct {p0, v4, v2}, Lcom/google/android/exoplayer2/g;->a([ZI)V

    goto :goto_0
.end method

.method private b(Lcom/google/android/exoplayer2/source/g;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 374
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/g;->d(Z)V

    .line 375
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->d:Lcom/google/android/exoplayer2/i;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/i;->a()V

    .line 376
    if-eqz p2, :cond_0

    .line 377
    new-instance v0, Lcom/google/android/exoplayer2/g$b;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/g$b;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    .line 379
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/g;->o:Lcom/google/android/exoplayer2/source/g;

    .line 380
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->i:Lcom/google/android/exoplayer2/d;

    invoke-interface {p1, v0, v4, p0}, Lcom/google/android/exoplayer2/source/g;->a(Lcom/google/android/exoplayer2/d;ZLcom/google/android/exoplayer2/source/g$a;)V

    .line 381
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/g;->a(I)V

    .line 382
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->f:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 383
    return-void
.end method

.method private b(Ljava/lang/Object;I)V
    .locals 5

    .prologue
    .line 975
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->h:Landroid/os/Handler;

    const/4 v1, 0x6

    new-instance v2, Lcom/google/android/exoplayer2/g$d;

    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    invoke-direct {v2, v3, p1, v4, p2}, Lcom/google/android/exoplayer2/g$d;-><init>(Lcom/google/android/exoplayer2/n;Ljava/lang/Object;Lcom/google/android/exoplayer2/g$b;I)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 976
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 977
    return-void
.end method

.method private b(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 367
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g;->t:Z

    if-eq v0, p1, :cond_0

    .line 368
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/g;->t:Z

    .line 369
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->h:Landroid/os/Handler;

    const/4 v3, 0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 371
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 369
    goto :goto_0
.end method

.method private b(J)Z
    .locals 3

    .prologue
    .line 814
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/g$b;->c:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/g$a;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 402
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/g;->s:Z

    .line 403
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->e:Lcom/google/android/exoplayer2/util/r;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/r;->a()V

    .line 404
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->p:[Lcom/google/android/exoplayer2/j;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 405
    invoke-interface {v3}, Lcom/google/android/exoplayer2/j;->e()V

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    :cond_0
    return-void
.end method

.method private c(Lcom/google/android/exoplayer2/source/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/source/f;

    if-eq v0, p1, :cond_1

    .line 1279
    :cond_0
    :goto_0
    return-void

    .line 1271
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/g$a;->c()V

    .line 1272
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-nez v0, :cond_2

    .line 1274
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    .line 1275
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/g$a;->g:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/g;->a(J)V

    .line 1276
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->b(Lcom/google/android/exoplayer2/g$a;)V

    .line 1278
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->m()V

    goto :goto_0
.end method

.method private c(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/g;->s:Z

    .line 387
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/g;->r:Z

    .line 388
    if-nez p1, :cond_1

    .line 389
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->d()V

    .line 390
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->e()V

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/g;->u:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 393
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->c()V

    .line 394
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 395
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/g;->u:I

    if-ne v0, v2, :cond_0

    .line 396
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private c([Lcom/google/android/exoplayer2/d$c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 699
    :try_start_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 700
    iget-object v3, v2, Lcom/google/android/exoplayer2/d$c;->a:Lcom/google/android/exoplayer2/d$b;

    iget v4, v2, Lcom/google/android/exoplayer2/d$c;->b:I

    iget-object v2, v2, Lcom/google/android/exoplayer2/d$c;->c:Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/google/android/exoplayer2/d$b;->a(ILjava/lang/Object;)V

    .line 699
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->o:Lcom/google/android/exoplayer2/source/g;

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 707
    :cond_1
    monitor-enter p0

    .line 708
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/g;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/g;->w:I

    .line 709
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 710
    monitor-exit p0

    .line 712
    return-void

    .line 710
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 707
    :catchall_1
    move-exception v0

    monitor-enter p0

    .line 708
    :try_start_2
    iget v1, p0, Lcom/google/android/exoplayer2/g;->w:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/g;->w:I

    .line 709
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 710
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method private d()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->e:Lcom/google/android/exoplayer2/util/r;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/r;->b()V

    .line 411
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->p:[Lcom/google/android/exoplayer2/j;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 412
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/j;)V

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    :cond_0
    return-void
.end method

.method private d(Lcom/google/android/exoplayer2/source/f;)V
    .locals 1

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/source/f;

    if-eq v0, p1, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1286
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->m()V

    goto :goto_0
.end method

.method private d(Z)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 666
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 667
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/g;->s:Z

    .line 668
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->e:Lcom/google/android/exoplayer2/util/r;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/r;->b()V

    .line 669
    iput-object v7, p0, Lcom/google/android/exoplayer2/g;->n:Lcom/google/android/exoplayer2/util/h;

    .line 670
    iput-object v7, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/j;

    .line 671
    const-wide/32 v0, 0x3938700

    iput-wide v0, p0, Lcom/google/android/exoplayer2/g;->A:J

    .line 672
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->p:[Lcom/google/android/exoplayer2/j;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 674
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/j;)V

    .line 675
    invoke-interface {v0}, Lcom/google/android/exoplayer2/j;->l()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 676
    :catch_0
    move-exception v0

    .line 678
    :goto_2
    const-string v5, "ExoPlayerImplInternal"

    const-string v6, "Stop failed."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 681
    :cond_0
    new-array v0, v2, [Lcom/google/android/exoplayer2/j;

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->p:[Lcom/google/android/exoplayer2/j;

    .line 682
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    :goto_3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/g$a;)V

    .line 684
    iput-object v7, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    .line 685
    iput-object v7, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    .line 686
    iput-object v7, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    .line 687
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/g;->b(Z)V

    .line 688
    if-eqz p1, :cond_2

    .line 689
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->o:Lcom/google/android/exoplayer2/source/g;

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->o:Lcom/google/android/exoplayer2/source/g;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/g;->b()V

    .line 691
    iput-object v7, p0, Lcom/google/android/exoplayer2/g;->o:Lcom/google/android/exoplayer2/source/g;

    .line 693
    :cond_1
    iput-object v7, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    .line 695
    :cond_2
    return-void

    .line 682
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    goto :goto_3

    .line 676
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private e()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 417
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-nez v0, :cond_0

    .line 443
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/source/f;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/f;->e()J

    move-result-wide v0

    .line 423
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v4

    if-eqz v4, :cond_2

    .line 424
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/g;->a(J)V

    .line 434
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    iput-wide v0, v4, Lcom/google/android/exoplayer2/g$b;->c:J

    .line 435
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/g;->x:J

    .line 438
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->p:[Lcom/google/android/exoplayer2/j;

    array-length v0, v0

    if-nez v0, :cond_4

    move-wide v0, v2

    .line 440
    :goto_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget v1, v1, Lcom/google/android/exoplayer2/g$a;->f:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/n$a;

    .line 441
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$a;)Lcom/google/android/exoplayer2/n$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n$a;->a()J

    move-result-wide v0

    :cond_1
    iput-wide v0, v4, Lcom/google/android/exoplayer2/g$b;->d:J

    goto :goto_0

    .line 426
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/j;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/j;->u()Z

    move-result v0

    if-nez v0, :cond_3

    .line 427
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->n:Lcom/google/android/exoplayer2/util/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/h;->w()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/g;->A:J

    .line 428
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->e:Lcom/google/android/exoplayer2/util/r;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/g;->A:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/util/r;->a(J)V

    .line 432
    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/g;->A:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/g$a;->b(J)J

    move-result-wide v0

    goto :goto_1

    .line 430
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->e:Lcom/google/android/exoplayer2/util/r;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/r;->w()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/g;->A:J

    goto :goto_3

    .line 438
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/source/f;

    .line 439
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/f;->f()J

    move-result-wide v0

    goto :goto_2
.end method

.method private e(Z)Z
    .locals 6

    .prologue
    .line 820
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/g$a;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/g$a;->g:J

    .line 823
    :goto_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 824
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/g$a;->h:Z

    if-eqz v0, :cond_1

    .line 825
    const/4 v0, 0x1

    .line 830
    :goto_1
    return v0

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/source/f;

    .line 822
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/f;->f()J

    move-result-wide v0

    goto :goto_0

    .line 827
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget v1, v1, Lcom/google/android/exoplayer2/g$a;->f:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/n$a;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$a;)Lcom/google/android/exoplayer2/n$a;

    move-result-object v0

    .line 828
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n$a;->a()J

    move-result-wide v0

    .line 830
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->d:Lcom/google/android/exoplayer2/i;

    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/g;->A:J

    .line 831
    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/g$a;->b(J)J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 830
    invoke-interface {v2, v0, v1, p1}, Lcom/google/android/exoplayer2/i;->a(JZ)Z

    move-result v0

    goto :goto_1
.end method

.method private f()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 447
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->k()V

    .line 448
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-nez v0, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->j()V

    .line 451
    const-wide/16 v0, 0xa

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/google/android/exoplayer2/g;->a(JJ)V

    .line 524
    :goto_0
    return-void

    .line 455
    :cond_0
    const-string v0, "doSomeWork"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/t;->a(Ljava/lang/String;)V

    .line 457
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->e()V

    .line 458
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/source/f;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/g$b;->c:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/source/f;->b(J)V

    .line 460
    const/4 v2, 0x1

    .line 461
    const/4 v1, 0x1

    .line 462
    iget-object v6, p0, Lcom/google/android/exoplayer2/g;->p:[Lcom/google/android/exoplayer2/j;

    array-length v7, v6

    const/4 v0, 0x0

    move v3, v0

    move v0, v2

    :goto_1
    if-ge v3, v7, :cond_6

    aget-object v8, v6, v3

    .line 466
    iget-wide v10, p0, Lcom/google/android/exoplayer2/g;->A:J

    iget-wide v12, p0, Lcom/google/android/exoplayer2/g;->x:J

    invoke-interface {v8, v10, v11, v12, v13}, Lcom/google/android/exoplayer2/j;->a(JJ)V

    .line 467
    if-eqz v0, :cond_3

    invoke-interface {v8}, Lcom/google/android/exoplayer2/j;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 470
    :goto_2
    invoke-interface {v8}, Lcom/google/android/exoplayer2/j;->t()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v8}, Lcom/google/android/exoplayer2/j;->u()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    const/4 v2, 0x1

    .line 471
    :goto_3
    if-nez v2, :cond_2

    .line 472
    invoke-interface {v8}, Lcom/google/android/exoplayer2/j;->j()V

    .line 474
    :cond_2
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    .line 462
    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 467
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 470
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 474
    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    .line 477
    :cond_6
    if-nez v1, :cond_7

    .line 478
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->j()V

    .line 481
    :cond_7
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget v3, v3, Lcom/google/android/exoplayer2/g$a;->f:I

    iget-object v6, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/n$a;

    invoke-virtual {v2, v3, v6}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$a;)Lcom/google/android/exoplayer2/n$a;

    move-result-object v2

    .line 482
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/n$a;->a()J

    move-result-wide v2

    .line 483
    if-eqz v0, :cond_a

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v6

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/g$b;->c:J

    cmp-long v0, v2, v6

    if-gtz v0, :cond_a

    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/g$a;->h:Z

    if-eqz v0, :cond_a

    .line 487
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->a(I)V

    .line 488
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->d()V

    .line 509
    :cond_9
    :goto_5
    iget v0, p0, Lcom/google/android/exoplayer2/g;->u:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 510
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->p:[Lcom/google/android/exoplayer2/j;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_f

    aget-object v3, v1, v0

    .line 511
    invoke-interface {v3}, Lcom/google/android/exoplayer2/j;->j()V

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 489
    :cond_a
    iget v0, p0, Lcom/google/android/exoplayer2/g;->u:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_d

    .line 490
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->p:[Lcom/google/android/exoplayer2/j;

    array-length v0, v0

    if-lez v0, :cond_c

    if-eqz v1, :cond_b

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g;->s:Z

    .line 491
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->e(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    .line 493
    :goto_7
    if-eqz v0, :cond_9

    .line 494
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->a(I)V

    .line 495
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g;->r:Z

    if-eqz v0, :cond_9

    .line 496
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->c()V

    goto :goto_5

    .line 491
    :cond_b
    const/4 v0, 0x0

    goto :goto_7

    .line 492
    :cond_c
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/g;->b(J)Z

    move-result v0

    goto :goto_7

    .line 499
    :cond_d
    iget v0, p0, Lcom/google/android/exoplayer2/g;->u:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_9

    .line 500
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->p:[Lcom/google/android/exoplayer2/j;

    array-length v0, v0

    if-lez v0, :cond_e

    move v0, v1

    .line 502
    :goto_8
    if-nez v0, :cond_9

    .line 503
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g;->r:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/g;->s:Z

    .line 504
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->a(I)V

    .line 505
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->d()V

    goto :goto_5

    .line 501
    :cond_e
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/g;->b(J)Z

    move-result v0

    goto :goto_8

    .line 515
    :cond_f
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g;->r:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/google/android/exoplayer2/g;->u:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    :cond_10
    iget v0, p0, Lcom/google/android/exoplayer2/g;->u:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 516
    :cond_11
    const-wide/16 v0, 0xa

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/google/android/exoplayer2/g;->a(JJ)V

    .line 523
    :goto_9
    invoke-static {}, Lcom/google/android/exoplayer2/util/t;->a()V

    goto/16 :goto_0

    .line 517
    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->p:[Lcom/google/android/exoplayer2/j;

    array-length v0, v0

    if-eqz v0, :cond_13

    .line 518
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/google/android/exoplayer2/g;->a(JJ)V

    goto :goto_9

    .line 520
    :cond_13
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_9
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 650
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/g;->d(Z)V

    .line 651
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->d:Lcom/google/android/exoplayer2/i;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/i;->b()V

    .line 652
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/g;->a(I)V

    .line 653
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 656
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/g;->d(Z)V

    .line 657
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->d:Lcom/google/android/exoplayer2/i;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/i;->c()V

    .line 658
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/g;->a(I)V

    .line 659
    monitor-enter p0

    .line 660
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/g;->q:Z

    .line 661
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 662
    monitor-exit p0

    .line 663
    return-void

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private i()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v12, 0x0

    const/4 v1, 0x0

    .line 721
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-nez v0, :cond_1

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    move-object v5, v0

    move v0, v2

    .line 729
    :goto_1
    if-eqz v5, :cond_0

    iget-boolean v3, v5, Lcom/google/android/exoplayer2/g$a;->i:Z

    if-eqz v3, :cond_0

    .line 733
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/g$a;->d()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 744
    if-eqz v0, :cond_e

    .line 746
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-eq v0, v3, :cond_9

    move v0, v2

    .line 747
    :goto_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v3, v3, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/g$a;)V

    .line 748
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iput-object v12, v3, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    .line 749
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iput-object v3, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    .line 750
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iput-object v3, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    .line 752
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->a:[Lcom/google/android/exoplayer2/j;

    array-length v3, v3

    new-array v6, v3, [Z

    .line 753
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    iget-wide v8, v4, Lcom/google/android/exoplayer2/g$b;->c:J

    invoke-virtual {v3, v8, v9, v0, v6}, Lcom/google/android/exoplayer2/g$a;->a(JZ[Z)J

    move-result-wide v8

    .line 755
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    iget-wide v10, v0, Lcom/google/android/exoplayer2/g$b;->c:J

    cmp-long v0, v8, v10

    if-eqz v0, :cond_2

    .line 756
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    iput-wide v8, v0, Lcom/google/android/exoplayer2/g$b;->c:J

    .line 757
    invoke-direct {p0, v8, v9}, Lcom/google/android/exoplayer2/g;->a(J)V

    .line 761
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->a:[Lcom/google/android/exoplayer2/j;

    array-length v0, v0

    new-array v7, v0, [Z

    move v0, v1

    move v3, v1

    .line 762
    :goto_3
    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->a:[Lcom/google/android/exoplayer2/j;

    array-length v4, v4

    if-ge v0, v4, :cond_c

    .line 763
    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->a:[Lcom/google/android/exoplayer2/j;

    aget-object v8, v4, v0

    .line 764
    invoke-interface {v8}, Lcom/google/android/exoplayer2/j;->d()I

    move-result v4

    if-eqz v4, :cond_a

    move v4, v2

    :goto_4
    aput-boolean v4, v7, v0

    .line 765
    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v4, v4, Lcom/google/android/exoplayer2/g$a;->c:[Lcom/google/android/exoplayer2/source/i;

    aget-object v4, v4, v0

    .line 766
    if-eqz v4, :cond_3

    .line 767
    add-int/lit8 v3, v3, 0x1

    .line 769
    :cond_3
    aget-boolean v9, v7, v0

    if-eqz v9, :cond_6

    .line 770
    invoke-interface {v8}, Lcom/google/android/exoplayer2/j;->f()Lcom/google/android/exoplayer2/source/i;

    move-result-object v9

    if-eq v4, v9, :cond_b

    .line 772
    iget-object v9, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/j;

    if-ne v8, v9, :cond_5

    .line 774
    if-nez v4, :cond_4

    .line 777
    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->e:Lcom/google/android/exoplayer2/util/r;

    iget-object v9, p0, Lcom/google/android/exoplayer2/g;->n:Lcom/google/android/exoplayer2/util/h;

    invoke-interface {v9}, Lcom/google/android/exoplayer2/util/h;->w()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/google/android/exoplayer2/util/r;->a(J)V

    .line 779
    :cond_4
    iput-object v12, p0, Lcom/google/android/exoplayer2/g;->n:Lcom/google/android/exoplayer2/util/h;

    .line 780
    iput-object v12, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/j;

    .line 782
    :cond_5
    invoke-direct {p0, v8}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/j;)V

    .line 783
    invoke-interface {v8}, Lcom/google/android/exoplayer2/j;->l()V

    .line 762
    :cond_6
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 737
    :cond_7
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    if-ne v5, v3, :cond_8

    move v0, v1

    .line 741
    :cond_8
    iget-object v3, v5, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    move-object v5, v3

    goto/16 :goto_1

    :cond_9
    move v0, v1

    .line 746
    goto/16 :goto_2

    :cond_a
    move v4, v1

    .line 764
    goto :goto_4

    .line 784
    :cond_b
    aget-boolean v4, v6, v0

    if-eqz v4, :cond_6

    .line 786
    iget-wide v10, p0, Lcom/google/android/exoplayer2/g;->A:J

    invoke-interface {v8, v10, v11}, Lcom/google/android/exoplayer2/j;->a(J)V

    goto :goto_5

    .line 790
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    iget-object v2, v5, Lcom/google/android/exoplayer2/g$a;->m:Lcom/google/android/exoplayer2/b/i;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 791
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 792
    invoke-direct {p0, v7, v3}, Lcom/google/android/exoplayer2/g;->a([ZI)V

    .line 808
    :cond_d
    :goto_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->m()V

    .line 809
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->e()V

    .line 810
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 795
    :cond_e
    iput-object v5, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    .line 796
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    .line 797
    :goto_7
    if-eqz v0, :cond_f

    .line 798
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/g$a;->e()V

    .line 799
    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    goto :goto_7

    .line 801
    :cond_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iput-object v12, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    .line 802
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/g$a;->i:Z

    if-eqz v0, :cond_d

    .line 803
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/g$a;->g:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/g;->A:J

    .line 804
    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/g$a;->b(J)J

    move-result-wide v4

    .line 803
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 805
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/g$a;->a(JZ)J

    goto :goto_6
.end method

.method private j()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 836
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/g$a;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-ne v0, v1, :cond_1

    .line 838
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->p:[Lcom/google/android/exoplayer2/j;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 839
    invoke-interface {v3}, Lcom/google/android/exoplayer2/j;->g()Z

    move-result v3

    if-nez v3, :cond_2

    .line 845
    :cond_1
    :goto_1
    return-void

    .line 838
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 843
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/source/f;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/f;->c()V

    goto :goto_1
.end method

.method private k()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1097
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    if-nez v1, :cond_1

    .line 1099
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->o:Lcom/google/android/exoplayer2/source/g;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/g;->a()V

    .line 1190
    :cond_0
    return-void

    .line 1104
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->l()V

    .line 1105
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/g$a;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1106
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->b(Z)V

    .line 1111
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-eqz v1, :cond_0

    .line 1117
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    if-eq v1, v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/exoplayer2/g;->A:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/g$a;->e:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_5

    .line 1121
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/g$a;->e()V

    .line 1122
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/g;->b(Lcom/google/android/exoplayer2/g$a;)V

    .line 1123
    new-instance v1, Lcom/google/android/exoplayer2/g$b;

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget v2, v2, Lcom/google/android/exoplayer2/g$a;->f:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/g$a;->g:J

    invoke-direct {v1, v2, v4, v5}, Lcom/google/android/exoplayer2/g$b;-><init>(IJ)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    .line 1125
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->e()V

    .line 1126
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->h:Landroid/os/Handler;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 1107
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/g$a;->l:Z

    if-eqz v1, :cond_3

    .line 1108
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->m()V

    goto :goto_0

    .line 1129
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/g$a;->h:Z

    if-eqz v1, :cond_7

    .line 1130
    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->a:[Lcom/google/android/exoplayer2/j;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1131
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->a:[Lcom/google/android/exoplayer2/j;

    aget-object v1, v1, v0

    .line 1132
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/g$a;->c:[Lcom/google/android/exoplayer2/source/i;

    aget-object v2, v2, v0

    .line 1135
    if-eqz v2, :cond_6

    invoke-interface {v1}, Lcom/google/android/exoplayer2/j;->f()Lcom/google/android/exoplayer2/source/i;

    move-result-object v3

    if-ne v3, v2, :cond_6

    .line 1136
    invoke-interface {v1}, Lcom/google/android/exoplayer2/j;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1137
    invoke-interface {v1}, Lcom/google/android/exoplayer2/j;->h()V

    .line 1130
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v1, v0

    .line 1143
    :goto_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->a:[Lcom/google/android/exoplayer2/j;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    .line 1144
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->a:[Lcom/google/android/exoplayer2/j;

    aget-object v2, v2, v1

    .line 1145
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    iget-object v3, v3, Lcom/google/android/exoplayer2/g$a;->c:[Lcom/google/android/exoplayer2/source/i;

    aget-object v3, v3, v1

    .line 1146
    invoke-interface {v2}, Lcom/google/android/exoplayer2/j;->f()Lcom/google/android/exoplayer2/source/i;

    move-result-object v4

    if-ne v4, v3, :cond_0

    if-eqz v3, :cond_8

    .line 1147
    invoke-interface {v2}, Lcom/google/android/exoplayer2/j;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1143
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1152
    :cond_9
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/g$a;->i:Z

    if-eqz v1, :cond_0

    .line 1153
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    iget-object v4, v1, Lcom/google/android/exoplayer2/g$a;->m:Lcom/google/android/exoplayer2/b/i;

    .line 1154
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    iput-object v1, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    .line 1155
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    iget-object v5, v1, Lcom/google/android/exoplayer2/g$a;->m:Lcom/google/android/exoplayer2/b/i;

    .line 1157
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/source/f;

    .line 1158
    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/f;->e()J

    move-result-wide v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v2, v6

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    :goto_4
    move v2, v0

    .line 1159
    :goto_5
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->a:[Lcom/google/android/exoplayer2/j;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1160
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->a:[Lcom/google/android/exoplayer2/j;

    aget-object v6, v3, v2

    .line 1161
    iget-object v3, v4, Lcom/google/android/exoplayer2/b/i;->b:Lcom/google/android/exoplayer2/b/g;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/b/g;->a(I)Lcom/google/android/exoplayer2/b/f;

    move-result-object v3

    .line 1162
    if-nez v3, :cond_c

    .line 1159
    :cond_a
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    move v1, v0

    .line 1158
    goto :goto_4

    .line 1164
    :cond_c
    if-eqz v1, :cond_d

    .line 1167
    invoke-interface {v6}, Lcom/google/android/exoplayer2/j;->h()V

    goto :goto_6

    .line 1168
    :cond_d
    invoke-interface {v6}, Lcom/google/android/exoplayer2/j;->i()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1169
    iget-object v3, v5, Lcom/google/android/exoplayer2/b/i;->b:Lcom/google/android/exoplayer2/b/g;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/b/g;->a(I)Lcom/google/android/exoplayer2/b/f;

    move-result-object v7

    .line 1170
    iget-object v3, v4, Lcom/google/android/exoplayer2/b/i;->d:[Lcom/google/android/exoplayer2/l;

    aget-object v3, v3, v2

    .line 1171
    iget-object v8, v5, Lcom/google/android/exoplayer2/b/i;->d:[Lcom/google/android/exoplayer2/l;

    aget-object v8, v8, v2

    .line 1172
    if-eqz v7, :cond_f

    invoke-virtual {v8, v3}, Lcom/google/android/exoplayer2/l;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1175
    invoke-interface {v7}, Lcom/google/android/exoplayer2/b/f;->e()I

    move-result v3

    new-array v8, v3, [Lcom/google/android/exoplayer2/Format;

    move v3, v0

    .line 1176
    :goto_7
    array-length v9, v8

    if-ge v3, v9, :cond_e

    .line 1177
    invoke-interface {v7, v3}, Lcom/google/android/exoplayer2/b/f;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    aput-object v9, v8, v3

    .line 1176
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1179
    :cond_e
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    iget-object v3, v3, Lcom/google/android/exoplayer2/g$a;->c:[Lcom/google/android/exoplayer2/source/i;

    aget-object v3, v3, v2

    iget-object v7, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    .line 1180
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/g$a;->a()J

    move-result-wide v10

    .line 1179
    invoke-interface {v6, v8, v3, v10, v11}, Lcom/google/android/exoplayer2/j;->a([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/i;J)V

    goto :goto_6

    .line 1185
    :cond_f
    invoke-interface {v6}, Lcom/google/android/exoplayer2/j;->h()V

    goto :goto_6
.end method

.method private l()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v14, 0x1

    .line 1194
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-nez v0, :cond_1

    .line 1195
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    iget v0, v0, Lcom/google/android/exoplayer2/g$b;->a:I

    .line 1212
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/n;->c()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 1214
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->o:Lcom/google/android/exoplayer2/source/g;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/g;->a()V

    .line 1264
    :cond_0
    :goto_1
    return-void

    .line 1197
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget v0, v0, Lcom/google/android/exoplayer2/g$a;->f:I

    .line 1198
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/g$a;->h:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/g$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/n$a;

    .line 1199
    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$a;)Lcom/google/android/exoplayer2/n$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/n$a;->a()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 1204
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget v1, v1, Lcom/google/android/exoplayer2/g$a;->f:I

    sub-int/2addr v0, v1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 1209
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget v0, v0, Lcom/google/android/exoplayer2/g$a;->f:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1219
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-nez v1, :cond_5

    .line 1220
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/g$b;

    iget-wide v12, v1, Lcom/google/android/exoplayer2/g$b;->c:J

    move v10, v0

    .line 1248
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-nez v0, :cond_7

    const-wide/32 v0, 0x3938700

    add-long v4, v12, v0

    .line 1252
    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/n$a;

    invoke-virtual {v0, v10, v1, v14}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$a;Z)Lcom/google/android/exoplayer2/n$a;

    .line 1253
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v10, v0, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/n$a;

    iget v1, v1, Lcom/google/android/exoplayer2/n$a;->c:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->j:Lcom/google/android/exoplayer2/n$b;

    .line 1254
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$b;)Lcom/google/android/exoplayer2/n$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/n$b;->e:Z

    if-nez v0, :cond_8

    move v11, v14

    .line 1255
    :goto_4
    new-instance v1, Lcom/google/android/exoplayer2/g$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->a:[Lcom/google/android/exoplayer2/j;

    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->b:[Lcom/google/android/exoplayer2/k;

    iget-object v6, p0, Lcom/google/android/exoplayer2/g;->c:Lcom/google/android/exoplayer2/b/h;

    iget-object v7, p0, Lcom/google/android/exoplayer2/g;->d:Lcom/google/android/exoplayer2/i;

    iget-object v8, p0, Lcom/google/android/exoplayer2/g;->o:Lcom/google/android/exoplayer2/source/g;

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/n$a;

    iget-object v9, v0, Lcom/google/android/exoplayer2/n$a;->b:Ljava/lang/Object;

    invoke-direct/range {v1 .. v13}, Lcom/google/android/exoplayer2/g$a;-><init>([Lcom/google/android/exoplayer2/j;[Lcom/google/android/exoplayer2/k;JLcom/google/android/exoplayer2/b/h;Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/source/g;Ljava/lang/Object;IZJ)V

    .line 1258
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_4

    .line 1259
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iput-object v1, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    .line 1261
    :cond_4
    iput-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    .line 1262
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/source/f;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/f;->a(Lcom/google/android/exoplayer2/source/f$a;)V

    .line 1263
    invoke-direct {p0, v14}, Lcom/google/android/exoplayer2/g;->b(Z)V

    goto/16 :goto_1

    .line 1222
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/n$a;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$a;)Lcom/google/android/exoplayer2/n$a;

    move-result-object v1

    iget v3, v1, Lcom/google/android/exoplayer2/n$a;->c:I

    .line 1223
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->j:Lcom/google/android/exoplayer2/n$b;

    .line 1224
    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$b;)Lcom/google/android/exoplayer2/n$b;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/n$b;->f:I

    if-eq v0, v1, :cond_6

    move v10, v0

    .line 1227
    goto :goto_2

    .line 1234
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/g$a;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    iget-object v6, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget v6, v6, Lcom/google/android/exoplayer2/g$a;->f:I

    iget-object v7, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/n$a;

    .line 1235
    invoke-virtual {v2, v6, v7}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$a;)Lcom/google/android/exoplayer2/n$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/n$a;->a()J

    move-result-wide v6

    add-long/2addr v0, v6

    iget-wide v6, p0, Lcom/google/android/exoplayer2/g;->A:J

    sub-long/2addr v0, v6

    .line 1237
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    .line 1238
    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object v1, p0

    .line 1237
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/n;IJJ)Landroid/util/Pair;

    move-result-object v1

    .line 1239
    if-eqz v1, :cond_0

    .line 1243
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1244
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto/16 :goto_2

    .line 1248
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    .line 1250
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/g$a;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/n;

    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget v3, v3, Lcom/google/android/exoplayer2/g$a;->f:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/n$a;

    .line 1251
    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$a;)Lcom/google/android/exoplayer2/n$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/n$a;->a()J

    move-result-wide v2

    add-long v4, v0, v2

    goto/16 :goto_3

    .line 1254
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_4
.end method

.method private m()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1290
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/g$a;->i:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 1292
    :goto_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 1293
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/g;->b(Z)V

    .line 1306
    :goto_1
    return-void

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/source/f;

    .line 1291
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/f;->b_()J

    move-result-wide v0

    goto :goto_0

    .line 1295
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/g;->A:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/exoplayer2/g$a;->b(J)J

    move-result-wide v2

    .line 1296
    sub-long/2addr v0, v2

    .line 1297
    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->d:Lcom/google/android/exoplayer2/i;

    invoke-interface {v4, v0, v1}, Lcom/google/android/exoplayer2/i;->a(J)Z

    move-result v0

    .line 1298
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->b(Z)V

    .line 1299
    if-eqz v0, :cond_2

    .line 1300
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iput-boolean v6, v0, Lcom/google/android/exoplayer2/g$a;->l:Z

    .line 1301
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/source/f;

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/source/f;->a(J)Z

    goto :goto_1

    .line 1303
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/g$a;->l:Z

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->f:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 216
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/n;IJ)V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->f:Landroid/os/Handler;

    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/exoplayer2/g$c;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/g$c;-><init>(Lcom/google/android/exoplayer2/n;IJ)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 212
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/n;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->f:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 263
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/f;)V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->f:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 270
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/g;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->f:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v1, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 203
    return-void

    :cond_0
    move v0, v1

    .line 201
    goto :goto_0
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/source/j;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lcom/google/android/exoplayer2/source/f;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/g;->b(Lcom/google/android/exoplayer2/source/f;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->f:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 207
    return-void

    :cond_0
    move v0, v2

    .line 206
    goto :goto_0
.end method

.method public varargs a([Lcom/google/android/exoplayer2/d$c;)V
    .locals 2

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g;->q:Z

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/g;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/g;->v:I

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->f:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 256
    :goto_0
    monitor-exit p0

    return-void

    .line 247
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->f:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 248
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g;->q:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 250
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 255
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public b(Lcom/google/android/exoplayer2/source/f;)V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->f:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 275
    return-void
.end method

.method public varargs declared-synchronized b([Lcom/google/android/exoplayer2/d$c;)V
    .locals 3

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g;->q:Z

    if-eqz v0, :cond_1

    .line 229
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :cond_0
    monitor-exit p0

    return-void

    .line 232
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/g;->v:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/g;->v:I

    .line 233
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->f:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 234
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/g;->w:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v1, v0, :cond_0

    .line 236
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v1

    .line 238
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 290
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 353
    :goto_0
    return v0

    .line 292
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/g;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/g;->b(Lcom/google/android/exoplayer2/source/g;Z)V

    move v0, v1

    .line 293
    goto :goto_0

    .line 296
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/g;->c(Z)V

    move v0, v1

    .line 297
    goto :goto_0

    .line 300
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->f()V

    move v0, v1

    .line 301
    goto :goto_0

    .line 304
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/g$c;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/g$c;)V

    move v0, v1

    .line 305
    goto :goto_0

    .line 308
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->g()V

    move v0, v1

    .line 309
    goto :goto_0

    .line 312
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->h()V

    move v0, v1

    .line 313
    goto :goto_0

    .line 316
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/f;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->c(Lcom/google/android/exoplayer2/source/f;)V

    move v0, v1

    .line 317
    goto :goto_0

    .line 320
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->a(Landroid/util/Pair;)V

    move v0, v1

    .line 321
    goto :goto_0

    .line 324
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/f;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->d(Lcom/google/android/exoplayer2/source/f;)V

    move v0, v1

    .line 325
    goto :goto_0

    .line 328
    :pswitch_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->i()V

    move v0, v1

    .line 329
    goto :goto_0

    .line 332
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/exoplayer2/d$c;

    check-cast v0, [Lcom/google/android/exoplayer2/d$c;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->c([Lcom/google/android/exoplayer2/d$c;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move v0, v1

    .line 333
    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Renderer error."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->h:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 341
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->g()V

    move v0, v1

    .line 342
    goto :goto_0

    .line 343
    :catch_1
    move-exception v0

    .line 344
    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Source error."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->h:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForSource(Ljava/io/IOException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 346
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->g()V

    move v0, v1

    .line 347
    goto/16 :goto_0

    .line 348
    :catch_2
    move-exception v0

    .line 349
    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Internal runtime error."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->h:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->a(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 352
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->g()V

    move v0, v1

    .line 353
    goto/16 :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
