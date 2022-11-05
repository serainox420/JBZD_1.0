.class Lpl/jbzd/app/view/feed/FeedAdapter$15;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Lpl/jbzd/core/ui/view/CenteredLikeButton$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/feed/FeedAdapter;->a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/StandardViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

.field final synthetic b:Lpl/jbzd/app/view/feed/FeedAdapter;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/feed/FeedAdapter;Lpl/jbzd/app/view/feed/holders/StandardViewHolder;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$15;->b:Lpl/jbzd/app/view/feed/FeedAdapter;

    iput-object p2, p0, Lpl/jbzd/app/view/feed/FeedAdapter$15;->a:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 606
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$15;->b:Lpl/jbzd/app/view/feed/FeedAdapter;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$15;->a:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    invoke-virtual {v1}, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Lpl/jbzd/app/view/feed/FeedAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$15;->b:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Lpl/jbzd/app/view/feed/FeedAdapter;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$15;->b:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->c(Lpl/jbzd/app/view/feed/FeedAdapter;)Lpl/jbzd/app/view/feed/FeedAdapter$b;

    move-result-object v1

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$15;->b:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->h(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedAdapter$15;->a:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    invoke-virtual {v2}, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Media;

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedAdapter$15;->a:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    invoke-virtual {v2}, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, p1, v0, v2, p2}, Lpl/jbzd/app/view/feed/FeedAdapter$b;->a(Landroid/view/View;Lpl/jbzd/app/model/Media;IZ)V

    goto :goto_0
.end method
