.class public Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder;
.super Lpl/jbzd/core/ui/adapter/a$a;
.source "GalleryPicturesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpl/jbzd/core/ui/adapter/a$a",
        "<",
        "Lpl/jbzd/app/model/Picture;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

.field btnBack:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field btnClose:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field btnShare:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    .line 320
    invoke-direct {p0, p2}, Lpl/jbzd/core/ui/adapter/a$a;-><init>(Landroid/view/View;)V

    .line 321
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 314
    check-cast p1, Lpl/jbzd/app/model/Picture;

    invoke-virtual {p0, p1, p2}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder;->a(Lpl/jbzd/app/model/Picture;I)V

    return-void
.end method

.method public a(Lpl/jbzd/app/model/Picture;I)V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder;->btnShare:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder$1;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder$1;-><init>(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder;->btnBack:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder$2;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder$2;-><init>(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder;->btnClose:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder$3;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder$3;-><init>(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    return-void
.end method
