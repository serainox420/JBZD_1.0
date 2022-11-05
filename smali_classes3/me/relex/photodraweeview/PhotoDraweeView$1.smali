.class Lme/relex/photodraweeview/PhotoDraweeView$1;
.super Lcom/facebook/drawee/controller/BaseControllerListener;
.source "PhotoDraweeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/relex/photodraweeview/PhotoDraweeView;->a(Landroid/net/Uri;Landroid/content/Context;)V
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
.field final synthetic a:Lme/relex/photodraweeview/PhotoDraweeView;


# direct methods
.method constructor <init>(Lme/relex/photodraweeview/PhotoDraweeView;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lme/relex/photodraweeview/PhotoDraweeView$1;->a:Lme/relex/photodraweeview/PhotoDraweeView;

    invoke-direct {p0}, Lcom/facebook/drawee/controller/BaseControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;)V
    .locals 3

    .prologue
    .line 202
    invoke-super {p0, p1, p2}, Lcom/facebook/drawee/controller/BaseControllerListener;->onIntermediateImageSet(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView$1;->a:Lme/relex/photodraweeview/PhotoDraweeView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lme/relex/photodraweeview/PhotoDraweeView;->a(Lme/relex/photodraweeview/PhotoDraweeView;Z)Z

    .line 204
    if-eqz p2, :cond_0

    .line 205
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView$1;->a:Lme/relex/photodraweeview/PhotoDraweeView;

    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getWidth()I

    move-result v1

    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lme/relex/photodraweeview/PhotoDraweeView;->a(II)V

    .line 207
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V
    .locals 3

    .prologue
    .line 188
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/drawee/controller/BaseControllerListener;->onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V

    .line 189
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView$1;->a:Lme/relex/photodraweeview/PhotoDraweeView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lme/relex/photodraweeview/PhotoDraweeView;->a(Lme/relex/photodraweeview/PhotoDraweeView;Z)Z

    .line 190
    if-eqz p2, :cond_0

    .line 191
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView$1;->a:Lme/relex/photodraweeview/PhotoDraweeView;

    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getWidth()I

    move-result v1

    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lme/relex/photodraweeview/PhotoDraweeView;->a(II)V

    .line 193
    :cond_0
    return-void
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0, p1, p2}, Lcom/facebook/drawee/controller/BaseControllerListener;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView$1;->a:Lme/relex/photodraweeview/PhotoDraweeView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/relex/photodraweeview/PhotoDraweeView;->a(Lme/relex/photodraweeview/PhotoDraweeView;Z)Z

    .line 184
    return-void
.end method

.method public synthetic onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .prologue
    .line 180
    check-cast p2, Lcom/facebook/imagepipeline/image/ImageInfo;

    invoke-virtual {p0, p1, p2, p3}, Lme/relex/photodraweeview/PhotoDraweeView$1;->a(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method

.method public onIntermediateImageFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 197
    invoke-super {p0, p1, p2}, Lcom/facebook/drawee/controller/BaseControllerListener;->onIntermediateImageFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView$1;->a:Lme/relex/photodraweeview/PhotoDraweeView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/relex/photodraweeview/PhotoDraweeView;->a(Lme/relex/photodraweeview/PhotoDraweeView;Z)Z

    .line 199
    return-void
.end method

.method public synthetic onIntermediateImageSet(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 180
    check-cast p2, Lcom/facebook/imagepipeline/image/ImageInfo;

    invoke-virtual {p0, p1, p2}, Lme/relex/photodraweeview/PhotoDraweeView$1;->a(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;)V

    return-void
.end method
