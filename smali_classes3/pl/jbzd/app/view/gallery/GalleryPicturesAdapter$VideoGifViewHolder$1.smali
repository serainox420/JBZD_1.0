.class Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$1;
.super Lcom/facebook/drawee/controller/BaseControllerListener;
.source "GalleryPicturesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->a(Lpl/jbzd/app/view/gallery/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/BaseControllerListener",
        "<",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/gallery/a;

.field final synthetic b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;Lpl/jbzd/app/view/gallery/a;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iput-object p2, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$1;->a:Lpl/jbzd/app/view/gallery/a;

    invoke-direct {p0}, Lcom/facebook/drawee/controller/BaseControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V
    .locals 7

    .prologue
    .line 138
    if-nez p2, :cond_0

    .line 148
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$1;->a:Lpl/jbzd/app/view/gallery/a;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/a;->f:Lpl/jbzd/app/model/Picture;

    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/model/Picture;->realmSet$width(I)V

    .line 143
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$1;->a:Lpl/jbzd/app/view/gallery/a;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/a;->f:Lpl/jbzd/app/model/Picture;

    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/model/Picture;->realmSet$height(I)V

    .line 145
    new-instance v1, Lpl/jbzd/app/model/Media;

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$1;->a:Lpl/jbzd/app/view/gallery/a;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/a;->f:Lpl/jbzd/app/model/Picture;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Picture;->realmGet$width()I

    move-result v0

    iget-object v2, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$1;->a:Lpl/jbzd/app/view/gallery/a;

    iget-object v2, v2, Lpl/jbzd/app/view/gallery/a;->f:Lpl/jbzd/app/model/Picture;

    invoke-virtual {v2}, Lpl/jbzd/app/model/Picture;->realmGet$height()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lpl/jbzd/app/model/Media;-><init>(IIZ)V

    .line 146
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v2, v2, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v3, v3, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v4, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v4, v4, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->ytVideoPlayerContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v5, v5, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->c:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    .line 147
    invoke-static {v5}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->a(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;)I

    move-result v5

    iget-object v6, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v6, v6, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v6}, Lcom/facebook/drawee/view/SimpleDraweeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lpl/jbzd/core/a/a;->b(Landroid/content/Context;)I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v5, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v5, v5, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->c:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    invoke-static {v5}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->a(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;)I

    move-result v5

    .line 146
    :goto_1
    invoke-static/range {v0 .. v5}, Lpl/jbzd/app/c/a;->a(Landroid/content/Context;Lpl/jbzd/app/model/Media;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/FrameLayout;I)[I

    goto :goto_0

    .line 147
    :cond_1
    iget-object v5, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v5, v5, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v5}, Lcom/facebook/drawee/view/SimpleDraweeView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lpl/jbzd/core/a/a;->b(Landroid/content/Context;)I

    move-result v5

    goto :goto_1
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public synthetic onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .prologue
    .line 134
    check-cast p2, Lcom/facebook/imagepipeline/image/ImageInfo;

    invoke-virtual {p0, p1, p2, p3}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$1;->a(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method

.method public synthetic onIntermediateImageSet(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 134
    check-cast p2, Lcom/facebook/imagepipeline/image/ImageInfo;

    invoke-virtual {p0, p1, p2}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$1;->a(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;)V

    return-void
.end method
