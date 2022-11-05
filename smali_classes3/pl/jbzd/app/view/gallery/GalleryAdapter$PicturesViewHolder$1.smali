.class Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;
.super Ljava/lang/Object;
.source "GalleryAdapter.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$e;


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

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;Lpl/jbzd/app/view/gallery/GalleryAdapter;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iput-object p2, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->c:I

    .line 78
    iput v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->d:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    if-eqz p1, :cond_2

    .line 136
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->m(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v1, v1, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->viewPagerPictures:Lpl/jbzd/app/view/gallery/GalleryViewPager;

    invoke-virtual {v1}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->b(I)Lpl/jbzd/core/ui/adapter/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v1, v1, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->viewPagerPictures:Lpl/jbzd/app/view/gallery/GalleryViewPager;

    invoke-virtual {v1}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->b(I)Lpl/jbzd/core/ui/adapter/a$a;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;

    invoke-virtual {v0, v3}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;->a(Z)V

    .line 142
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->viewPagerPictures:Lpl/jbzd/app/view/gallery/GalleryViewPager;

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v1, v1, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-static {v1, v2}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->a(Lpl/jbzd/app/view/gallery/GalleryAdapter;Z)Z

    move-result v1

    iput-boolean v1, v0, Lpl/jbzd/app/view/gallery/GalleryViewPager;->a:Z

    .line 156
    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->viewPagerPictures:Lpl/jbzd/app/view/gallery/GalleryViewPager;

    invoke-virtual {v0}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v1, v1, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-static {v1}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->n(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 147
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->m(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v1, v1, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->viewPagerPictures:Lpl/jbzd/app/view/gallery/GalleryViewPager;

    invoke-virtual {v1}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->b(I)Lpl/jbzd/core/ui/adapter/a$a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->a:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v1, v1, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->viewPagerPictures:Lpl/jbzd/app/view/gallery/GalleryViewPager;

    invoke-virtual {v1}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter;->b(I)Lpl/jbzd/core/ui/adapter/a$a;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;

    invoke-virtual {v0, v2}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$b;->a(Z)V

    .line 153
    :cond_3
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->viewPagerPictures:Lpl/jbzd/app/view/gallery/GalleryViewPager;

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v1, v1, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-static {v1, v3}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->a(Lpl/jbzd/app/view/gallery/GalleryAdapter;Z)Z

    move-result v1

    iput-boolean v1, v0, Lpl/jbzd/app/view/gallery/GalleryViewPager;->a:Z

    goto :goto_0
.end method

.method public a(IFI)V
    .locals 2

    .prologue
    .line 83
    iget v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->c:I

    .line 85
    iget v1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->d:I

    if-ne p1, v1, :cond_2

    .line 87
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    .line 88
    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->c:I

    .line 98
    :goto_0
    iget v1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->c:I

    if-eq v1, v0, :cond_0

    .line 99
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->c(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Lpl/jbzd/app/view/gallery/b;

    move-result-object v0

    iget v1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->c:I

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/gallery/b;->b(I)V

    .line 101
    :cond_0
    return-void

    .line 91
    :cond_1
    iput p1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->c:I

    goto :goto_0

    .line 95
    :cond_2
    iput p1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->c:I

    goto :goto_0
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->e(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Lpl/jbzd/app/view/gallery/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->e(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Lpl/jbzd/app/view/gallery/a;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/view/gallery/a;->b()V

    .line 108
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->a(Lpl/jbzd/app/view/gallery/GalleryAdapter;Lpl/jbzd/app/view/gallery/a;)Lpl/jbzd/app/view/gallery/a;

    .line 111
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->f(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->g(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->h(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/gallery/a;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/a;->g:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->i(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/gallery/a;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/a;->g:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    instance-of v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v1, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->j(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/gallery/a;

    invoke-static {v1, v0}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->a(Lpl/jbzd/app/view/gallery/GalleryAdapter;Lpl/jbzd/app/view/gallery/a;)Lpl/jbzd/app/view/gallery/a;

    .line 114
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->e(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Lpl/jbzd/app/view/gallery/a;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/view/gallery/a;->a()V

    .line 117
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->c(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Lpl/jbzd/app/view/gallery/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpl/jbzd/app/view/gallery/b;->a(I)V

    .line 118
    iput p1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->d:I

    .line 119
    iput p1, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->c:I

    .line 121
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->k(Lpl/jbzd/app/view/gallery/GalleryAdapter;)I

    move-result v0

    if-ge v0, p1, :cond_2

    .line 123
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-static {v0, p1}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->a(Lpl/jbzd/app/view/gallery/GalleryAdapter;I)I

    .line 125
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->l(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder$1;->b:Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->a:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->l(Lpl/jbzd/app/view/gallery/GalleryAdapter;)Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;->a(I)V

    .line 129
    :cond_2
    return-void
.end method
