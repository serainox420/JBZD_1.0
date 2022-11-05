.class public Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;
.super Lpl/jbzd/core/ui/adapter/a$a;
.source "GalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/app/view/gallery/GalleryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PicturesViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpl/jbzd/core/ui/adapter/a$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

.field imgToolbarIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field pageIndicator:Lpl/jbzd/core/ui/indicator/LinePageIndicator;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field txtComments:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field viewPagerPictures:Lpl/jbzd/app/view/gallery/GalleryViewPager;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpl/jbzd/app/view/gallery/GalleryAdapter;Landroid/view/View;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 52
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    .line 53
    invoke-direct {p0, p2}, Lpl/jbzd/core/ui/adapter/a$a;-><init>(Landroid/view/View;)V

    .line 55
    invoke-static {p1}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->a(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Lpl/jbzd/app/view/gallery/GalleryMainViewPager;

    move-result-object v0

    iget-object v2, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->viewPagerPictures:Lpl/jbzd/app/view/gallery/GalleryViewPager;

    invoke-virtual {v0, v2}, Lpl/jbzd/app/view/gallery/GalleryMainViewPager;->setInnerViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 57
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v0, v4}, Lpl/jbzd/core/ui/view/TextView;->setAllCaps(Z)V

    .line 58
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    sget-object v2, Lpl/jbzd/core/ui/view/TextView$Font;->BitterBold:Lpl/jbzd/core/ui/view/TextView$Font;

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/TextView;->setFont(Lpl/jbzd/core/ui/view/TextView$Font;)V

    .line 59
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p1}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->b(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Lpl/jbzd/app/model/Media;

    move-result-object v2

    invoke-virtual {v2}, Lpl/jbzd/app/model/Media;->realmGet$title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->txtComments:Lpl/jbzd/core/ui/view/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->b(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Lpl/jbzd/app/model/Media;

    move-result-object v3

    invoke-virtual {v3}, Lpl/jbzd/app/model/Media;->realmGet$comments_counter()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->viewPagerPictures:Lpl/jbzd/app/view/gallery/GalleryViewPager;

    invoke-virtual {v0, v4}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->setOffscreenPageLimit(I)V

    .line 63
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->viewPagerPictures:Lpl/jbzd/app/view/gallery/GalleryViewPager;

    iget-object v2, p1, Lpl/jbzd/app/view/gallery/GalleryAdapter;->a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    invoke-virtual {v0, v2}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->setAdapter(Landroid/support/v4/view/aa;)V

    .line 64
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->viewPagerPictures:Lpl/jbzd/app/view/gallery/GalleryViewPager;

    invoke-static {p1}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->c(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Lpl/jbzd/app/view/gallery/b;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$f;)V

    .line 66
    iget-object v0, p1, Lpl/jbzd/app/view/gallery/GalleryAdapter;->a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    invoke-virtual {v0}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->getCount()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 67
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->pageIndicator:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    iget-object v2, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->viewPagerPictures:Lpl/jbzd/app/view/gallery/GalleryViewPager;

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 73
    :goto_0
    invoke-static {p1}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->d(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->d(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "ARG_SHOWN_PAGES"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    invoke-static {p1, v0}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->a(Lpl/jbzd/app/view/gallery/GalleryAdapter;I)I

    .line 75
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->viewPagerPictures:Lpl/jbzd/app/view/gallery/GalleryViewPager;

    new-instance v2, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;

    invoke-direct {v2, p0, p1}, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;-><init>(Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;Lpl/jbzd/app/view/gallery/GalleryAdapter;)V

    invoke-virtual {v0, v2}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V

    .line 159
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->viewPagerPictures:Lpl/jbzd/app/view/gallery/GalleryViewPager;

    invoke-static {p1}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->d(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->d(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ARG_VIEWPAGER_POSITION"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->setCurrentItem(I)V

    .line 161
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->imgToolbarIcon:Landroid/widget/ImageView;

    new-instance v1, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$2;

    invoke-direct {v1, p0, p1}, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$2;-><init>(Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;Lpl/jbzd/app/view/gallery/GalleryAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->txtComments:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$3;

    invoke-direct {v1, p0, p1}, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$3;-><init>(Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;Lpl/jbzd/app/view/gallery/GalleryAdapter;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->pageIndicator:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 73
    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 178
    return-void
.end method
