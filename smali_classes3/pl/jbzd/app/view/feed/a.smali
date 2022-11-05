.class public Lpl/jbzd/app/view/feed/a;
.super Lpl/jbzd/app/view/feed/b;
.source "FeedTabsPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/app/view/feed/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpl/jbzd/app/view/feed/b",
        "<",
        "Lpl/jbzd/app/view/feed/FeedFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/view/feed/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lpl/jbzd/app/view/menu/model/Item;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/u;Lpl/jbzd/app/view/menu/model/Item;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/u;",
            "Lpl/jbzd/app/view/menu/model/Item;",
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/view/feed/a$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lpl/jbzd/app/view/feed/b;-><init>(Landroid/support/v4/app/u;)V

    .line 38
    iput-object p2, p0, Lpl/jbzd/app/view/feed/a;->b:Lpl/jbzd/app/view/menu/model/Item;

    .line 39
    iput-object p3, p0, Lpl/jbzd/app/view/feed/a;->a:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lpl/jbzd/app/view/feed/a;->b(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    iget-object v1, p0, Lpl/jbzd/app/view/feed/a;->b:Lpl/jbzd/app/view/menu/model/Item;

    iget-object v0, p0, Lpl/jbzd/app/view/feed/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a$a;

    iget v0, v0, Lpl/jbzd/app/view/feed/a$a;->b:I

    invoke-static {v1, v0}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/menu/model/Item;I)Lpl/jbzd/app/view/feed/FeedFragment;

    move-result-object v0

    .line 51
    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/a;->getCount()I

    move-result v2

    .line 72
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 74
    invoke-virtual {p0, v1}, Lpl/jbzd/app/view/feed/a;->b(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    check-cast v0, Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->h()V

    .line 72
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 80
    :cond_1
    return-void
.end method

.method public bridge synthetic destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1, p2, p3}, Lpl/jbzd/app/view/feed/b;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lpl/jbzd/app/view/feed/b;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
