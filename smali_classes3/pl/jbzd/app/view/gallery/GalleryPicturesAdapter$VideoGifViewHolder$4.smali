.class Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$4;
.super Ljava/lang/Object;
.source "GalleryPicturesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 241
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$4;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iput-object p2, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$4;->a:Lpl/jbzd/app/view/gallery/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$4;->a:Lpl/jbzd/app/view/gallery/a;

    iget-boolean v0, v0, Lpl/jbzd/app/view/gallery/a;->e:Z

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/app/MyApplication;->a(Landroid/content/Context;)Lpl/jbzd/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/b/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/app/MyApplication;->a(Landroid/content/Context;)Lpl/jbzd/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/b/b;->d()V

    .line 249
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$4;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnShow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/app/MyApplication;->a(Landroid/content/Context;)Lpl/jbzd/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/b/b;->d()V

    .line 253
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$4;->b:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnShow:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 257
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder$4;->a:Lpl/jbzd/app/view/gallery/a;

    invoke-virtual {v0}, Lpl/jbzd/app/view/gallery/a;->a()V

    goto :goto_0
.end method
