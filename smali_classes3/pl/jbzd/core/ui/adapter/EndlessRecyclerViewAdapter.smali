.class public abstract Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "EndlessRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/v7/widget/RecyclerView$u;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field protected final a:Lpl/jbzd/core/ui/b/a;

.field protected b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final d:Landroid/support/v7/widget/RecyclerView;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Lpl/jbzd/core/ui/b/a;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Lpl/jbzd/core/ui/b/a;",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b:Ljava/util/ArrayList;

    .line 59
    iput-object p1, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->d:Landroid/support/v7/widget/RecyclerView;

    .line 60
    iput-object p2, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->a:Lpl/jbzd/core/ui/b/a;

    .line 61
    invoke-virtual {p0}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->a()[Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->e:Ljava/util/List;

    .line 62
    iput-object p3, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b:Ljava/util/ArrayList;

    .line 64
    if-nez p2, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EndlessRecyclerViewScrollListener cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->e:Ljava/util/List;

    sget-object v1, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->LOADING_FIST:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getAllowedViewTypes must contain LOADING_FIST"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->e:Ljava/util/List;

    sget-object v1, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->LOADING_PAGE:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getAllowedViewTypes must contain LOADING_PAGE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_2
    return-void
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->a:Lpl/jbzd/core/ui/b/a;

    invoke-virtual {v0}, Lpl/jbzd/core/ui/b/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->f:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public abstract a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;
.end method

.method public abstract a(Landroid/view/ViewGroup;Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;I)Landroid/support/v7/widget/RecyclerView$u;
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$u;II)V
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$u;Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;II)V
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
    .line 297
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->a:Lpl/jbzd/core/ui/b/a;

    invoke-virtual {v0, p0}, Lpl/jbzd/core/ui/b/a;->b(Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;)V

    .line 299
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    :cond_0
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    invoke-virtual {p0}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 316
    :cond_1
    :goto_0
    return-void

    .line 305
    :cond_2
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 307
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 308
    invoke-virtual {p0}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 312
    :cond_3
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 313
    iget-object v1, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 314
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->notifyItemRangeInserted(II)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 253
    invoke-virtual {p0}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 255
    iput-boolean v2, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->f:Z

    .line 257
    if-eqz p1, :cond_0

    .line 258
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->a:Lpl/jbzd/core/ui/b/a;

    invoke-virtual {v0, p0}, Lpl/jbzd/core/ui/b/a;->c(Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;)V

    .line 261
    :cond_0
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->notifyItemRemoved(I)V

    .line 271
    :cond_1
    :goto_0
    return-void

    .line 265
    :cond_2
    iput-boolean v2, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->f:Z

    .line 267
    if-eqz p1, :cond_1

    .line 268
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->a:Lpl/jbzd/core/ui/b/a;

    invoke-virtual {v0, p0}, Lpl/jbzd/core/ui/b/a;->c(Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;)V

    goto :goto_0
.end method

