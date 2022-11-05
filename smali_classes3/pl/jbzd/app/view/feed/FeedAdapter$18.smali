.class Lpl/jbzd/app/view/feed/FeedAdapter$18;
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
.field final synthetic a:Lpl/jbzd/app/view/feed/holders/a;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lpl/jbzd/app/view/feed/FeedAdapter;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/feed/FeedAdapter;Lpl/jbzd/app/view/feed/holders/a;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 655
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$18;->c:Lpl/jbzd/app/view/feed/FeedAdapter;

    iput-object p2, p0, Lpl/jbzd/app/view/feed/FeedAdapter$18;->a:Lpl/jbzd/app/view/feed/holders/a;

    iput-object p3, p0, Lpl/jbzd/app/view/feed/FeedAdapter$18;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 659
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$18;->c:Lpl/jbzd/app/view/feed/FeedAdapter;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$18;->a:Lpl/jbzd/app/view/feed/holders/a;

    invoke-virtual {v1}, Lpl/jbzd/app/view/feed/holders/a;->getAdapterPosition()I

    move-result v1

    invoke-static {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Lpl/jbzd/app/view/feed/FeedAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$18;->c:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Lpl/jbzd/app/view/feed/FeedAdapter;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$18;->c:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->c(Lpl/jbzd/app/view/feed/FeedAdapter;)Lpl/jbzd/app/view/feed/FeedAdapter$b;

    move-result-object v1

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedAdapter$18;->b:Landroid/view/View;

    iget-object v3, p0, Lpl/jbzd/app/view/feed/FeedAdapter$18;->a:Lpl/jbzd/app/view/feed/holders/a;

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$18;->c:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->j(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lpl/jbzd/app/view/feed/FeedAdapter$18;->a:Lpl/jbzd/app/view/feed/holders/a;

    invoke-virtual {v4}, Lpl/jbzd/app/view/feed/holders/a;->getAdapterPosition()I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Media;

    iget-object v4, p0, Lpl/jbzd/app/view/feed/FeedAdapter$18;->a:Lpl/jbzd/app/view/feed/holders/a;

    invoke-virtual {v4}, Lpl/jbzd/app/view/feed/holders/a;->getAdapterPosition()I

    move-result v4

    invoke-interface {v1, v2, v3, v0, v4}, Lpl/jbzd/app/view/feed/FeedAdapter$b;->a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/a;Lpl/jbzd/app/model/Media;I)V

    goto :goto_0
.end method
