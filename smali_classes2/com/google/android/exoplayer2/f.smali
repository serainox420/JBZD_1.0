.class final Lcom/google/android/exoplayer2/f;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/d;


# instance fields
.field private final a:[Lcom/google/android/exoplayer2/j;

.field private final b:Lcom/google/android/exoplayer2/b/h;

.field private final c:Lcom/google/android/exoplayer2/b/g;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/google/android/exoplayer2/g;

.field private final f:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/google/android/exoplayer2/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/exoplayer2/n$b;

.field private final h:Lcom/google/android/exoplayer2/n$a;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:Z

.field private n:Lcom/google/android/exoplayer2/n;

.field private o:Ljava/lang/Object;

.field private p:Lcom/google/android/exoplayer2/source/m;

.field private q:Lcom/google/android/exoplayer2/b/g;

.field private r:Lcom/google/android/exoplayer2/g$b;

.field private s:I

.field private t:J


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/j;Lcom/google/android/exoplayer2/b/h;Lcom/google/android/exoplayer2/i;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, "ExoPlayerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Init 2.3.1 ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/google/android/exoplayer2/util/v;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    array-length v0, p1

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 79
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/j;

    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->a:[Lcom/google/android/exoplayer2/j;

    .line 80
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/b/h;

    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->b:Lcom/google/android/exoplayer2/b/h;

    .line 81
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/f;->j:Z

    .line 82
    iput v1, p0, Lcom/google/android/exoplayer2/f;->k:I

    .line 83
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 84
    new-instance v0, Lcom/google/android/exoplayer2/b/g;

    array-length v1, p1

    new-array v1, v1, [Lcom/google/android/exoplayer2/b/f;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/b/g;-><init>([Lcom/google/android/exoplayer2/b/f;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->c:Lcom/google/android/exoplayer2/b/g;

    .line 85
    sget-object v0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/n;

    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/n;

    .line 86
    new-instance v0, Lcom/google/android/exoplayer2/n$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/n$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->g:Lcom/google/android/exoplayer2/n$b;

    .line 87
    new-instance v0, Lcom/google/android/exoplayer2/n$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/n$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->h:Lcom/google/android/exoplayer2/n$a;

    .line 88
    sget-object v0, Lcom/google/android/exoplayer2/source/m;->a:Lcom/google/android/exoplayer2/source/m;

    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->p:Lcom/google/android/exoplayer2/source/m;

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->c:Lcom/google/android/exoplayer2/b/g;

    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->q:Lcom/google/android/exoplayer2/b/g;

    .line 90
    new-instance v0, Lcom/google/android/exoplayer2/f$1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/f$1;-><init>(Lcom/google/android/exoplayer2/f;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->d:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcom/google/android/exoplayer2/g$b;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v2, v4, v5}, Lcom/google/android/exoplayer2/g$b;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->r:Lcom/google/android/exoplayer2/g$b;

    .line 97
    new-instance v0, Lcom/google/android/exoplayer2/g;

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/f;->j:Z

    iget-object v5, p0, Lcom/google/android/exoplayer2/f;->d:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/exoplayer2/f;->r:Lcom/google/android/exoplayer2/g$b;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/g;-><init>([Lcom/google/android/exoplayer2/j;Lcom/google/android/exoplayer2/b/h;Lcom/google/android/exoplayer2/i;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/g$b;Lcom/google/android/exoplayer2/d;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->e:Lcom/google/android/exoplayer2/g;

    .line 99
    return-void

    :cond_0
    move v0, v2

    .line 78
    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/google/android/exoplayer2/f;->k:I

    return v0
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->a:[Lcom/google/android/exoplayer2/j;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/j;->a()I

    move-result v0

    return v0
.end method

.method public a(IJ)V
    .locals 4

    .prologue
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 182
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->b()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 183
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/n;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/n;IJ)V

    throw v0

    .line 185
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/f;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/f;->l:I

    .line 186
    iput p1, p0, Lcom/google/android/exoplayer2/f;->s:I

    .line 187
    cmp-long v0, p2, v2

    if-nez v0, :cond_3

    .line 188
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/f;->t:J

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->e:Lcom/google/android/exoplayer2/g;

    iget-object v1, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/n;IJ)V

    .line 197
    :cond_2
    return-void

    .line 191
    :cond_3
    iput-wide p2, p0, Lcom/google/android/exoplayer2/f;->t:J

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->e:Lcom/google/android/exoplayer2/g;

    iget-object v1, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/n;

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/b;->b(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/n;IJ)V

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/d$a;

    .line 194
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d$a;->onPositionDiscontinuity()V

    goto :goto_0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->h()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/f;->a(IJ)V

    .line 178
    return-void
.end method

.method a(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 322
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 387
    :cond_0
    return-void

    .line 324
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/google/android/exoplayer2/f;->k:I

    .line 325
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/d$a;

    .line 326
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/f;->j:Z

    iget v3, p0, Lcom/google/android/exoplayer2/f;->k:I

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/d$a;->onPlayerStateChanged(ZI)V

    goto :goto_0

    .line 331
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f;->m:Z

    .line 332
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/d$a;

    .line 333
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/f;->m:Z

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/d$a;->onLoadingChanged(Z)V

    goto :goto_2

    .line 331
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 338
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/b/i;

    .line 339
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/f;->i:Z

    .line 340
    iget-object v1, v0, Lcom/google/android/exoplayer2/b/i;->a:Lcom/google/android/exoplayer2/source/m;

    iput-object v1, p0, Lcom/google/android/exoplayer2/f;->p:Lcom/google/android/exoplayer2/source/m;

    .line 341
    iget-object v1, v0, Lcom/google/android/exoplayer2/b/i;->b:Lcom/google/android/exoplayer2/b/g;

    iput-object v1, p0, Lcom/google/android/exoplayer2/f;->q:Lcom/google/android/exoplayer2/b/g;

    .line 342
    iget-object v1, p0, Lcom/google/android/exoplayer2/f;->b:Lcom/google/android/exoplayer2/b/h;

    iget-object v0, v0, Lcom/google/android/exoplayer2/b/i;->c:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/b/h;->a(Ljava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/d$a;

    .line 344
    iget-object v2, p0, Lcom/google/android/exoplayer2/f;->p:Lcom/google/android/exoplayer2/source/m;

    iget-object v3, p0, Lcom/google/android/exoplayer2/f;->q:Lcom/google/android/exoplayer2/b/g;

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/d$a;->a(Lcom/google/android/exoplayer2/source/m;Lcom/google/android/exoplayer2/b/g;)V

    goto :goto_3

    .line 349
    :pswitch_3
    iget v0, p0, Lcom/google/android/exoplayer2/f;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/f;->l:I

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/g$b;

    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->r:Lcom/google/android/exoplayer2/g$b;

    .line 351
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/d$a;

    .line 353
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d$a;->onPositionDiscontinuity()V

    goto :goto_4

    .line 360
    :pswitch_4
    iget v0, p0, Lcom/google/android/exoplayer2/f;->l:I

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/g$b;

    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->r:Lcom/google/android/exoplayer2/g$b;

    .line 362
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/d$a;

    .line 363
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d$a;->onPositionDiscontinuity()V

    goto :goto_5

    .line 369
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/g$d;

    .line 370
    iget-object v1, v0, Lcom/google/android/exoplayer2/g$d;->a:Lcom/google/android/exoplayer2/n;

    iput-object v1, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/n;

    .line 371
    iget-object v1, v0, Lcom/google/android/exoplayer2/g$d;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/exoplayer2/f;->o:Ljava/lang/Object;

    .line 372
    iget-object v1, v0, Lcom/google/android/exoplayer2/g$d;->c:Lcom/google/android/exoplayer2/g$b;

    iput-object v1, p0, Lcom/google/android/exoplayer2/f;->r:Lcom/google/android/exoplayer2/g$b;

    .line 373
    iget v1, p0, Lcom/google/android/exoplayer2/f;->l:I

    iget v0, v0, Lcom/google/android/exoplayer2/g$d;->d:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/google/android/exoplayer2/f;->l:I

    .line 374
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/d$a;

    .line 375
    iget-object v2, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/n;

    iget-object v3, p0, Lcom/google/android/exoplayer2/f;->o:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/d$a;->onTimelineChanged(Lcom/google/android/exoplayer2/n;Ljava/lang/Object;)V

    goto :goto_6

    .line 380
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 381
    iget-object v1, p0, Lcom/google/android/exoplayer2/f;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/d$a;

    .line 382
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/d$a;->onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    goto :goto_7

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(Lcom/google/android/exoplayer2/d$a;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/g;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 118
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/f;->a(Lcom/google/android/exoplayer2/source/g;ZZ)V

    .line 119
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/g;ZZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 123
    if-eqz p3, :cond_2

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->o:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/n;

    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/n;

    .line 126
    iput-object v4, p0, Lcom/google/android/exoplayer2/f;->o:Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/d$a;

    .line 128
    iget-object v2, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/n;

    iget-object v3, p0, Lcom/google/android/exoplayer2/f;->o:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/d$a;->onTimelineChanged(Lcom/google/android/exoplayer2/n;Ljava/lang/Object;)V

    goto :goto_0

    .line 131
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f;->i:Z

    if-eqz v0, :cond_2

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f;->i:Z

    .line 133
    sget-object v0, Lcom/google/android/exoplayer2/source/m;->a:Lcom/google/android/exoplayer2/source/m;

    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->p:Lcom/google/android/exoplayer2/source/m;

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->c:Lcom/google/android/exoplayer2/b/g;

    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->q:Lcom/google/android/exoplayer2/b/g;

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->b:Lcom/google/android/exoplayer2/b/h;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/b/h;->a(Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/d$a;

    .line 137
    iget-object v2, p0, Lcom/google/android/exoplayer2/f;->p:Lcom/google/android/exoplayer2/source/m;

    iget-object v3, p0, Lcom/google/android/exoplayer2/f;->q:Lcom/google/android/exoplayer2/b/g;

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/d$a;->a(Lcom/google/android/exoplayer2/source/m;Lcom/google/android/exoplayer2/b/g;)V

    goto :goto_1

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->e:Lcom/google/android/exoplayer2/g;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/source/g;Z)V

    .line 142
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f;->j:Z

    if-eq v0, p1, :cond_0

    .line 147
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/f;->j:Z

    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->e:Lcom/google/android/exoplayer2/g;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/g;->a(Z)V

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/d$a;

    .line 150
    iget v2, p0, Lcom/google/android/exoplayer2/f;->k:I

    invoke-interface {v0, p1, v2}, Lcom/google/android/exoplayer2/d$a;->onPlayerStateChanged(ZI)V

    goto :goto_0

    .line 153
    :cond_0
    return-void
.end method

.method public varargs a([Lcom/google/android/exoplayer2/d$c;)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->e:Lcom/google/android/exoplayer2/g;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/g;->a([Lcom/google/android/exoplayer2/d$c;)V

    .line 213
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 172
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/f;->a(IJ)V

    .line 173
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/d$a;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public varargs b([Lcom/google/android/exoplayer2/d$c;)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->e:Lcom/google/android/exoplayer2/g;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/g;->b([Lcom/google/android/exoplayer2/d$c;)V

    .line 218
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f;->j:Z

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/f;->b(I)V

    .line 168
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->e:Lcom/google/android/exoplayer2/g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/g;->a()V

    .line 202
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->e:Lcom/google/android/exoplayer2/g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/g;->b()V

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method public f()Lcom/google/android/exoplayer2/b/g;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->q:Lcom/google/android/exoplayer2/b/g;

    return-object v0
.end method

.method public g()Lcom/google/android/exoplayer2/n;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/n;

    return-object v0
.end method

.method public h()I
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/f;->l:I

    if-lez v0, :cond_1

    .line 228
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/f;->s:I

    .line 230
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/f;->r:Lcom/google/android/exoplayer2/g$b;

    iget v1, v1, Lcom/google/android/exoplayer2/g$b;->a:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/f;->h:Lcom/google/android/exoplayer2/n$a;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$a;)Lcom/google/android/exoplayer2/n$a;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/n$a;->c:I

    goto :goto_0
.end method

.method public i()J
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 239
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/n;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->h()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/f;->g:Lcom/google/android/exoplayer2/n$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$b;)Lcom/google/android/exoplayer2/n$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n$b;->b()J

    move-result-wide v0

    goto :goto_0
.end method

.method public j()J
    .locals 4

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/f;->l:I

    if-lez v0, :cond_1

    .line 245
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/f;->t:J

    .line 248
    :goto_0
    return-wide v0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/f;->r:Lcom/google/android/exoplayer2/g$b;

    iget v1, v1, Lcom/google/android/exoplayer2/g$b;->a:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/f;->h:Lcom/google/android/exoplayer2/n$a;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$a;)Lcom/google/android/exoplayer2/n$a;

    .line 248
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->h:Lcom/google/android/exoplayer2/n$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n$a;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/f;->r:Lcom/google/android/exoplayer2/g$b;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/g$b;->c:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/b;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public k()J
    .locals 4

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/f;->l:I

    if-lez v0, :cond_1

    .line 256
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/f;->t:J

    .line 259
    :goto_0
    return-wide v0

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/f;->r:Lcom/google/android/exoplayer2/g$b;

    iget v1, v1, Lcom/google/android/exoplayer2/g$b;->a:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/f;->h:Lcom/google/android/exoplayer2/n$a;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$a;)Lcom/google/android/exoplayer2/n$a;

    .line 259
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->h:Lcom/google/android/exoplayer2/n$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n$a;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/f;->r:Lcom/google/android/exoplayer2/g$b;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/g$b;->d:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/b;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public l()I
    .locals 10

    .prologue
    const-wide/16 v0, 0x64

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    .line 265
    iget-object v3, p0, Lcom/google/android/exoplayer2/f;->n:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/n;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    :goto_0
    return v2

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->k()J

    move-result-wide v4

    .line 269
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->i()J

    move-result-wide v6

    .line 270
    cmp-long v3, v4, v8

    if-eqz v3, :cond_1

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    :cond_1
    move v0, v2

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-nez v2, :cond_3

    :goto_2
    long-to-int v0, v0

    goto :goto_1

    :cond_3
    mul-long/2addr v0, v4

    div-long/2addr v0, v6

    goto :goto_2
.end method
