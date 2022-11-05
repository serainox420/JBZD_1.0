.class public abstract Lpl/jbzd/core/ui/view/lce/c;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "LceRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Object;",
        "VH:",
        "Landroid/support/v7/widget/RecyclerView$u;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$a",
        "<TVH;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field protected e:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

.field protected final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 23
    iput v0, p0, Lpl/jbzd/core/ui/view/lce/c;->a:I

    .line 24
    iput-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/c;->b:Z

    .line 25
    iput-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/c;->c:Z

    .line 26
    iput-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/c;->d:Z

    .line 32
    iput-object p1, p0, Lpl/jbzd/core/ui/view/lce/c;->f:Ljava/util/List;

    .line 34
    iput v0, p0, Lpl/jbzd/core/ui/view/lce/c;->a:I

    .line 35
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/lce/c;->c()[I

    move-result-object v1

    .line 37
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, v1, v0

    .line 39
    invoke-direct {p0, v3}, Lpl/jbzd/core/ui/view/lce/c;->c(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    iget v4, p0, Lpl/jbzd/core/ui/view/lce/c;->a:I

    or-int/2addr v3, v4

    iput v3, p0, Lpl/jbzd/core/ui/view/lce/c;->a:I

    .line 37
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_1
    if-nez p1, :cond_2

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Items cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2
    iget v0, p0, Lpl/jbzd/core/ui/view/lce/c;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getAllowedViewTypes must contain LOADING_FIST"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_3
    iget v0, p0, Lpl/jbzd/core/ui/view/lce/c;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getAllowedViewTypes must contain LOADING_PAGE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_4
    return-void
.end method

.method private a(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;ZZ)V
    .locals 1

    .prologue
    .line 395
    iput-boolean p2, p0, Lpl/jbzd/core/ui/view/lce/c;->b:Z

    .line 396
    iput-boolean p3, p0, Lpl/jbzd/core/ui/view/lce/c;->c:Z

    .line 398
    iget-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/c;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/c;->c:Z

    if-eqz v0, :cond_1

    .line 400
    :cond_0
    new-instance v0, Lpl/jbzd/core/ui/view/lce/c$7;

    invoke-direct {v0, p0}, Lpl/jbzd/core/ui/view/lce/c$7;-><init>(Lpl/jbzd/core/ui/view/lce/c;)V

    invoke-virtual {p1, v0}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 416
    :goto_0
    return-void

    .line 414
    :cond_1
    invoke-direct {p0, p1}, Lpl/jbzd/core/ui/view/lce/c;->e(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;)V

    goto :goto_0
.end method

.method private b(I)I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lpl/jbzd/core/ui/view/lce/c;->a:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    :goto_0
    return p1

    :cond_0
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    goto :goto_0
.end method

.method private c(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 191
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;)V
    .locals 1

    .prologue
    .line 420
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/lce/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/c;->c:Z

    iput-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/c;->b:Z

    .line 424
    new-instance v0, Lpl/jbzd/core/ui/view/lce/c$8;

    invoke-direct {v0, p0}, Lpl/jbzd/core/ui/view/lce/c$8;-><init>(Lpl/jbzd/core/ui/view/lce/c;)V

    invoke-virtual {p1, v0}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 431
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public abstract a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$u;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;II)V"
        }
    .end annotation
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 236
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    :cond_0
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c;->e:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    new-instance v1, Lpl/jbzd/core/ui/view/lce/c$1;

    invoke-direct {v1, p0}, Lpl/jbzd/core/ui/view/lce/c$1;-><init>(Lpl/jbzd/core/ui/view/lce/c;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 264
    :cond_1
    :goto_0
    return-void

    .line 248
    :cond_2
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 252
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c;->e:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    new-instance v1, Lpl/jbzd/core/ui/view/lce/c$2;

    invoke-direct {v1, p0}, Lpl/jbzd/core/ui/view/lce/c$2;-><init>(Lpl/jbzd/core/ui/view/lce/c;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 261
    :cond_3
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c;->f:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 262
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lpl/jbzd/core/ui/view/lce/c;->notifyItemRangeInserted(II)V

    goto :goto_0
.end method

.method a(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lpl/jbzd/core/ui/view/lce/c;->e:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    .line 59
    return-void
.end method

.method a(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;Z)V
    .locals 1

    .prologue
    .line 360
    iput-boolean p2, p0, Lpl/jbzd/core/ui/view/lce/c;->c:Z

    .line 362
    iget-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/c;->c:Z

    if-eqz v0, :cond_1

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/c;->b:Z

    .line 365
    invoke-virtual {p0, p1}, Lpl/jbzd/core/ui/view/lce/c;->c(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/lce/c;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    invoke-direct {p0, p1}, Lpl/jbzd/core/ui/view/lce/c;->e(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;)V

    goto :goto_0
.end method

.method public abstract b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$u;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;II)V"
        }
    .end annotation

    .prologue
    .line 162
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 268
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c;->e:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    invoke-virtual {p0, v0, v1}, Lpl/jbzd/core/ui/view/lce/c;->b(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;Z)V

    .line 269
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c;->e:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    invoke-virtual {p0, v0, v1}, Lpl/jbzd/core/ui/view/lce/c;->a(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;Z)V

    .line 271
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    :cond_0
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c;->e:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    new-instance v1, Lpl/jbzd/core/ui/view/lce/c$3;

    invoke-direct {v1, p0}, Lpl/jbzd/core/ui/view/lce/c$3;-><init>(Lpl/jbzd/core/ui/view/lce/c;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 306
    :cond_1
    :goto_0
    return-void

    .line 283
    :cond_2
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 287
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c;->e:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    new-instance v1, Lpl/jbzd/core/ui/view/lce/c$4;

    invoke-direct {v1, p0}, Lpl/jbzd/core/ui/view/lce/c$4;-><init>(Lpl/jbzd/core/ui/view/lce/c;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 296
    :cond_3
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 297
    iget-object v1, p0, Lpl/jbzd/core/ui/view/lce/c;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 299
    iget-object v1, p0, Lpl/jbzd/core/ui/view/lce/c;->e:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    new-instance v2, Lpl/jbzd/core/ui/view/lce/c$5;

    invoke-direct {v2, p0, v0, p1}, Lpl/jbzd/core/ui/view/lce/c$5;-><init>(Lpl/jbzd/core/ui/view/lce/c;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method b(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 318
    invoke-direct {p0, p1, v2, v2}, Lpl/jbzd/core/ui/view/lce/c;->a(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;ZZ)V

    .line 320
    invoke-virtual {p1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->getLceRecyclerViewScrollListener()Lpl/jbzd/core/ui/view/lce/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->getLceRecyclerViewScrollListener()Lpl/jbzd/core/ui/view/lce/d;

    move-result-object v1

    invoke-virtual {p1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/lce/c;

    invoke-virtual {v1, p1, v0, v2}, Lpl/jbzd/core/ui/view/lce/d;->a(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;Lpl/jbzd/core/ui/view/lce/c;Z)V

    .line 324
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/c;->d:Z

    .line 325
    return-void
.end method

.method b(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 374
    iput-boolean p2, p0, Lpl/jbzd/core/ui/view/lce/c;->b:Z

    .line 376
    iget-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/c;->b:Z

    if-eqz v0, :cond_1

    .line 378
    iput-boolean v2, p0, Lpl/jbzd/core/ui/view/lce/c;->c:Z

    .line 379
    invoke-virtual {p0, p1}, Lpl/jbzd/core/ui/view/lce/c;->d(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;)V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-virtual {p1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->getLceRecyclerViewScrollListener()Lpl/jbzd/core/ui/view/lce/d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 384
    invoke-virtual {p1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->getLceRecyclerViewScrollListener()Lpl/jbzd/core/ui/view/lce/d;

    move-result-object v1

    invoke-virtual {p1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/lce/c;

    invoke-virtual {v1, p1, v0, v2}, Lpl/jbzd/core/ui/view/lce/d;->a(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;Lpl/jbzd/core/ui/view/lce/c;Z)V

    .line 387
    :cond_2
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/lce/c;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    invoke-direct {p0, p1}, Lpl/jbzd/core/ui/view/lce/c;->e(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;)V

    goto :goto_0
.end method

.method c(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 329
    const/4 v0, 0x1

    invoke-direct {p0, p1, v2, v0}, Lpl/jbzd/core/ui/view/lce/c;->a(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;ZZ)V

    .line 331
    invoke-virtual {p1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->getLceRecyclerViewScrollListener()Lpl/jbzd/core/ui/view/lce/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->getLceRecyclerViewScrollListener()Lpl/jbzd/core/ui/view/lce/d;

    move-result-object v1

    invoke-virtual {p1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/lce/c;

    invoke-virtual {v1, p1, v0, v2}, Lpl/jbzd/core/ui/view/lce/d;->a(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;Lpl/jbzd/core/ui/view/lce/c;Z)V

    .line 334
    :cond_0
    return-void
.end method

.method public abstract c()[I
.end method

.method d(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;)V
    .locals 2

    .prologue
    .line 337
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lpl/jbzd/core/ui/view/lce/c;->a(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;ZZ)V

    .line 338
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/c;->c:Z

    return v0
.end method

.method public getItemCount()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 92
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 94
    if-lez v0, :cond_2

    .line 97
    iget-boolean v1, p0, Lpl/jbzd/core/ui/view/lce/c;->c:Z

    if-eqz v1, :cond_1

    .line 98
    add-int/lit8 v0, v0, 0x1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    iget-boolean v1, p0, Lpl/jbzd/core/ui/view/lce/c;->b:Z

    if-eqz v1, :cond_0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_2
    iget-boolean v2, p0, Lpl/jbzd/core/ui/view/lce/c;->c:Z

    if-eqz v2, :cond_3

    move v0, v1

    .line 107
    goto :goto_0

    .line 110
    :cond_3
    iget-boolean v2, p0, Lpl/jbzd/core/ui/view/lce/c;->b:Z

    if-eqz v2, :cond_4

    move v0, v1

    .line 111
    goto :goto_0

    .line 114
    :cond_4
    iget v2, p0, Lpl/jbzd/core/ui/view/lce/c;->a:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 115
    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 6

    .prologue
    const/16 v4, 0x3e8

    const/16 v3, 0x10

    const/16 v0, 0x8

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 124
    .line 125
    iget-object v5, p0, Lpl/jbzd/core/ui/view/lce/c;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 127
    if-nez v5, :cond_6

    .line 130
    iget-boolean v3, p0, Lpl/jbzd/core/ui/view/lce/c;->c:Z

    if-eqz v3, :cond_3

    .line 131
    iget v3, p0, Lpl/jbzd/core/ui/view/lce/c;->a:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v0, :cond_1

    .line 147
    :goto_0
    if-ne v0, v4, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Lpl/jbzd/core/ui/view/lce/c;->a(I)I

    move-result v0

    .line 151
    :cond_0
    return v0

    .line 131
    :cond_1
    iget v0, p0, Lpl/jbzd/core/ui/view/lce/c;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 134
    :cond_3
    iget-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/c;->b:Z

    if-eqz v0, :cond_4

    move v0, v2

    .line 137
    goto :goto_0

    .line 140
    :cond_4
    iget v0, p0, Lpl/jbzd/core/ui/view/lce/c;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_5

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1

    .line 143
    :cond_6
    if-ne p1, v5, :cond_8

    .line 144
    iget-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/c;->c:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lpl/jbzd/core/ui/view/lce/c;->a:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v3, :cond_7

    move v0, v3

    goto :goto_0

    :cond_7
    const/4 v0, 0x4

    goto :goto_0

    :cond_8
    move v0, v4

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/c;->b:Z

    return v0
.end method

.method i()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/c;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method j()Z
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/lce/c;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lpl/jbzd/core/ui/view/lce/c;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c;->e:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->getLceRecyclerViewScrollListener()Lpl/jbzd/core/ui/view/lce/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c;->e:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->getLceRecyclerViewScrollListener()Lpl/jbzd/core/ui/view/lce/d;

    move-result-object v0

    iget-object v2, p0, Lpl/jbzd/core/ui/view/lce/c;->e:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/lce/d;->a(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/c;->b:Z

    .line 227
    iget-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/c;->b:Z

    if-eqz v0, :cond_0

    .line 228
    iput-boolean v1, p0, Lpl/jbzd/core/ui/view/lce/c;->d:Z

    .line 231
    :cond_0
    iget-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/c;->b:Z

    return v0

    :cond_1
    move v0, v1

    .line 225
    goto :goto_0
.end method

.method public l()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c;->e:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    invoke-virtual {p0, v0}, Lpl/jbzd/core/ui/view/lce/c;->b(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;)V

    .line 310
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c;->e:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    invoke-virtual {p0, v0}, Lpl/jbzd/core/ui/view/lce/c;->c(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;)V

    .line 314
    return-void
.end method

.method n()V
    .locals 2

    .prologue
    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/c;->d:Z

    .line 344
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 348
    :cond_0
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c;->e:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    new-instance v1, Lpl/jbzd/core/ui/view/lce/c$6;

    invoke-direct {v1, p0}, Lpl/jbzd/core/ui/view/lce/c$6;-><init>(Lpl/jbzd/core/ui/view/lce/c;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 354
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$u;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0, p2}, Lpl/jbzd/core/ui/view/lce/c;->getItemViewType(I)I

    move-result v0

    .line 81
    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 82
    invoke-virtual {p0, p1, v0, p2}, Lpl/jbzd/core/ui/view/lce/c;->a(Landroid/support/v7/widget/RecyclerView$u;II)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-direct {p0, v0}, Lpl/jbzd/core/ui/view/lce/c;->b(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lpl/jbzd/core/ui/view/lce/c;->b(Landroid/support/v7/widget/RecyclerView$u;II)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .line 66
    const/16 v0, 0x3e8

    if-lt p2, v0, :cond_0

    .line 67
    invoke-virtual {p0, p1, p2}, Lpl/jbzd/core/ui/view/lce/c;->a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 70
    :cond_0
    invoke-direct {p0, p2}, Lpl/jbzd/core/ui/view/lce/c;->b(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lpl/jbzd/core/ui/view/lce/c;->b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    goto :goto_0
.end method