.method public abstract a()[Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->f:Z

    .line 327
    if-eqz p1, :cond_0

    .line 328
    invoke-virtual {p0}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 330
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->a:Lpl/jbzd/core/ui/b/a;

    invoke-virtual {v0, p0}, Lpl/jbzd/core/ui/b/a;->a(Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;)Z

    .line 201
    iget-boolean v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->f:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->notifyItemChanged(I)V

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->f:Z

    .line 206
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$1;

    invoke-direct {v1, p0}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$1;-><init>(Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 227
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->f:Z

    .line 228
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$2;

    invoke-direct {v1, p0}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$2;-><init>(Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 232
    invoke-virtual {p0}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 234
    iput-boolean v2, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->f:Z

    .line 235
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->a:Lpl/jbzd/core/ui/b/a;

    invoke-virtual {v0, p0}, Lpl/jbzd/core/ui/b/a;->d(Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;)V

    .line 236
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->notifyItemChanged(I)V

    .line 244
    :goto_0
    return-void

    .line 240
    :cond_0
    iput-boolean v2, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->f:Z

    .line 241
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->a:Lpl/jbzd/core/ui/b/a;

    invoke-virtual {v0, p0}, Lpl/jbzd/core/ui/b/a;->d(Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;)V

    .line 242
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->notifyItemInserted(I)V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->a(Z)V

    .line 249
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b(Z)V

    .line 321
    return-void
.end method

.method public getItemCount()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 118
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 120
    if-lez v0, :cond_2

    .line 123
    invoke-direct {p0}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    add-int/lit8 v0, v0, 0x1

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    iget-object v1, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->a:Lpl/jbzd/core/ui/b/a;

    invoke-virtual {v1}, Lpl/jbzd/core/ui/b/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_2
    invoke-direct {p0}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->h()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 133
    goto :goto_0

    .line 136
    :cond_3
    iget-object v2, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->a:Lpl/jbzd/core/ui/b/a;

    invoke-virtual {v2}, Lpl/jbzd/core/ui/b/a;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 137
    goto :goto_0

    .line 140
    :cond_4
    iget-object v2, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->e:Ljava/util/List;

    sget-object v3, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->EMPTY:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 141
    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 152
    iget-object v1, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 155
    invoke-direct {p0}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->e:Ljava/util/List;

    sget-object v1, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->ERROR_FIRST:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->ERROR_FIRST:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    iget v0, v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->id:I

    .line 172
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    sget-object v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->LOADING_PAGE:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    iget v0, v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->id:I

    .line 176
    :cond_1
    :goto_1
    return v0

    .line 156
    :cond_2
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->e:Ljava/util/List;

    sget-object v1, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->EMPTY:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->EMPTY:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    iget v0, v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->id:I

    goto :goto_0

    :cond_3
    sget-object v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->LOADING_FIST:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    iget v0, v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->id:I

    goto :goto_0

    .line 159
    :cond_4
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->a:Lpl/jbzd/core/ui/b/a;

    invoke-virtual {v0}, Lpl/jbzd/core/ui/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    sget-object v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->LOADING_FIST:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    iget v0, v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->id:I

    goto :goto_0

    .line 165
    :cond_5
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->e:Ljava/util/List;

    sget-object v1, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->EMPTY:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->EMPTY:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    iget v0, v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->id:I

    goto :goto_0

    :cond_6
    sget-object v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->LOADING_FIST:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    iget v0, v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->id:I

    goto :goto_0

    .line 168
    :cond_7
    iget-object v1, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 169
    invoke-direct {p0}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->ERROR_PAGE:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    iget v0, v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->id:I

    goto :goto_0

    :cond_8
    sget-object v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->LOADING_PAGE:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    iget v0, v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->id:I

    goto :goto_0

    .line 173
    :cond_9
    invoke-virtual {p0, p1}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->a(I)I

    move-result v0

    goto :goto_1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$u;I)V
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0, p2}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->getItemViewType(I)I

    move-result v1

    .line 99
    if-ltz v1, :cond_0

    .line 100
    invoke-virtual {p0, p1, v1, p2}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->a(Landroid/support/v7/widget/RecyclerView$u;II)V

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->LOADING_FIST:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    :goto_1
    invoke-static {v1, v0}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->getById(ILpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;)Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    move-result-object v0

    .line 105
    invoke-virtual {p0, p1, v0, v1, p2}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->a(Landroid/support/v7/widget/RecyclerView$u;Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;II)V

    goto :goto_0

    .line 104
    :cond_1
    sget-object v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->LOADING_PAGE:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;
    .locals 1

    .prologue
    .line 82
    if-ltz p2, :cond_0

    .line 83
    invoke-virtual {p0, p1, p2}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 87
    :cond_0
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->LOADING_FIST:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    :goto_1
    invoke-static {p2, v0}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->getById(ILpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;)Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    move-result-object v0

    .line 88
    invoke-virtual {p0, p1, v0, p2}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->a(Landroid/view/ViewGroup;Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;I)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_1
    sget-object v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->LOADING_PAGE:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    goto :goto_1
.end method
