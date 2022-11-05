.class public Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;
.super Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;
.source "GalleryPicturesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoGifViewHolder"
.end annotation


# instance fields
.field btnPlay:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field btnShow:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field final synthetic c:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

.field image:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field progressView:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field ytVideoPlayerContainer:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->c:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    .line 124
    invoke-direct {p0, p1, p2}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;-><init>(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;Landroid/view/View;)V

    .line 125
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 114
    check-cast p1, Lpl/jbzd/app/view/gallery/a;

    invoke-virtual {p0, p1, p2}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->a(Lpl/jbzd/app/view/gallery/a;I)V

    return-void
.end method

.method public a(Lpl/jbzd/app/view/gallery/a;I)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 130
    iput-object p0, p1, Lpl/jbzd/app/view/gallery/a;->g:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    .line 131
    iput-boolean v8, p1, Lpl/jbzd/app/view/gallery/a;->e:Z

    .line 132
    iput-boolean v8, p1, Lpl/jbzd/app/view/gallery/a;->c:Z

    .line 134
    new-instance v6, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$1;

    invoke-direct {v6, p0, p1}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$1;-><init>(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;Lpl/jbzd/app/view/gallery/a;)V

    .line 159
    new-instance v1, Lpl/jbzd/app/model/Media;

    iget-object v0, p1, Lpl/jbzd/app/view/gallery/a;->f:Lpl/jbzd/app/model/Picture;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Picture;->realmGet$width()I

    move-result v0

    iget-object v2, p1, Lpl/jbzd/app/view/gallery/a;->f:Lpl/jbzd/app/model/Picture;

    invoke-virtual {v2}, Lpl/jbzd/app/model/Picture;->realmGet$height()I

    move-result v2

    invoke-direct {v1, v0, v2, v8}, Lpl/jbzd/app/model/Media;-><init>(IIZ)V

    .line 160
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v4, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->ytVideoPlayerContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->c:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    .line 161
    invoke-static {v5}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->a(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;)I

    move-result v5

    iget-object v7, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v7}, Lcom/facebook/drawee/view/SimpleDraweeView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lpl/jbzd/core/a/a;->b(Landroid/content/Context;)I

    move-result v7

    if-ge v5, v7, :cond_1

    iget-object v5, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->c:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    invoke-static {v5}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->a(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;)I

    move-result v5

    .line 160
    :goto_0
    invoke-static/range {v0 .. v5}, Lpl/jbzd/app/c/a;->a(Landroid/content/Context;Lpl/jbzd/app/model/Media;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/FrameLayout;I)[I

    .line 164
    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    iget-object v2, p1, Lpl/jbzd/app/view/gallery/a;->f:Lpl/jbzd/app/model/Picture;

    invoke-virtual {v2}, Lpl/jbzd/app/model/Picture;->realmGet$image()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setUri(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 166
    new-instance v1, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$2;

    invoke-direct {v1, p0, p1}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$2;-><init>(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;Lpl/jbzd/app/view/gallery/a;)V

    .line 210
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnPlay:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnPlay:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 214
    new-instance v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$3;

    invoke-direct {v0, p0, p1}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$3;-><init>(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;Lpl/jbzd/app/view/gallery/a;)V

    .line 235
    iget-object v2, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnPlay:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    :goto_1
    invoke-virtual {p1, v1, v0}, Lpl/jbzd/app/view/gallery/a;->a(Lpl/jbzd/b/b$a;Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v8}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnShow:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->c:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->b(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 273
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->c:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    invoke-static {v0, v8}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->a(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;Z)Z

    .line 275
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnPlay:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 276
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnPlay:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 282
    :goto_2
    invoke-virtual {p1}, Lpl/jbzd/app/view/gallery/a;->a()V

    .line 299
    :cond_0
    return-void

    .line 161
    :cond_1
    iget-object v5, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v5}, Lcom/facebook/drawee/view/SimpleDraweeView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lpl/jbzd/core/a/a;->b(Landroid/content/Context;)I

    move-result v5

    goto :goto_0

    .line 239
    :cond_2
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnShow:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 241
    new-instance v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$4;

    invoke-direct {v0, p0, p1}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$4;-><init>(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;Lpl/jbzd/app/view/gallery/a;)V

    .line 262
    iget-object v2, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnShow:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 279
    :cond_3
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnShow:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public a(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 302
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->c:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    iget-object v2, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->d:Landroid/view/View;

    invoke-static {v0, v2, p1}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->a(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;Landroid/view/View;Z)V

    .line 303
    if-eqz p1, :cond_1

    move v0, v1

    .line 305
    :goto_0
    iget-object v2, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->progressView:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    invoke-virtual {v2, v0}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->setVisibility(I)V

    .line 306
    iget-object v2, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnShow:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->ytVideoPlayerContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->ytVideoPlayerContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 311
    :cond_0
    return-void

    .line 303
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 309
    :cond_2
    const/4 v1, 0x4

    goto :goto_1
.end method
