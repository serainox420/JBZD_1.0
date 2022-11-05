.class Lpl/jbzd/app/view/feed/FeedAdapter$11;
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
    .line 462
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$11;->b:Lpl/jbzd/app/view/feed/FeedAdapter;

    iput-object p2, p0, Lpl/jbzd/app/view/feed/FeedAdapter$11;->a:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 466
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/core/a/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00c1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$11;->b:Lpl/jbzd/app/view/feed/FeedAdapter;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$11;->a:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    invoke-virtual {v1}, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Lpl/jbzd/app/view/feed/FeedAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$11;->b:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Lpl/jbzd/app/view/feed/FeedAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$11;->b:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->d(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$11;->a:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    invoke-virtual {v1}, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Media;

    .line 474
    if-eqz v0, :cond_0

    .line 476
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 478
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v1

    const-class v3, Lpl/jbzd/app/model/Media;

    invoke-virtual {v1, v3}, Lio/realm/l;->a(Ljava/lang/Class;)Lio/realm/v;

    move-result-object v1

    const-string v3, "id"

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$id()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lio/realm/v;->a(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/v;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/v;->c()Lio/realm/t;

    move-result-object v1

    check-cast v1, Lpl/jbzd/app/model/Media;

    .line 480
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/l;->b()V

    .line 481
    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$is_favorite()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v0, v2}, Lpl/jbzd/app/model/Media;->realmSet$is_favorite(Z)V

    .line 482
    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$is_favorite()Z

    move-result v2

    invoke-virtual {v1, v2}, Lpl/jbzd/app/model/Media;->setIs_favorite(Z)V

    .line 483
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/l;->c()V

    .line 485
    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$is_favorite()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 486
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$11;->a:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v1, v1, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnFavorite:Landroid/widget/ImageView;

    const v2, 0x7f020194

    iget-object v3, p0, Lpl/jbzd/app/view/feed/FeedAdapter$11;->a:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v3, v3, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnFavorite:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lpl/jbzd/core/a/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 492
    :goto_1
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$11;->b:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedAdapter;->c(Lpl/jbzd/app/view/feed/FeedAdapter;)Lpl/jbzd/app/view/feed/FeedAdapter$b;

    move-result-object v1

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedAdapter$11;->a:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    invoke-virtual {v2}, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, p1, v0, v2}, Lpl/jbzd/app/view/feed/FeedAdapter$b;->b(Landroid/view/View;Lpl/jbzd/app/model/Media;I)V

    goto/16 :goto_0

    .line 489
    :cond_3
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$11;->a:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v1, v1, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnFavorite:Landroid/widget/ImageView;

    const v2, 0x7f020193

    iget-object v3, p0, Lpl/jbzd/app/view/feed/FeedAdapter$11;->a:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    iget-object v3, v3, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnFavorite:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lpl/jbzd/core/a/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 495
    :cond_4
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$11;->b:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedAdapter;->c(Lpl/jbzd/app/view/feed/FeedAdapter;)Lpl/jbzd/app/view/feed/FeedAdapter$b;

    move-result-object v1

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedAdapter$11;->a:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    invoke-virtual {v2}, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, p1, v0, v2}, Lpl/jbzd/app/view/feed/FeedAdapter$b;->b(Landroid/view/View;Lpl/jbzd/app/model/Media;I)V

    goto/16 :goto_0
.end method
