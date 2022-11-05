.class Lpl/jbzd/app/view/feed/FeedAdapter$3;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Lpl/jbzd/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/feed/FeedAdapter;->a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/feed/holders/d;

.field final synthetic b:Lpl/jbzd/app/view/feed/FeedAdapter;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/feed/FeedAdapter;Lpl/jbzd/app/view/feed/holders/d;)V
    .locals 0

    .prologue
    .line 694
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$3;->b:Lpl/jbzd/app/view/feed/FeedAdapter;

    iput-object p2, p0, Lpl/jbzd/app/view/feed/FeedAdapter$3;->a:Lpl/jbzd/app/view/feed/holders/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 698
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$3;->a:Lpl/jbzd/app/view/feed/holders/d;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/d;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$3;->a:Lpl/jbzd/app/view/feed/holders/d;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/d;->btnShow:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$3;->a:Lpl/jbzd/app/view/feed/holders/d;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/d;->btnShow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 700
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$3;->a:Lpl/jbzd/app/view/feed/holders/d;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/d;->progressView:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$3;->a:Lpl/jbzd/app/view/feed/holders/d;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/d;->progressView:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    invoke-virtual {v0, v1}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->setVisibility(I)V

    .line 701
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$3;->a:Lpl/jbzd/app/view/feed/holders/d;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/d;->ytVideoPlayerContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$3;->a:Lpl/jbzd/app/view/feed/holders/d;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/d;->ytVideoPlayerContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 702
    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 715
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00c1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 716
    return-void
.end method

.method public b(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 707
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$3;->a:Lpl/jbzd/app/view/feed/holders/d;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/d;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$3;->a:Lpl/jbzd/app/view/feed/holders/d;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/d;->btnShow:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$3;->a:Lpl/jbzd/app/view/feed/holders/d;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/d;->btnShow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 709
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$3;->a:Lpl/jbzd/app/view/feed/holders/d;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/d;->progressView:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$3;->a:Lpl/jbzd/app/view/feed/holders/d;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/d;->progressView:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->setVisibility(I)V

    .line 710
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$3;->a:Lpl/jbzd/app/view/feed/holders/d;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/d;->ytVideoPlayerContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$3;->a:Lpl/jbzd/app/view/feed/holders/d;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/d;->ytVideoPlayerContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 711
    :cond_2
    return-void
.end method
