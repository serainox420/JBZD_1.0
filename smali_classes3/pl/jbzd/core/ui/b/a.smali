.class public abstract Lpl/jbzd/core/ui/b/a;
.super Landroid/support/v7/widget/RecyclerView$l;
.source "EndlessRecyclerViewScrollListener.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/support/v7/widget/RecyclerView$h;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lpl/jbzd/core/ui/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpl/jbzd/core/ui/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$l;-><init>()V

    .line 30
    const/4 v0, 0x5

    iput v0, p0, Lpl/jbzd/core/ui/b/a;->c:I

    .line 31
    iput v1, p0, Lpl/jbzd/core/ui/b/a;->d:I

    .line 32
    iput v1, p0, Lpl/jbzd/core/ui/b/a;->e:I

    .line 33
    iput v1, p0, Lpl/jbzd/core/ui/b/a;->f:I

    .line 34
    iput-boolean v1, p0, Lpl/jbzd/core/ui/b/a;->g:Z

    .line 35
    iput-boolean v1, p0, Lpl/jbzd/core/ui/b/a;->h:Z

    .line 40
    if-nez p2, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LinearLayoutManager cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    invoke-direct {p0, p1}, Lpl/jbzd/core/ui/b/a;->a(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lpl/jbzd/core/ui/b/a;->b:Landroid/support/v7/widget/RecyclerView$h;

    .line 46
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lpl/jbzd/core/ui/b/a;->d()I

    move-result v0

    iput v0, p0, Lpl/jbzd/core/ui/b/a;->f:I

    .line 245
    invoke-virtual {p0}, Lpl/jbzd/core/ui/b/a;->a()I

    move-result v0

    iput v0, p0, Lpl/jbzd/core/ui/b/a;->c:I

    .line 246
    return-void
.end method

.method private a(Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;IZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter",
            "<*>;IZ)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-boolean v0, p0, Lpl/jbzd/core/ui/b/a;->g:Z

    if-nez v0, :cond_3

    .line 151
    iget-boolean v0, p0, Lpl/jbzd/core/ui/b/a;->h:Z

    if-eqz v0, :cond_0

    .line 152
    iget v0, p0, Lpl/jbzd/core/ui/b/a;->d:I

    iget v2, p0, Lpl/jbzd/core/ui/b/a;->f:I

    if-gt v0, v2, :cond_2

    iget v0, p0, Lpl/jbzd/core/ui/b/a;->f:I

    :goto_0
    iput v0, p0, Lpl/jbzd/core/ui/b/a;->d:I

    .line 153
    iput-boolean v1, p0, Lpl/jbzd/core/ui/b/a;->h:Z

    .line 156
    :cond_0
    iget v0, p0, Lpl/jbzd/core/ui/b/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpl/jbzd/core/ui/b/a;->d:I

    invoke-virtual {p0, v0, p2}, Lpl/jbzd/core/ui/b/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/jbzd/core/ui/b/a;->g:Z

    .line 160
    invoke-virtual {p1}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->d()V

    .line 161
    iget v0, p0, Lpl/jbzd/core/ui/b/a;->d:I

    invoke-virtual {p0, v0, p2}, Lpl/jbzd/core/ui/b/a;->a(II)V

    .line 172
    :cond_1
    iget-boolean v0, p0, Lpl/jbzd/core/ui/b/a;->g:Z

    .line 175
    :goto_1
    return v0

    .line 152
    :cond_2
    iget v0, p0, Lpl/jbzd/core/ui/b/a;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lpl/jbzd/core/ui/b/a;->d:I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 175
    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lpl/jbzd/core/ui/b/a;->c:I

    return v0
.end method

.method public a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 72
    const-string v0, "ARG_CURRENT_PAGE"

    iget v1, p0, Lpl/jbzd/core/ui/b/a;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    const-string v0, "ARG_PREVIOUS_TOTAL_ITEM_COUNT"

    iget v1, p0, Lpl/jbzd/core/ui/b/a;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-string v0, "ARG_LAYOUT_MANAGER_STATE"

    iget-object v1, p0, Lpl/jbzd/core/ui/b/a;->b:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$h;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 75
    return-object p1
.end method

.method public abstract a(II)V
.end method

.method public a(III)V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public a(Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/jbzd/core/ui/b/a;->h:Z

    .line 139
    iget v0, p0, Lpl/jbzd/core/ui/b/a;->f:I

    iput v0, p0, Lpl/jbzd/core/ui/b/a;->d:I

    .line 140
    iput p2, p0, Lpl/jbzd/core/ui/b/a;->e:I

    .line 141
    invoke-virtual {p1}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->g()V

    .line 142
    iget v0, p0, Lpl/jbzd/core/ui/b/a;->d:I

    invoke-virtual {p0, v0, p2}, Lpl/jbzd/core/ui/b/a;->c(II)V

    .line 143
    return-void
.end method

.method public a(Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p1}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b()Z

    move-result v1

    .line 182
    iget-object v0, p0, Lpl/jbzd/core/ui/b/a;->b:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->getItemCount()I

    move-result v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sub-int v0, v2, v0

    invoke-direct {p0, p1, v0, v1}, Lpl/jbzd/core/ui/b/a;->a(Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;IZ)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    if-eqz p1, :cond_0

    .line 84
    :try_start_0
    const-string v0, "ARG_CURRENT_PAGE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpl/jbzd/core/ui/b/a;->d:I

    .line 85
    const-string v0, "ARG_PREVIOUS_TOTAL_ITEM_COUNT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpl/jbzd/core/ui/b/a;->e:I

    .line 86
    iget-object v0, p0, Lpl/jbzd/core/ui/b/a;->b:Landroid/support/v7/widget/RecyclerView$h;

    const-string v1, "ARG_LAYOUT_MANAGER_STATE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    iput v2, p0, Lpl/jbzd/core/ui/b/a;->e:I

    iput v2, p0, Lpl/jbzd/core/ui/b/a;->d:I

    goto :goto_0
.end method

.method public b(Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 187
    iput-boolean v1, p0, Lpl/jbzd/core/ui/b/a;->g:Z

    .line 188
    iput-boolean v1, p0, Lpl/jbzd/core/ui/b/a;->h:Z

    .line 190
    invoke-virtual {p1}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b()Z

    move-result v0

    .line 191
    invoke-virtual {p1}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->getItemCount()I

    move-result v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sub-int v0, v2, v0

    .line 193
    iget v2, p0, Lpl/jbzd/core/ui/b/a;->d:I

    iget v3, p0, Lpl/jbzd/core/ui/b/a;->e:I

    invoke-virtual {p0, v2, v3, v0}, Lpl/jbzd/core/ui/b/a;->a(III)V

    .line 194
    iput v0, p0, Lpl/jbzd/core/ui/b/a;->e:I

    .line 195
    invoke-virtual {p1, v1}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->a(Z)V

    .line 196
    return-void

    :cond_0
    move v0, v1

    .line 191
    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lpl/jbzd/core/ui/b/a;->g:Z

    return v0
.end method

.method public b(II)Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public c(II)V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public c(Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lpl/jbzd/core/ui/b/a;->g:Z

    .line 202
    iput-boolean v0, p0, Lpl/jbzd/core/ui/b/a;->h:Z

    .line 203
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lpl/jbzd/core/ui/b/a;->h:Z

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lpl/jbzd/core/ui/b/a;->f:I

    return v0
.end method

.method public d(Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/jbzd/core/ui/b/a;->h:Z

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/jbzd/core/ui/b/a;->g:Z

    .line 209
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-boolean v0, p0, Lpl/jbzd/core/ui/b/a;->g:Z

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;

    .line 102
    invoke-virtual {v0}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b()Z

    move-result v4

    .line 103
    invoke-virtual {v0}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->getItemCount()I

    move-result v3

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :goto_1
    sub-int v5, v3, v1

    .line 108
    iget-object v1, p0, Lpl/jbzd/core/ui/b/a;->b:Landroid/support/v7/widget/RecyclerView$h;

    instance-of v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_3

    .line 110
    iget-object v1, p0, Lpl/jbzd/core/ui/b/a;->b:Landroid/support/v7/widget/RecyclerView$h;

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b([I)[I

    move-result-object v6

    .line 112
    array-length v7, v6

    move v3, v2

    :goto_2
    if-ge v3, v7, :cond_4

    aget v1, v6, v3

    .line 114
    if-le v1, v2, :cond_6

    .line 112
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_2

    :cond_2
    move v1, v2

    .line 103
    goto :goto_1

    .line 119
    :cond_3
    iget-object v1, p0, Lpl/jbzd/core/ui/b/a;->b:Landroid/support/v7/widget/RecyclerView$h;

    instance-of v1, v1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_4

    .line 120
    iget-object v1, p0, Lpl/jbzd/core/ui/b/a;->b:Landroid/support/v7/widget/RecyclerView$h;

    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .line 125
    :cond_4
    iget v1, p0, Lpl/jbzd/core/ui/b/a;->e:I

    if-ge v5, v1, :cond_5

    .line 126
    invoke-virtual {p0, v0, v5}, Lpl/jbzd/core/ui/b/a;->a(Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;I)V

    .line 130
    :cond_5
    iget-boolean v1, p0, Lpl/jbzd/core/ui/b/a;->g:Z

    if-nez v1, :cond_0

    iget v1, p0, Lpl/jbzd/core/ui/b/a;->c:I

    add-int/2addr v1, v2

    if-le v1, v5, :cond_0

    .line 131
    invoke-direct {p0, v0, v5, v4}, Lpl/jbzd/core/ui/b/a;->a(Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;IZ)Z

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_3
.end method
