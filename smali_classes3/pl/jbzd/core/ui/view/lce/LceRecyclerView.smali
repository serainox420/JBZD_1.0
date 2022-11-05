.class public Lpl/jbzd/core/ui/view/lce/LceRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "LceRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/core/ui/view/lce/LceRecyclerView$SavedState;,
        Lpl/jbzd/core/ui/view/lce/LceRecyclerView$a;
    }
.end annotation


# instance fields
.field private a:Lpl/jbzd/core/ui/view/lce/b;

.field private b:Lpl/jbzd/core/ui/view/lce/d;

.field private c:Landroid/os/Bundle;

.field private d:Lpl/jbzd/core/ui/view/lce/LceRecyclerView$a;

.field private e:I

.field private f:I

.field private g:Z

.field private h:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v2, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->b:Lpl/jbzd/core/ui/view/lce/d;

    .line 31
    iput-object v2, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->d:Lpl/jbzd/core/ui/view/lce/LceRecyclerView$a;

    .line 33
    const/4 v0, 0x5

    iput v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->e:I

    .line 34
    iput v3, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->f:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->g:Z

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->h:J

    .line 42
    invoke-direct {p0, p1, v2, v3}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->b:Lpl/jbzd/core/ui/view/lce/d;

    .line 31
    iput-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->d:Lpl/jbzd/core/ui/view/lce/LceRecyclerView$a;

    .line 33
    const/4 v0, 0x5

    iput v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->e:I

    .line 34
    iput v2, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->f:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->g:Z

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->h:J

    .line 47
    invoke-direct {p0, p1, p2, v2}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->b:Lpl/jbzd/core/ui/view/lce/d;

    .line 31
    iput-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->d:Lpl/jbzd/core/ui/view/lce/LceRecyclerView$a;

    .line 33
    const/4 v0, 0x5

    iput v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->e:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->f:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->g:Z

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->h:J

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->h:J

    .line 184
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/lce/c;

    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/lce/c;->n()V

    .line 185
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->b:Lpl/jbzd/core/ui/view/lce/d;

    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/lce/d;->a()V

    .line 187
    :cond_0
    return-void
.end method

.method public getLastResetTime()J
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->h:J

    return-wide v0
.end method

.method getLceRecyclerViewScrollListener()Lpl/jbzd/core/ui/view/lce/d;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->b:Lpl/jbzd/core/ui/view/lce/d;

    return-object v0
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 1

    .prologue
    .line 129
    move-object v0, p1

    check-cast v0, Lpl/jbzd/core/ui/view/lce/c;

    invoke-virtual {v0, p0}, Lpl/jbzd/core/ui/view/lce/c;->a(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;)V

    .line 130
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 131
    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    if-eqz p1, :cond_3

    new-instance v0, Lpl/jbzd/core/ui/view/lce/b;

    invoke-direct {v0, p1}, Lpl/jbzd/core/ui/view/lce/b;-><init>(Landroid/support/v7/widget/RecyclerView$h;)V

    :goto_0
    iput-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->a:Lpl/jbzd/core/ui/view/lce/b;

    .line 100
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 102
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->a:Lpl/jbzd/core/ui/view/lce/b;

    if-eqz v0, :cond_4

    .line 104
    new-instance v0, Lpl/jbzd/core/ui/view/lce/d;

    iget-object v1, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->a:Lpl/jbzd/core/ui/view/lce/b;

    invoke-direct {v0, v1}, Lpl/jbzd/core/ui/view/lce/d;-><init>(Lpl/jbzd/core/ui/view/lce/a;)V

    iput-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->b:Lpl/jbzd/core/ui/view/lce/d;

    .line 105
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->b:Lpl/jbzd/core/ui/view/lce/d;

    iget v1, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->f:I

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/lce/d;->a(I)V

    .line 106
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->b:Lpl/jbzd/core/ui/view/lce/d;

    iget v1, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->e:I

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/lce/d;->b(I)V

    .line 107
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->b:Lpl/jbzd/core/ui/view/lce/d;

    iget-boolean v1, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->g:Z

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/lce/d;->a(Z)V

    .line 109
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->b:Lpl/jbzd/core/ui/view/lce/d;

    iget-object v1, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/lce/d;->a(Landroid/os/Bundle;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->d:Lpl/jbzd/core/ui/view/lce/LceRecyclerView$a;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->b:Lpl/jbzd/core/ui/view/lce/d;

    iget-object v1, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->d:Lpl/jbzd/core/ui/view/lce/LceRecyclerView$a;

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/lce/d;->a(Lpl/jbzd/core/ui/view/lce/LceRecyclerView$a;)V

    .line 117
    :cond_1
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->b:Lpl/jbzd/core/ui/view/lce/d;

    invoke-virtual {p0, v0}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 124
    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object v0, v1

    .line 99
    goto :goto_0

    .line 119
    :cond_4
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->b:Lpl/jbzd/core/ui/view/lce/d;

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->b:Lpl/jbzd/core/ui/view/lce/d;

    invoke-virtual {p0, v0}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 122
    iput-object v1, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->b:Lpl/jbzd/core/ui/view/lce/d;

    goto :goto_1
.end method

.method public setOnLoadMoreListener(Lpl/jbzd/core/ui/view/lce/LceRecyclerView$a;)V
    .locals 2

    .prologue
    .line 135
    iput-object p1, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->d:Lpl/jbzd/core/ui/view/lce/LceRecyclerView$a;

    .line 137
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->b:Lpl/jbzd/core/ui/view/lce/d;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->b:Lpl/jbzd/core/ui/view/lce/d;

    iget-object v1, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->d:Lpl/jbzd/core/ui/view/lce/LceRecyclerView$a;

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/lce/d;->a(Lpl/jbzd/core/ui/view/lce/LceRecyclerView$a;)V

    .line 140
    :cond_0
    return-void
.end method

.method public setShouldLoadFirstPage(Z)V
    .locals 2

    .prologue
    .line 168
    iput-boolean p1, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->g:Z

    .line 170
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->b:Lpl/jbzd/core/ui/view/lce/d;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->b:Lpl/jbzd/core/ui/view/lce/d;

    iget-boolean v1, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->g:Z

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/lce/d;->a(Z)V

    .line 173
    :cond_0
    return-void
.end method

.method public setStartingPage(I)V
    .locals 2

    .prologue
    .line 150
    iput p1, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->f:I

    .line 152
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->b:Lpl/jbzd/core/ui/view/lce/d;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->b:Lpl/jbzd/core/ui/view/lce/d;

    iget v1, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->f:I

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/lce/d;->a(I)V

    .line 155
    :cond_0
    return-void
.end method

.method public setThreshold(I)V
    .locals 1

    .prologue
    .line 159
    iput p1, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->e:I

    .line 161
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->b:Lpl/jbzd/core/ui/view/lce/d;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->b:Lpl/jbzd/core/ui/view/lce/d;

    invoke-virtual {v0, p1}, Lpl/jbzd/core/ui/view/lce/d;->b(I)V

    .line 164
    :cond_0
    return-void
.end method
