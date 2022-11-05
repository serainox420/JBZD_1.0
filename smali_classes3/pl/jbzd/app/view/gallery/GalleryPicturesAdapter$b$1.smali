.class Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b$1;
.super Lcom/facebook/drawee/controller/BaseControllerListener;
.source "GalleryPicturesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;->a(Lpl/jbzd/app/view/gallery/a;I)V
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
.field final synthetic a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b$1;->a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;

    invoke-direct {p0}, Lcom/facebook/drawee/controller/BaseControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V
    .locals 3

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/drawee/controller/BaseControllerListener;->onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V

    .line 99
    if-nez p2, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b$1;->a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;->a:Lme/relex/photodraweeview/PhotoDraweeView;

    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getWidth()I

    move-result v1

    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lme/relex/photodraweeview/PhotoDraweeView;->a(II)V

    goto :goto_0
.end method

.method public synthetic onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .prologue
    .line 95
    check-cast p2, Lcom/facebook/imagepipeline/image/ImageInfo;

    invoke-virtual {p0, p1, p2, p3}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b$1;->a(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method
