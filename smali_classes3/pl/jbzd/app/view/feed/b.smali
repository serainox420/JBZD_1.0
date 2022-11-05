.class abstract Lpl/jbzd/app/view/feed/b;
.super Landroid/support/v4/app/x;
.source "SmartFragmentStatePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/v4/app/Fragment;",
        ">",
        "Landroid/support/v4/app/x;"
    }
.end annotation


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/app/u;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/support/v4/app/x;-><init>(Landroid/support/v4/app/u;)V

    .line 16
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lpl/jbzd/app/view/feed/b;->a:Landroid/util/SparseArray;

    .line 20
    return-void
.end method


# virtual methods
.method b(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 40
    iget-object v0, p0, Lpl/jbzd/app/view/feed/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 41
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lpl/jbzd/app/view/feed/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 35
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/x;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 36
    return-void
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/x;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 27
    iget-object v1, p0, Lpl/jbzd/app/view/feed/b;->a:Landroid/util/SparseArray;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    return-object v0
.end method
