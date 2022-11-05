.class public Lpl/jbzd/app/view/feed/holders/StandardViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "StandardViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/view/feed/holders/StandardViewHolder;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder_ViewBinding;->b:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    .line 26
    const v0, 0x7f110165

    const-string v1, "field \'txtComments\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->txtComments:Lpl/jbzd/core/ui/view/TextView;

    .line 27
    const v0, 0x7f110166

    const-string v1, "field \'btnFavorite\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnFavorite:Landroid/widget/ImageView;

    .line 28
    const v0, 0x7f110167

    const-string v1, "field \'txtTitle\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->txtTitle:Lpl/jbzd/core/ui/view/TextView;

    .line 29
    const v0, 0x7f11016d

    const-string v1, "field \'btnVoteUp\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnVoteUp:Lpl/jbzd/core/ui/view/TextView;

    .line 30
    const v0, 0x7f11016c

    const-string v1, "field \'btnExpand\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnExpand:Lpl/jbzd/core/ui/view/TextView;

    .line 31
    const v0, 0x7f11016e

    const-string v1, "field \'btnMore\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnMore:Landroid/widget/ImageView;

    .line 32
    const v0, 0x7f11016f

    const-string v1, "field \'btnLike\'"

    const-class v2, Lpl/jbzd/core/ui/view/CenteredLikeButton;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/CenteredLikeButton;

    iput-object v0, p1, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnLike:Lpl/jbzd/core/ui/view/CenteredLikeButton;

    .line 33
    const v0, 0x7f1100c3

    const-string v1, "field \'image\'"

    const-class v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p1, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 34
    const v0, 0x7f110168

    const-string v1, "field \'imageContainer\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->imageContainer:Landroid/widget/FrameLayout;

    .line 35
    const v0, 0x7f110169

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnShow:Landroid/view/View;

    .line 36
    const v0, 0x7f110171

    const-string v1, "field \'progressView\'"

    const-class v2, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    iput-object v0, p1, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->progressView:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    .line 37
    const v0, 0x7f110170

    const-string v1, "field \'ytVideoPlayerContainer\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->ytVideoPlayerContainer:Landroid/widget/FrameLayout;

    .line 38
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder_ViewBinding;->b:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    .line 44
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object v1, p0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder_ViewBinding;->b:Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    .line 47
    iput-object v1, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->txtComments:Lpl/jbzd/core/ui/view/TextView;

    .line 48
    iput-object v1, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnFavorite:Landroid/widget/ImageView;

    .line 49
    iput-object v1, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->txtTitle:Lpl/jbzd/core/ui/view/TextView;

    .line 50
    iput-object v1, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnVoteUp:Lpl/jbzd/core/ui/view/TextView;

    .line 51
    iput-object v1, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnExpand:Lpl/jbzd/core/ui/view/TextView;

    .line 52
    iput-object v1, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnMore:Landroid/widget/ImageView;

    .line 53
    iput-object v1, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnLike:Lpl/jbzd/core/ui/view/CenteredLikeButton;

    .line 54
    iput-object v1, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 55
    iput-object v1, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->imageContainer:Landroid/widget/FrameLayout;

    .line 56
    iput-object v1, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnShow:Landroid/view/View;

    .line 57
    iput-object v1, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->progressView:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    .line 58
    iput-object v1, v0, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->ytVideoPlayerContainer:Landroid/widget/FrameLayout;

    .line 59
    return-void
.end method
