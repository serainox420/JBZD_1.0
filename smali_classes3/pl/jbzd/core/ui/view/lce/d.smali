.class Lpl/jbzd/core/ui/view/lce/d;
.super Landroid/support/v7/widget/RecyclerView$l;
.source "LceRecyclerViewScrollListener.java"


# instance fields
.field private final a:Lpl/jbzd/core/ui/view/lce/a;

.field private b:Lpl/jbzd/core/ui/view/lce/LceRecyclerView$a;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z


# direct methods
.method constructor <init>(Lpl/jbzd/core/ui/view/lce/a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$l;-><init>()V

    .line 18
    iput v1, p0, Lpl/jbzd/core/ui/view/lce/d;->c:I

    .line 19
    const/4 v0, 0x5

    iput v0, p0, Lpl/jbzd/core/ui/view/lce/d;->d:I

    .line 20
    iput v1, p0, Lpl/jbzd/core/ui/view/lce/d;->e:I

    .line 21
    iput v1, p0, Lpl/jbzd/core/ui/view/lce/d;->f:I

    .line 22
    iput-boolean v1, p0, Lpl/jbzd/core/ui/view/lce/d;->g:Z

    .line 23
    iput-boolean v1, p0, Lpl/jbzd/core/ui/view/lce/d;->h:Z

    .line 27
    iput-object p1, p0, Lpl/jbzd/core/ui/view/lce/d;->a:Lpl/jbzd/core/ui/view/lce/a;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lpl/jbzd/core/ui/view/lce/d;->b:Lpl/jbzd/core/ui/view/lce/LceRecyclerView$a;

    .line 29
    iget v0, p0, Lpl/jbzd/core/ui/view/lce/d;->d:I

    iget-object v1, p0, Lpl/jbzd/core/ui/view/lce/d;->a:Lpl/jbzd/core/ui/view/lce/a;

    invoke-interface {v1}, Lpl/jbzd/core/ui/view/lce/a;->b()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lpl/jbzd/core/ui/view/lce/d;->d:I

    .line 30
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 139
    iget v1, p0, Lpl/jbzd/core/ui/view/lce/d;->c:I

    iput v1, p0, Lpl/jbzd/core/ui/view/lce/d;->e:I

    .line 140
    iput v0, p0, Lpl/jbzd/core/ui/view/lce/d;->f:I

    .line 141
    iget-boolean v1, p0, Lpl/jbzd/core/ui/view/lce/d;->g:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/d;->h:Z

    .line 142
    return-void
.end method

.method a(I)V
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lpl/jbzd/core/ui/view/lce/d;->c:I

    .line 115
    return-void
.end method

.method a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    if-eqz p1, :cond_0

    .line 47
    const-string v0, "LceScroll.ARG_CURRENT_PAGE"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpl/jbzd/core/ui/view/lce/d;->e:I

    .line 48
    const-string v0, "LceScroll.ARG_PREVIOUS_TOTAL_ITEM_COUNT"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpl/jbzd/core/ui/view/lce/d;->f:I

    .line 49
    iput-boolean v1, p0, Lpl/jbzd/core/ui/view/lce/d;->h:Z

    .line 51
    :cond_0
    return-void
.end method

.method a(Lpl/jbzd/core/ui/view/lce/LceRecyclerView$a;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lpl/jbzd/core/ui/view/lce/d;->b:Lpl/jbzd/core/ui/view/lce/LceRecyclerView$a;

    .line 55
    return-void
.end method

.method a(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;Lpl/jbzd/core/ui/view/lce/c;Z)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 129
    if-eqz p3, :cond_0

    .line 130
    invoke-virtual {p2, p1, v0}, Lpl/jbzd/core/ui/view/lce/c;->b(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;Z)V

    .line 133
    :cond_0
    iput-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/d;->h:Z

    .line 134
    invoke-virtual {p2}, Lpl/jbzd/core/ui/view/lce/c;->getItemCount()I

    move-result v1

    invoke-virtual {p2}, Lpl/jbzd/core/ui/view/lce/c;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    sub-int v0, v1, v0

    iput v0, p0, Lpl/jbzd/core/ui/view/lce/d;->f:I

    .line 135
    return-void
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 123
    iput-boolean p1, p0, Lpl/jbzd/core/ui/view/lce/d;->g:Z

    .line 124
    iget-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/d;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/d;->h:Z

    .line 125
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 83
    invoke-virtual {p1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/lce/c;

    .line 84
    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/lce/c;->getItemCount()I

    move-result v4

    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/lce/c;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    sub-int/2addr v4, v1

    .line 86
    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/lce/c;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget v1, p0, Lpl/jbzd/core/ui/view/lce/d;->e:I

    iget v5, p0, Lpl/jbzd/core/ui/view/lce/d;->c:I

    if-gt v1, v5, :cond_4

    iget v1, p0, Lpl/jbzd/core/ui/view/lce/d;->c:I

    :goto_1
    iput v1, p0, Lpl/jbzd/core/ui/view/lce/d;->e:I

    .line 89
    invoke-virtual {v0, p1, v3}, Lpl/jbzd/core/ui/view/lce/c;->a(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;Z)V

    .line 92
    :cond_0
    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/lce/c;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {v0, p1, v3}, Lpl/jbzd/core/ui/view/lce/c;->b(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;Z)V

    .line 96
    :cond_1
    iget-object v1, p0, Lpl/jbzd/core/ui/view/lce/d;->b:Lpl/jbzd/core/ui/view/lce/LceRecyclerView$a;

    if-eqz v1, :cond_2

    .line 98
    iget-object v1, p0, Lpl/jbzd/core/ui/view/lce/d;->b:Lpl/jbzd/core/ui/view/lce/LceRecyclerView$a;

    iget v3, p0, Lpl/jbzd/core/ui/view/lce/d;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lpl/jbzd/core/ui/view/lce/d;->e:I

    invoke-interface {v1, p1, v3, v4}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView$a;->a(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;II)Z

    move-result v1

    iput-boolean v1, p0, Lpl/jbzd/core/ui/view/lce/d;->h:Z

    .line 100
    iget-boolean v1, p0, Lpl/jbzd/core/ui/view/lce/d;->h:Z

    if-eqz v1, :cond_5

    .line 101
    invoke-virtual {v0, p1, v2}, Lpl/jbzd/core/ui/view/lce/c;->b(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;Z)V

    .line 108
    :cond_2
    :goto_2
    iget-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/d;->h:Z

    return v0

    :cond_3
    move v1, v3

    .line 84
    goto :goto_0

    .line 88
    :cond_4
    iget v1, p0, Lpl/jbzd/core/ui/view/lce/d;->e:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 103
    :cond_5
    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/lce/c;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    iget v0, p0, Lpl/jbzd/core/ui/view/lce/d;->e:I

    iget v1, p0, Lpl/jbzd/core/ui/view/lce/d;->c:I

    if-gt v0, v1, :cond_6

    iget v0, p0, Lpl/jbzd/core/ui/view/lce/d;->c:I

    :goto_3
    iput v0, p0, Lpl/jbzd/core/ui/view/lce/d;->e:I

    goto :goto_2

    :cond_6
    iget v0, p0, Lpl/jbzd/core/ui/view/lce/d;->e:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method

.method b(I)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/d;->a:Lpl/jbzd/core/ui/view/lce/a;

    invoke-interface {v0}, Lpl/jbzd/core/ui/view/lce/a;->b()I

    move-result v0

    mul-int/2addr v0, p1

    iput v0, p0, Lpl/jbzd/core/ui/view/lce/d;->d:I

    .line 119
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 61
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/lce/c;

    .line 62
    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/lce/c;->i()Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v1, p0, Lpl/jbzd/core/ui/view/lce/d;->a:Lpl/jbzd/core/ui/view/lce/a;

    invoke-interface {v1}, Lpl/jbzd/core/ui/view/lce/a;->a()I

    move-result v3

    .line 65
    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/lce/c;->getItemCount()I

    move-result v4

    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/lce/c;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    sub-int/2addr v4, v1

    .line 68
    iget v1, p0, Lpl/jbzd/core/ui/view/lce/d;->f:I

    if-ge v4, v1, :cond_4

    move-object v0, p1

    .line 69
    check-cast v0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->a()V

    .line 76
    :cond_2
    :goto_2
    iget-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/d;->h:Z

    if-nez v0, :cond_0

    iget v0, p0, Lpl/jbzd/core/ui/view/lce/d;->d:I

    add-int/2addr v0, v3

    if-le v0, v4, :cond_0

    .line 77
    check-cast p1, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    invoke-virtual {p0, p1}, Lpl/jbzd/core/ui/view/lce/d;->a(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;)Z

    move-result v0

    iput-boolean v0, p0, Lpl/jbzd/core/ui/view/lce/d;->h:Z

    goto :goto_0

    .line 65
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 72
    :cond_4
    iget v1, p0, Lpl/jbzd/core/ui/view/lce/d;->f:I

    if-le v4, v1, :cond_2

    move-object v1, p1

    .line 73
    check-cast v1, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    invoke-virtual {p0, v1, v0, v2}, Lpl/jbzd/core/ui/view/lce/d;->a(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;Lpl/jbzd/core/ui/view/lce/c;Z)V

    goto :goto_2
.end method
