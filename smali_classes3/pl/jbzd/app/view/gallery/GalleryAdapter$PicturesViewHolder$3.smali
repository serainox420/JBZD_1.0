.class Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$3;
.super Ljava/lang/Object;
.source "GalleryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;-><init>(Lpl/jbzd/app/view/gallery/GalleryAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

.field final synthetic b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;Lpl/jbzd/app/view/gallery/GalleryAdapter;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$3;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iput-object p2, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$3;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$3;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->l(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$3;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v1, v1, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-static {v1}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->b(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Lpl/jbzd/app/model/Media;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;->a(Landroid/view/View;Lpl/jbzd/app/model/Media;)V

    .line 172
    return-void
.end method
