.class public Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;
.super Lpl/jbzd/core/ui/adapter/a$a;
.source "GalleryPicturesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpl/jbzd/core/ui/adapter/a$a",
        "<",
        "Lpl/jbzd/app/view/gallery/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lme/relex/photodraweeview/PhotoDraweeView;

.field final synthetic b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    .line 82
    invoke-direct {p0, p2}, Lpl/jbzd/core/ui/adapter/a$a;-><init>(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;Landroid/view/View;Lme/relex/photodraweeview/PhotoDraweeView;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    .line 85
    invoke-direct {p0, p2}, Lpl/jbzd/core/ui/adapter/a$a;-><init>(Landroid/view/View;)V

    .line 86
    iput-object p3, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;->a:Lme/relex/photodraweeview/PhotoDraweeView;

    .line 87
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 77
    check-cast p1, Lpl/jbzd/app/view/gallery/a;

    invoke-virtual {p0, p1, p2}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;->a(Lpl/jbzd/app/view/gallery/a;I)V

    return-void
.end method

.method public a(Lpl/jbzd/app/view/gallery/a;I)V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    .line 93
    iget-object v1, p1, Lpl/jbzd/app/view/gallery/a;->f:Lpl/jbzd/app/model/Picture;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Picture;->realmGet$image()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setUri(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 94
    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;->a:Lme/relex/photodraweeview/PhotoDraweeView;

    invoke-virtual {v1}, Lme/relex/photodraweeview/PhotoDraweeView;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 95
    new-instance v1, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b$1;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b$1;-><init>(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;)V

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 106
    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;->a:Lme/relex/photodraweeview/PhotoDraweeView;

    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v0

    invoke-virtual {v1, v0}, Lme/relex/photodraweeview/PhotoDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 107
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;->d:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->a(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;Landroid/view/View;Z)V

    .line 111
    return-void
.end method
