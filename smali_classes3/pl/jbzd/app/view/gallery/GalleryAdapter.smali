.class public Lpl/jbzd/app/view/gallery/GalleryAdapter;
.super Lpl/jbzd/core/ui/adapter/a;
.source "GalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/app/view/gallery/GalleryAdapter$a;,
        Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;
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
.field public final a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

.field private final e:Lpl/jbzd/app/view/gallery/b;

.field private final f:Lpl/jbzd/app/view/gallery/GalleryMainViewPager;

.field private final g:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;

.field private final h:Landroid/os/Bundle;

.field private final i:Lpl/jbzd/app/model/Media;

.field private final j:I

.field private k:Lpl/jbzd/app/view/gallery/a;

.field private l:Z

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpl/jbzd/app/view/gallery/GalleryMainViewPager;Lpl/jbzd/app/model/Media;FLjava/util/List;Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lpl/jbzd/app/view/gallery/GalleryMainViewPager;",
            "Lpl/jbzd/app/model/Media;",
            "F",
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/view/gallery/a;",
            ">;",
            "Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-direct {p0, p1, p5}, Lpl/jbzd/core/ui/adapter/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 39
    iput-boolean v2, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->l:Z

    .line 40
    iput v2, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->m:I

    .line 195
    iput-object p3, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->i:Lpl/jbzd/app/model/Media;

    .line 196
    iput-object p2, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->f:Lpl/jbzd/app/view/gallery/GalleryMainViewPager;

    .line 197
    iput-object p6, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->g:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;

    .line 198
    iput-object p7, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->h:Landroid/os/Bundle;

    .line 199
    new-instance v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    invoke-direct {v0, p1, p3, p5, p6}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;-><init>(Landroid/content/Context;Lpl/jbzd/app/model/Media;Ljava/util/List;Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;)V

    iput-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    .line 200
    new-instance v0, Lpl/jbzd/app/view/gallery/b;

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    invoke-direct {v0, v1}, Lpl/jbzd/app/view/gallery/b;-><init>(Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;)V

    iput-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->e:Lpl/jbzd/app/view/gallery/b;

    .line 201
    invoke-virtual {p3}, Lpl/jbzd/app/model/Media;->realmGet$type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->j:I

    .line 202
    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/gallery/a;

    iput-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->k:Lpl/jbzd/app/view/gallery/a;

    .line 203
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->k:Lpl/jbzd/app/view/gallery/a;

    iput p4, v0, Lpl/jbzd/app/view/gallery/a;->d:F

    .line 204
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lpl/jbzd/app/view/gallery/GalleryAdapter;I)I
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->m:I

    return p1
.end method

.method static synthetic a(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Lpl/jbzd/app/view/gallery/GalleryMainViewPager;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->f:Lpl/jbzd/app/view/gallery/GalleryMainViewPager;

    return-object v0
.end method

.method static synthetic a(Lpl/jbzd/app/view/gallery/GalleryAdapter;Lpl/jbzd/app/view/gallery/a;)Lpl/jbzd/app/view/gallery/a;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->k:Lpl/jbzd/app/view/gallery/a;

    return-object p1
.end method

.method static synthetic a(Lpl/jbzd/app/view/gallery/GalleryAdapter;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->l:Z

    return p1
.end method

.method static synthetic b(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Lpl/jbzd/app/model/Media;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->i:Lpl/jbzd/app/model/Media;

    return-object v0
.end method

.method static synthetic c(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Lpl/jbzd/app/view/gallery/b;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->e:Lpl/jbzd/app/view/gallery/b;

    return-object v0
.end method

.method static synthetic d(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->h:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic e(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Lpl/jbzd/app/view/gallery/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->k:Lpl/jbzd/app/view/gallery/a;

    return-object v0
.end method

.method static synthetic f(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lpl/jbzd/app/view/gallery/GalleryAdapter;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->m:I

    return v0
.end method

.method static synthetic l(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->g:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;

    return-object v0
.end method

.method static synthetic m(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->l:Z

    return v0
.end method

.method static synthetic n(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 0

    .prologue
    .line 244
    return p1
.end method

.method public a(Landroid/view/ViewGroup;II)Lpl/jbzd/core/ui/adapter/a$a;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 223
    if-nez p3, :cond_1

    .line 225
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->i:Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040063

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 227
    new-instance v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    invoke-direct {v0, p0, v1}, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;-><init>(Lpl/jbzd/app/view/gallery/GalleryAdapter;Landroid/view/View;)V

    .line 238
    :goto_0
    return-object v0

    .line 231
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040064

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 233
    new-instance v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    invoke-direct {v0, p0, v1}, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;-><init>(Lpl/jbzd/app/view/gallery/GalleryAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 237
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005e

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 238
    new-instance v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$a;

    invoke-direct {v0, p0, v1}, Lpl/jbzd/app/view/gallery/GalleryAdapter$a;-><init>(Lpl/jbzd/app/view/gallery/GalleryAdapter;Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->viewPagerPictures:Lpl/jbzd/app/view/gallery/GalleryViewPager;

    .line 212
    if-eqz v0, :cond_0

    .line 213
    const-string v1, "ARG_VIEWPAGER_POSITION"

    invoke-virtual {v0}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    :cond_0
    const-string v0, "ARG_SHOWN_PAGES"

    iget v1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->m:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->l:Z

    return v0
.end method

.method public a(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 260
    if-nez p1, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->viewPagerPictures:Lpl/jbzd/app/view/gallery/GalleryViewPager;

    .line 264
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->getCurrentItem()I

    move-result v3

    if-lez v3, :cond_0

    .line 265
    invoke-virtual {v0}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2, v1}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->setCurrentItem(IZ)V

    move v0, v1

    .line 270
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->a(Z)Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->j:I

    return v0
.end method
