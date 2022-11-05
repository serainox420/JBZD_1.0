.class Lpl/jbzd/app/view/feed/FeedAdapter$5;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic b:Lpl/jbzd/b/b$a;

.field final synthetic c:Landroid/view/View$OnClickListener;

.field final synthetic d:Lpl/jbzd/app/view/feed/FeedAdapter;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/feed/FeedAdapter;Lpl/jbzd/app/view/feed/holders/d;Lpl/jbzd/b/b$a;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 728
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5;->d:Lpl/jbzd/app/view/feed/FeedAdapter;

    iput-object p2, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5;->a:Lpl/jbzd/app/view/feed/holders/d;

    iput-object p3, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5;->b:Lpl/jbzd/b/b$a;

    iput-object p4, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5;->c:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 732
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/core/a/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 733
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00c1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5;->d:Lpl/jbzd/app/view/feed/FeedAdapter;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5;->a:Lpl/jbzd/app/view/feed/holders/d;

    invoke-virtual {v1}, Lpl/jbzd/app/view/feed/holders/d;->getAdapterPosition()I

    move-result v1

    invoke-static {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Lpl/jbzd/app/view/feed/FeedAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5;->d:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Lpl/jbzd/app/view/feed/FeedAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5;->d:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->n(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5;->a:Lpl/jbzd/app/view/feed/holders/d;

    invoke-virtual {v1}, Lpl/jbzd/app/view/feed/holders/d;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/jbzd/app/view/feed/a/c;

    .line 740
    iget-object v0, v3, Lpl/jbzd/app/view/feed/a/c;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    move-object v6, v0

    check-cast v6, Lpl/jbzd/app/model/Media;

    .line 742
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5;->d:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->c(Lpl/jbzd/app/view/feed/FeedAdapter;)Lpl/jbzd/app/view/feed/FeedAdapter$b;

    move-result-object v0

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5;->a:Lpl/jbzd/app/view/feed/holders/d;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5;->d:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedAdapter;->o(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5;->a:Lpl/jbzd/app/view/feed/holders/d;

    invoke-virtual {v4}, Lpl/jbzd/app/view/feed/holders/d;->getAdapterPosition()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/jbzd/app/view/feed/a/a;

    iget-object v4, v1, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v4, Lpl/jbzd/app/model/Media;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5;->a:Lpl/jbzd/app/view/feed/holders/d;

    invoke-virtual {v1}, Lpl/jbzd/app/view/feed/holders/d;->getAdapterPosition()I

    move-result v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lpl/jbzd/app/view/feed/FeedAdapter$b;->a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/StandardViewHolder;Lpl/jbzd/app/view/feed/a/c;Lpl/jbzd/app/model/Media;I)V

    .line 744
    invoke-virtual {v6}, Lpl/jbzd/app/model/Media;->realmGet$youtube()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Lpl/jbzd/app/model/Media;->realmGet$youtube()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 746
    invoke-virtual {v6}, Lpl/jbzd/app/model/Media;->realmGet$youtube()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 747
    if-eq v0, v8, :cond_2

    .line 748
    invoke-virtual {v6}, Lpl/jbzd/app/model/Media;->realmGet$youtube()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lpl/jbzd/app/model/Media;->realmSet$youtube(Ljava/lang/String;)V

    .line 751
    :cond_2
    invoke-virtual {v6}, Lpl/jbzd/app/model/Media;->realmGet$youtube()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 752
    if-eq v0, v8, :cond_3

    .line 753
    invoke-virtual {v6}, Lpl/jbzd/app/model/Media;->realmGet$youtube()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lpl/jbzd/app/model/Media;->realmSet$youtube(Ljava/lang/String;)V

    .line 756
    :cond_3
    invoke-static {}, Lcom/commit451/youtubeextractor/e;->b()Lcom/commit451/youtubeextractor/e;

    move-result-object v0

    invoke-virtual {v6}, Lpl/jbzd/app/model/Media;->realmGet$youtube()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/commit451/youtubeextractor/e;->a(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lpl/jbzd/app/view/feed/FeedAdapter$5$1;

    invoke-direct {v1, p0, v6, v3}, Lpl/jbzd/app/view/feed/FeedAdapter$5$1;-><init>(Lpl/jbzd/app/view/feed/FeedAdapter$5;Lpl/jbzd/app/model/Media;Lpl/jbzd/app/view/feed/a/c;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto/16 :goto_0

    .line 803
    :cond_4
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5;->a:Lpl/jbzd/app/view/feed/holders/d;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/holders/d;->ytVideoPlayerContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5;->b:Lpl/jbzd/b/b$a;

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedAdapter$5;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0, v1, v2}, Lpl/jbzd/app/view/feed/a/c;->a(Landroid/view/ViewGroup;Lpl/jbzd/b/b$a;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method
