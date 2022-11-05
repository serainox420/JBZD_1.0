.class public Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "GalleryAdapter$PicturesViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder_ViewBinding;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    .line 24
    const v0, 0x7f11017c

    const-string v1, "field \'imgToolbarIcon\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->imgToolbarIcon:Landroid/widget/ImageView;

    .line 25
    const v0, 0x7f11017d

    const-string v1, "field \'txtToolbarTitle\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    .line 26
    const v0, 0x7f110165

    const-string v1, "field \'txtComments\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->txtComments:Lpl/jbzd/core/ui/view/TextView;

    .line 27
    const v0, 0x7f11017e

    const-string v1, "field \'pageIndicator\'"

    const-class v2, Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    iput-object v0, p1, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->pageIndicator:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    .line 28
    const v0, 0x7f11017f

    const-string v1, "field \'viewPagerPictures\'"

    const-class v2, Lpl/jbzd/app/view/gallery/GalleryViewPager;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/gallery/GalleryViewPager;

    iput-object v0, p1, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->viewPagerPictures:Lpl/jbzd/app/view/gallery/GalleryViewPager;

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder_ViewBinding;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    .line 35
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder_ViewBinding;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    .line 38
    iput-object v1, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->imgToolbarIcon:Landroid/widget/ImageView;

    .line 39
    iput-object v1, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    .line 40
    iput-object v1, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->txtComments:Lpl/jbzd/core/ui/view/TextView;

    .line 41
    iput-object v1, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->pageIndicator:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    .line 42
    iput-object v1, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->viewPagerPictures:Lpl/jbzd/app/view/gallery/GalleryViewPager;

    .line 43
    return-void
.end method
