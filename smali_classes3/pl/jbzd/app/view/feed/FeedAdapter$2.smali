.class Lpl/jbzd/app/view/feed/FeedAdapter$2;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/feed/FeedAdapter;->a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lpl/jbzd/app/view/feed/holders/a;

.field final synthetic c:Lpl/jbzd/b/b$a;

.field final synthetic d:Landroid/view/View$OnClickListener;

.field final synthetic e:Lpl/jbzd/app/view/feed/FeedAdapter;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/feed/FeedAdapter;Landroid/view/View;Lpl/jbzd/app/view/feed/holders/a;Lpl/jbzd/b/b$a;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$2;->e:Lpl/jbzd/app/view/feed/FeedAdapter;

    iput-object p2, p0, Lpl/jbzd/app/view/feed/FeedAdapter$2;->a:Landroid/view/View;

    iput-object p3, p0, Lpl/jbzd/app/view/feed/FeedAdapter$2;->b:Lpl/jbzd/app/view/feed/holders/a;

    iput-object p4, p0, Lpl/jbzd/app/view/feed/FeedAdapter$2;->c:Lpl/jbzd/b/b$a;

    iput-object p5, p0, Lpl/jbzd/app/view/feed/FeedAdapter$2;->d:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 668
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/core/a/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 669
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00c1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$2;->e:Lpl/jbzd/app/view/feed/FeedAdapter;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$2;->b:Lpl/jbzd/app/view/feed/holders/a;

    invoke-virtual {v1}, Lpl/jbzd/app/view/feed/holders/a;->getAdapterPosition()I

    move-result v1

    invoke-static {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Lpl/jbzd/app/view/feed/FeedAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$2;->e:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Lpl/jbzd/app/view/feed/FeedAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$2;->e:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->k(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$2;->b:Lpl/jbzd/app/view/feed/holders/a;

    invoke-virtual {v1}, Lpl/jbzd/app/view/feed/holders/a;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/jbzd/app/view/feed/a/c;

    .line 676
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$2;->e:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->c(Lpl/jbzd/app/view/feed/FeedAdapter;)Lpl/jbzd/app/view/feed/FeedAdapter$b;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$2;->a:Landroid/view/View;

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedAdapter$2;->b:Lpl/jbzd/app/view/feed/holders/a;

    iget-object v4, p0, Lpl/jbzd/app/view/feed/FeedAdapter$2;->e:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-static {v4}, Lpl/jbzd/app/view/feed/FeedAdapter;->l(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lpl/jbzd/app/view/feed/FeedAdapter$2;->b:Lpl/jbzd/app/view/feed/holders/a;

    invoke-virtual {v5}, Lpl/jbzd/app/view/feed/holders/a;->getAdapterPosition()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/jbzd/app/view/feed/a/a;

    iget-object v4, v4, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v4, Lpl/jbzd/app/model/Media;

    iget-object v5, p0, Lpl/jbzd/app/view/feed/FeedAdapter$2;->b:Lpl/jbzd/app/view/feed/holders/a;

    invoke-virtual {v5}, Lpl/jbzd/app/view/feed/holders/a;->getAdapterPosition()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lpl/jbzd/app/view/feed/FeedAdapter$b;->a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/StandardViewHolder;Lpl/jbzd/app/view/feed/a/c;Lpl/jbzd/app/model/Media;I)V

    .line 679
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$2;->b:Lpl/jbzd/app/view/feed/holders/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/a;->ytVideoPlayerContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$2;->c:Lpl/jbzd/b/b$a;

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedAdapter$2;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0, v1, v2}, Lpl/jbzd/app/view/feed/a/c;->a(Landroid/view/ViewGroup;Lpl/jbzd/b/b$a;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
