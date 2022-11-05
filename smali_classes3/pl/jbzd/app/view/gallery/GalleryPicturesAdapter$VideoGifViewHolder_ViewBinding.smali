.class public Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "GalleryPicturesAdapter$VideoGifViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder_ViewBinding;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    .line 24
    const v0, 0x7f1100c3

    const-string v1, "field \'image\'"

    const-class v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p1, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 25
    const v0, 0x7f110171

    const-string v1, "field \'progressView\'"

    const-class v2, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    iput-object v0, p1, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->progressView:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    .line 26
    const v0, 0x7f110169

    const-string v1, "field \'btnShow\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/b;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnShow:Landroid/view/View;

    .line 27
    const v0, 0x7f110179

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnPlay:Landroid/view/View;

    .line 28
    const v0, 0x7f110170

    const-string v1, "field \'ytVideoPlayerContainer\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->ytVideoPlayerContainer:Landroid/widget/FrameLayout;

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder_ViewBinding;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    .line 35
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder_ViewBinding;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    .line 38
    iput-object v1, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    iput-object v1, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->progressView:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    .line 40
    iput-object v1, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnShow:Landroid/view/View;

    .line 41
    iput-object v1, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnPlay:Landroid/view/View;

    .line 42
    iput-object v1, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->ytVideoPlayerContainer:Landroid/widget/FrameLayout;

    .line 43
    return-void
.end method
