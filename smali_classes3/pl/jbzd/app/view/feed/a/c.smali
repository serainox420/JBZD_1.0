.class public Lpl/jbzd/app/view/feed/a/c;
.super Lpl/jbzd/app/view/feed/a/a;
.source "VideoFeedItem.java"


# instance fields
.field private final d:Lpl/jbzd/app/view/feed/FeedAdapter$c;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/view/feed/FeedAdapter$c;Lpl/jbzd/app/view/feed/model/BaseFeedModel;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p2}, Lpl/jbzd/app/view/feed/a/a;-><init>(Lpl/jbzd/app/view/feed/model/BaseFeedModel;)V

    .line 26
    iput-object p1, p0, Lpl/jbzd/app/view/feed/a/c;->d:Lpl/jbzd/app/view/feed/FeedAdapter$c;

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-boolean v0, p0, Lpl/jbzd/app/view/feed/a/c;->b:Z

    if-nez v0, :cond_1

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/jbzd/app/view/feed/a/c;->b:Z

    .line 66
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnShow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnShow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->progressView:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->progressView:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->setVisibility(I)V

    .line 79
    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 56
    invoke-static {p1}, Lpl/jbzd/app/MyApplication;->a(Landroid/content/Context;)Lpl/jbzd/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/b/b;->a()V

    .line 57
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Lpl/jbzd/b/b$a;Landroid/view/View$OnClickListener;)V
    .locals 3

    .prologue
    .line 32
    if-eqz p1, :cond_2

    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    if-eqz v0, :cond_2

    .line 34
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$movie()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$movie()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/app/MyApplication;->a(Landroid/content/Context;)Lpl/jbzd/b/b;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lpl/jbzd/b/b;->a(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/app/MyApplication;->a(Landroid/content/Context;)Lpl/jbzd/b/b;

    move-result-object v1

    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$movie()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0, p1, p2}, Lpl/jbzd/b/b;->a(Landroid/net/Uri;Landroid/view/ViewGroup;Lpl/jbzd/b/b$a;)V

    .line 52
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$youtube()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$youtube()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/app/MyApplication;->a(Landroid/content/Context;)Lpl/jbzd/b/b;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lpl/jbzd/b/b;->a(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/app/MyApplication;->a(Landroid/content/Context;)Lpl/jbzd/b/b;

    move-result-object v1

    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$youtube()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1, p2}, Lpl/jbzd/b/b;->a(Ljava/lang/String;Landroid/view/ViewGroup;Lpl/jbzd/b/b$a;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/a/c;->c()V

    .line 46
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->d:Lpl/jbzd/app/view/feed/FeedAdapter$c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00c5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter$c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/a/c;->c()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-boolean v0, p0, Lpl/jbzd/app/view/feed/a/c;->b:Z

    if-nez v0, :cond_1

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/jbzd/app/view/feed/a/c;->b:Z

    .line 87
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnShow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnShow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->progressView:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->progressView:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    invoke-virtual {v0, v1}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->setVisibility(I)V

    .line 100
    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    iput-boolean v1, p0, Lpl/jbzd/app/view/feed/a/c;->b:Z

    .line 107
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnShow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnShow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->progressView:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->progressView:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->setVisibility(I)V

    .line 119
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/feed/a/c;->a(Landroid/content/Context;)V

    .line 121
    :cond_2
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    iput-boolean v1, p0, Lpl/jbzd/app/view/feed/a/c;->b:Z

    .line 127
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnShow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnShow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->progressView:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lpl/jbzd/app/view/feed/a/c;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->progressView:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->setVisibility(I)V

    .line 139
    :cond_1
    return-void
.end method
