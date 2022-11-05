.class public abstract Lpl/jbzd/core/ui/adapter/a;
.super Landroid/support/v4/view/aa;
.source "PagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/core/ui/adapter/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/view/aa;"
    }
.end annotation


# instance fields
.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lpl/jbzd/core/ui/adapter/a$a;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Landroid/content/Context;

.field protected final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/view/aa;-><init>()V

    .line 18
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lpl/jbzd/core/ui/adapter/a;->b:Landroid/util/SparseArray;

    .line 34
    iput-object p1, p0, Lpl/jbzd/core/ui/adapter/a;->c:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lpl/jbzd/core/ui/adapter/a;->d:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Landroid/view/ViewGroup;II)Lpl/jbzd/core/ui/adapter/a$a;
.end method

.method public b(I)Lpl/jbzd/core/ui/adapter/a$a;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/a;->b:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/adapter/a$a;

    return-object v0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 62
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 47
    invoke-virtual {p0, p2}, Lpl/jbzd/core/ui/adapter/a;->a(I)I

    move-result v0

    .line 48
    invoke-virtual {p0, p1, p2, v0}, Lpl/jbzd/core/ui/adapter/a;->a(Landroid/view/ViewGroup;II)Lpl/jbzd/core/ui/adapter/a$a;

    move-result-object v1

    .line 49
    iget-object v0, v1, Lpl/jbzd/core/ui/adapter/a$a;->d:Landroid/view/View;

    invoke-virtual {p1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 50
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    if-ltz p2, :cond_0

    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/a;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0, p2}, Lpl/jbzd/core/ui/adapter/a$a;->a(Ljava/lang/Object;I)V

    .line 55
    iget-object v0, v1, Lpl/jbzd/core/ui/adapter/a$a;->d:Landroid/view/View;

    return-object v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 74
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
