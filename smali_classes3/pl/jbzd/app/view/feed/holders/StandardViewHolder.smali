.class public Lpl/jbzd/app/view/feed/holders/StandardViewHolder;
.super Lpl/jbzd/core/ui/view/a;
.source "StandardViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lpl/jbzd/app/view/feed/a/a;",
        ">",
        "Lpl/jbzd/core/ui/view/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public btnExpand:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public btnFavorite:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public btnLike:Lpl/jbzd/core/ui/view/CenteredLikeButton;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public btnMore:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public btnShow:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public btnVoteUp:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public image:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public imageContainer:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public progressView:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public txtComments:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public txtTitle:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public ytVideoPlayerContainer:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lpl/jbzd/core/ui/view/a;-><init>(Landroid/view/View;)V

    .line 47
    return-void
.end method


# virtual methods
.method public a(Lpl/jbzd/app/view/feed/a/a;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const v7, 0x7f020072

    const/4 v6, 0x0

    .line 53
    iput-object p0, p1, Lpl/jbzd/app/view/feed/a/a;->c:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    .line 54
    iget-object v0, p1, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Media;

    move-object v1, v0

    check-cast v1, Lpl/jbzd/app/model/Media;

    .line 56
    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->imageContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v4, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->ytVideoPlayerContainer:Landroid/widget/FrameLayout;

    sget v5, Lpl/jbzd/app/view/feed/FeedAdapter;->a:I

    invoke-static/range {v0 .. v5}, Lpl/jbzd/app/c/a;->a(Landroid/content/Context;Lpl/jbzd/app/model/Media;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/FrameLayout;I)[I

    .line 58
    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$image()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$image()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnLike:Lpl/jbzd/core/ui/view/CenteredLikeButton;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$url()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/share/widget/LikeView$ObjectType;->OPEN_GRAPH:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v0, v2, v3}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->a(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 64
    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->txtTitle:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->txtComments:Lpl/jbzd/core/ui/view/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$comments_counter()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v2, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnVoteUp:Lpl/jbzd/core/ui/view/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$vote_score()I

    move-result v0

    if-gez v0, :cond_3

    move v0, v6

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$is_favorite()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnFavorite:Landroid/widget/ImageView;

    const v2, 0x7f020194

    iget-object v3, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnFavorite:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lpl/jbzd/core/a/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    :goto_1
    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$voted()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 77
    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnVoteUp:Lpl/jbzd/core/ui/view/TextView;

    const v2, 0x7f020075

    iget-object v3, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnVoteUp:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v3}, Lpl/jbzd/core/ui/view/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lpl/jbzd/core/a/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 89
    :goto_2
    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v6}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 93
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnShow:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnShow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnShow:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 97
    :cond_2
    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$height()I

    move-result v0

    sget v2, Lpl/jbzd/app/view/feed/FeedAdapter;->b:I

    if-le v0, v2, :cond_7

    iget-boolean v0, v1, Lpl/jbzd/app/model/Media;->isExpand:Z

    if-nez v0, :cond_7

    .line 99
    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->imageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lpl/jbzd/app/view/feed/FeedAdapter;->c:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 100
    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnExpand:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v0, v6}, Lpl/jbzd/core/ui/view/TextView;->setVisibility(I)V

    .line 106
    :goto_3
    return-void

    .line 66
    :cond_3
    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$vote_score()I

    move-result v0

    goto :goto_0

    .line 73
    :cond_4
    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnFavorite:Landroid/widget/ImageView;

    const v2, 0x7f020193

    iget-object v3, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnFavorite:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lpl/jbzd/core/a/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 80
    :cond_5
    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$voted()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_6

    .line 81
    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnVoteUp:Lpl/jbzd/core/ui/view/TextView;

    iget-object v2, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnVoteUp:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v2}, Lpl/jbzd/core/ui/view/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v7, v2}, Lpl/jbzd/core/a/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 85
    :cond_6
    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnVoteUp:Lpl/jbzd/core/ui/view/TextView;

    iget-object v2, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnVoteUp:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v2}, Lpl/jbzd/core/ui/view/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v7, v2}, Lpl/jbzd/core/a/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 103
    :cond_7
    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->imageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v1, Lpl/jbzd/app/model/Media;->maxHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 104
    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnExpand:Lpl/jbzd/core/ui/view/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setVisibility(I)V

    goto :goto_3
.end method
