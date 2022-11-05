.class Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder$3;
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
    .line 339
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder$3;->a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder$3;->a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->d(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;)Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;->a(Landroid/view/View;)V

    .line 343
    return-void
.end method
