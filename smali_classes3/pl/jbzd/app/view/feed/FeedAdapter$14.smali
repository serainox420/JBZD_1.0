.class Lpl/jbzd/app/view/feed/FeedAdapter$14;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 590
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$14;->b:Lpl/jbzd/app/view/feed/FeedAdapter;

    iput-object p2, p0, Lpl/jbzd/app/view/feed/FeedAdapter$14;->a:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$14;->b:Lpl/jbzd/app/view/feed/FeedAdapter;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$14;->a:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    invoke-virtual {v1}, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Lpl/jbzd/app/view/feed/FeedAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$14;->b:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Lpl/jbzd/app/view/feed/FeedAdapter;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$14;->b:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->g(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$14;->a:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    invoke-virtual {v1}, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Media;

    .line 597
    const/4 v1, 0x1

    iput-boolean v1, v0, Lpl/jbzd/app/model/Media;->isExpand:Z

    .line 598
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$14;->a:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v1, v1, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->imageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v0, v0, Lpl/jbzd/app/model/Media;->maxHeight:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 599
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$14;->a:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnExpand:Lpl/jbzd/core/ui/view/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setVisibility(I)V

    goto :goto_0
.end method
