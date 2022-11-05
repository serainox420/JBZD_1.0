.class public Lpl/jbzd/app/view/feed/a/a;
.super Ljava/lang/Object;
.source "BaseFeedItem.java"


# instance fields
.field public a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

.field b:Z

.field public c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpl/jbzd/app/view/feed/holders/StandardViewHolder",
            "<+",
            "Lpl/jbzd/app/view/feed/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpl/jbzd/app/view/feed/model/BaseFeedModel;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    .line 61
    return-void
.end method

.method public static a(Lpl/jbzd/app/view/feed/FeedAdapter$c;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/jbzd/app/view/feed/FeedAdapter$c;",
            "Ljava/util/List",
            "<+",
            "Lpl/jbzd/app/view/feed/model/BaseFeedModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/view/feed/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    if-eqz p1, :cond_4

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    .line 33
    instance-of v1, v0, Lpl/jbzd/app/model/Media;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 35
    check-cast v1, Lpl/jbzd/app/model/Media;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedViewType;->getIdByName(Ljava/lang/String;)I

    move-result v1

    .line 37
    sget-object v4, Lpl/jbzd/app/view/feed/FeedViewType;->GIF:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v4, v4, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    if-eq v1, v4, :cond_0

    sget-object v4, Lpl/jbzd/app/view/feed/FeedViewType;->VIDEO:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v4, v4, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    if-ne v1, v4, :cond_1

    .line 38
    :cond_0
    new-instance v1, Lpl/jbzd/app/view/feed/a/c;

    invoke-direct {v1, p0, v0}, Lpl/jbzd/app/view/feed/a/c;-><init>(Lpl/jbzd/app/view/feed/FeedAdapter$c;Lpl/jbzd/app/view/feed/model/BaseFeedModel;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_1
    new-instance v1, Lpl/jbzd/app/view/feed/a/b;

    invoke-direct {v1, v0}, Lpl/jbzd/app/view/feed/a/b;-><init>(Lpl/jbzd/app/view/feed/model/BaseFeedModel;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_2
    new-instance v1, Lpl/jbzd/app/view/feed/a/a;

    invoke-direct {v1, v0}, Lpl/jbzd/app/view/feed/a/a;-><init>(Lpl/jbzd/app/view/feed/model/BaseFeedModel;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 52
    :goto_1
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Lpl/jbzd/b/b$a;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lpl/jbzd/app/view/feed/a/a;->b:Z

    .line 76
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method
