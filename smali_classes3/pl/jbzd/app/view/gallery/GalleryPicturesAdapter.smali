.class Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;
.super Lpl/jbzd/core/ui/adapter/a;
.source "GalleryPicturesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder;,
        Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;,
        Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;,
        Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpl/jbzd/core/ui/adapter/a",
        "<",
        "Lpl/jbzd/app/view/gallery/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/view/gallery/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;

.field private g:Z

.field private h:Lpl/jbzd/app/model/Media;


# direct methods
.method constructor <init>(Landroid/content/Context;Lpl/jbzd/app/model/Media;Ljava/util/List;Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lpl/jbzd/app/model/Media;",
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/view/gallery/a;",
            ">;",
            "Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 351
    invoke-direct {p0, p1, p3}, Lpl/jbzd/core/ui/adapter/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->g:Z

    .line 352
    iput-object p3, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->e:Ljava/util/List;

    .line 353
    iput-object p2, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->h:Lpl/jbzd/app/model/Media;

    .line 354
    iput-object p4, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->f:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;

    .line 355
    invoke-static {p1}, Lpl/jbzd/core/a/a;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->a:I

    .line 356
    return-void
.end method

.method static synthetic a(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->a:I

    return v0
.end method

.method private a(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 61
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 63
    check-cast p1, Landroid/view/ViewGroup;

    .line 65
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 68
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 70
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 71
    invoke-direct {p0, v1, p2}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->a(Landroid/view/View;Z)V

    .line 65
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method

.method static synthetic a(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->a(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->g:Z

    return p1
.end method

.method static synthetic b(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->g:Z

    return v0
.end method

.method static synthetic c(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;)Lpl/jbzd/app/model/Media;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->h:Lpl/jbzd/app/model/Media;

    return-object v0
.end method

.method static synthetic d(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;)Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->f:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 395
    if-lt p1, v0, :cond_0

    sget-object v0, Lpl/jbzd/app/view/gallery/GalleryViewType;->SHARE:Lpl/jbzd/app/view/gallery/GalleryViewType;

    iget v0, v0, Lpl/jbzd/app/view/gallery/GalleryViewType;->id:I

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lpl/jbzd/app/view/gallery/GalleryViewType;->PICTURE:Lpl/jbzd/app/view/gallery/GalleryViewType;

    iget v0, v0, Lpl/jbzd/app/view/gallery/GalleryViewType;->id:I

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;II)Lpl/jbzd/core/ui/adapter/a$a;
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 361
    sget-object v0, Lpl/jbzd/app/view/gallery/GalleryViewType;->SHARE:Lpl/jbzd/app/view/gallery/GalleryViewType;

    iget v0, v0, Lpl/jbzd/app/view/gallery/GalleryViewType;->id:I

    if-ne v0, p3, :cond_0

    .line 363
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040061

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 364
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 365
    new-instance v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder;

    invoke-direct {v0, p0, v1}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$ShareViewHolder;-><init>(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;Landroid/view/View;)V

    .line 388
    :goto_0
    return-object v0

    .line 368
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/gallery/a;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/a;->f:Lpl/jbzd/app/model/Picture;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Picture;->realmGet$mp4()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/gallery/a;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/a;->f:Lpl/jbzd/app/model/Picture;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Picture;->realmGet$mp4()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/gallery/a;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/a;->f:Lpl/jbzd/app/model/Picture;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Picture;->realmGet$mp4()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v4, v2

    .line 369
    :goto_1
    if-eqz v4, :cond_2

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/gallery/a;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/a;->f:Lpl/jbzd/app/model/Picture;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Picture;->realmGet$image()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    .line 370
    :goto_2
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/gallery/a;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/a;->f:Lpl/jbzd/app/model/Picture;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Picture;->realmGet$youtube()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/gallery/a;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/a;->f:Lpl/jbzd/app/model/Picture;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Picture;->realmGet$youtube()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 372
    :goto_3
    if-nez v1, :cond_4

    if-nez v4, :cond_4

    if-nez v2, :cond_4

    .line 374
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040060

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 375
    new-instance v2, Lme/relex/photodraweeview/PhotoDraweeView;

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->c:Landroid/content/Context;

    invoke-direct {v2, v0}, Lme/relex/photodraweeview/PhotoDraweeView;-><init>(Landroid/content/Context;)V

    .line 376
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Lme/relex/photodraweeview/PhotoDraweeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    .line 377
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 378
    new-instance v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;

    invoke-direct {v0, p0, v1, v2}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;-><init>(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;Landroid/view/View;Lme/relex/photodraweeview/PhotoDraweeView;)V

    goto/16 :goto_0

    :cond_1
    move v4, v3

    .line 368
    goto :goto_1

    :cond_2
    move v1, v3

    .line 369
    goto :goto_2

    :cond_3
    move v2, v3

    .line 370
    goto :goto_3

    .line 381
    :cond_4
    if-eqz v1, :cond_5

    .line 383
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005f

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 384
    new-instance v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    invoke-direct {v0, p0, v1}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;-><init>(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;Landroid/view/View;)V

    goto/16 :goto_0

    .line 387
    :cond_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040062

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 388
    new-instance v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    invoke-direct {v0, p0, v1}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;-><init>(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 401
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->h:Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$type()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gallery"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
