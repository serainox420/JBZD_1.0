.class Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder$1;
.super Ljava/lang/Object;
.source "GalleryPicturesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder;->a(Lpl/jbzd/app/model/Picture;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder$1;->a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder$1;->a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->d(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;)Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder$1;->a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder;

    iget-object v1, v1, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    invoke-static {v1}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->c(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;)Lpl/jbzd/app/model/Media;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;->b(Landroid/view/View;Lpl/jbzd/app/model/Media;)V

    .line 329
    return-void
.end method
