.class Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$2;
.super Ljava/lang/Object;
.source "GalleryPicturesAdapter.java"

# interfaces
.implements Lpl/jbzd/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->a(Lpl/jbzd/app/view/gallery/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/gallery/a;

.field final synthetic b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;Lpl/jbzd/app/view/gallery/a;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$2;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iput-object p2, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$2;->a:Lpl/jbzd/app/view/gallery/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/16 v2, 0x8

    .line 170
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$2;->a:Lpl/jbzd/app/view/gallery/a;

    iput-boolean v1, v0, Lpl/jbzd/app/view/gallery/a;->e:Z

    .line 171
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$2;->a:Lpl/jbzd/app/view/gallery/a;

    iput-boolean v1, v0, Lpl/jbzd/app/view/gallery/a;->c:Z

    .line 173
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$2;->a:Lpl/jbzd/app/view/gallery/a;

    iget v0, v0, Lpl/jbzd/app/view/gallery/a;->d:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 174
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$2;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/app/MyApplication;->a(Landroid/content/Context;)Lpl/jbzd/b/b;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$2;->a:Lpl/jbzd/app/view/gallery/a;

    iget v1, v1, Lpl/jbzd/app/view/gallery/a;->d:F

    invoke-virtual {v0, v1}, Lpl/jbzd/b/b;->a(F)V

    .line 175
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$2;->a:Lpl/jbzd/app/view/gallery/a;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lpl/jbzd/app/view/gallery/a;->d:F

    .line 178
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$2;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->ytVideoPlayerContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$2;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->ytVideoPlayerContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 182
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$2;->a:Lpl/jbzd/app/view/gallery/a;

    iget-boolean v0, v0, Lpl/jbzd/app/view/gallery/a;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$2;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$2;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$2;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnShow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$2;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->progressView:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    invoke-virtual {v0, v2}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->setVisibility(I)V

    .line 188
    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 205
    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$2;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$2;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnShow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$2;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->progressView:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$2;->a:Lpl/jbzd/app/view/gallery/a;

    iput-boolean v2, v0, Lpl/jbzd/app/view/gallery/a;->e:Z

    .line 197
    return-void
.end method
