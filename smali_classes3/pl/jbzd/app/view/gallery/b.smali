.class public Lpl/jbzd/app/view/gallery/b;
.super Ljava/lang/Object;
.source "GalleryPageTransformer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;


# instance fields
.field private a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lpl/jbzd/app/view/gallery/b;->b:I

    iput v0, p0, Lpl/jbzd/app/view/gallery/b;->c:I

    .line 17
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/b;->a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    .line 18
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lpl/jbzd/app/view/gallery/b;->c:I

    iput p1, p0, Lpl/jbzd/app/view/gallery/b;->b:I

    .line 23
    return-void
.end method

.method public final a(Landroid/view/View;F)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 36
    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    .line 37
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 73
    :goto_0
    return-void

    .line 40
    :cond_0
    cmpg-float v1, p2, v3

    if-gtz v1, :cond_4

    .line 42
    iget-object v1, p0, Lpl/jbzd/app/view/gallery/b;->a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    iget v2, p0, Lpl/jbzd/app/view/gallery/b;->b:I

    invoke-virtual {v1, v2}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->a(I)I

    move-result v1

    sget-object v2, Lpl/jbzd/app/view/gallery/GalleryViewType;->SHARE:Lpl/jbzd/app/view/gallery/GalleryViewType;

    iget v2, v2, Lpl/jbzd/app/view/gallery/GalleryViewType;->id:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/b;->a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    iget v2, p0, Lpl/jbzd/app/view/gallery/b;->c:I

    invoke-virtual {v1, v2}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->a(I)I

    move-result v1

    sget-object v2, Lpl/jbzd/app/view/gallery/GalleryViewType;->SHARE:Lpl/jbzd/app/view/gallery/GalleryViewType;

    iget v2, v2, Lpl/jbzd/app/view/gallery/GalleryViewType;->id:I

    if-ne v1, v2, :cond_3

    .line 44
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v6, v1

    .line 45
    float-to-double v2, v1

    const-wide v4, 0x3fbeb851eb851eb8L    # 0.12

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 47
    :cond_2
    int-to-float v0, v0

    neg-float v1, p2

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 49
    const/high16 v0, 0x3f400000    # 0.75f

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v6, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 56
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 57
    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleX(F)V

    .line 58
    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 62
    :cond_4
    cmpg-float v0, p2, v6

    if-gtz v0, :cond_5

    .line 64
    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 65
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 66
    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleX(F)V

    .line 67
    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 71
    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lpl/jbzd/app/view/gallery/b;->c:I

    .line 28
    return-void
.end method
