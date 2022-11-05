.class public Lpl/jbzd/app/view/gallery/a;
.super Ljava/lang/Object;
.source "GalleryItem.java"


# instance fields
.field public a:Z

.field public b:I

.field public c:Z

.field public d:F

.field public e:Z

.field public final f:Lpl/jbzd/app/model/Picture;

.field public g:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

.field private h:Lpl/jbzd/b/b$a;

.field private i:Landroid/view/View$OnClickListener;

.field private final j:Lpl/jbzd/app/view/feed/FeedAdapter$c;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/view/feed/FeedAdapter$c;Lpl/jbzd/app/model/Picture;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Lpl/jbzd/app/view/gallery/a;->c:Z

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lpl/jbzd/app/view/gallery/a;->d:F

    .line 27
    iput-boolean v1, p0, Lpl/jbzd/app/view/gallery/a;->e:Z

    .line 37
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/a;->j:Lpl/jbzd/app/view/feed/FeedAdapter$c;

    .line 38
    iput-object p2, p0, Lpl/jbzd/app/view/gallery/a;->f:Lpl/jbzd/app/model/Picture;

    .line 39
    iput p3, p0, Lpl/jbzd/app/view/gallery/a;->b:I

    .line 40
    iput-boolean v1, p0, Lpl/jbzd/app/view/gallery/a;->a:Z

    .line 41
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-boolean v0, p0, Lpl/jbzd/app/view/gallery/a;->a:Z

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/jbzd/app/view/gallery/a;->a:Z

    .line 85
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/a;->g:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/a;->g:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/a;->g:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnShow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/a;->g:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->progressView:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    invoke-virtual {v0, v1}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/a;->g:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->ytVideoPlayerContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/a;->h:Lpl/jbzd/b/b$a;

    iget-object v2, p0, Lpl/jbzd/app/view/gallery/a;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1, v2}, Lpl/jbzd/app/view/gallery/a;->a(Landroid/view/ViewGroup;Lpl/jbzd/b/b$a;Landroid/view/View$OnClickListener;)V

    .line 120
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 76
    invoke-static {p1}, Lpl/jbzd/app/MyApplication;->a(Landroid/content/Context;)Lpl/jbzd/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/b/b;->a()V

    .line 77
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Lpl/jbzd/b/b$a;Landroid/view/View$OnClickListener;)V
    .locals 3

    .prologue
    .line 52
    if-eqz p1, :cond_2

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/a;->f:Lpl/jbzd/app/model/Picture;

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/a;->f:Lpl/jbzd/app/model/Picture;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Picture;->realmGet$mp4()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/a;->f:Lpl/jbzd/app/model/Picture;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Picture;->realmGet$mp4()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/app/MyApplication;->a(Landroid/content/Context;)Lpl/jbzd/b/b;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lpl/jbzd/b/b;->a(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/app/MyApplication;->a(Landroid/content/Context;)Lpl/jbzd/b/b;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/a;->f:Lpl/jbzd/app/model/Picture;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Picture;->realmGet$mp4()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lpl/jbzd/b/b;->a(Landroid/net/Uri;Landroid/view/ViewGroup;Lpl/jbzd/b/b$a;)V

    .line 72
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/a;->f:Lpl/jbzd/app/model/Picture;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Picture;->realmGet$youtube()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/a;->f:Lpl/jbzd/app/model/Picture;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Picture;->realmGet$youtube()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/app/MyApplication;->a(Landroid/content/Context;)Lpl/jbzd/b/b;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lpl/jbzd/b/b;->a(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/app/MyApplication;->a(Landroid/content/Context;)Lpl/jbzd/b/b;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/a;->f:Lpl/jbzd/app/model/Picture;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Picture;->realmGet$youtube()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lpl/jbzd/b/b;->a(Ljava/lang/String;Landroid/view/ViewGroup;Lpl/jbzd/b/b$a;)V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/a;->b()V

    .line 66
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/a;->j:Lpl/jbzd/app/view/feed/FeedAdapter$c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00c5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter$c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/a;->b()V

    goto :goto_0
.end method

.method public a(Lpl/jbzd/b/b$a;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/a;->h:Lpl/jbzd/b/b$a;

    .line 46
    iput-object p2, p0, Lpl/jbzd/app/view/gallery/a;->i:Landroid/view/View$OnClickListener;

    .line 47
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 124
    iput-boolean v1, p0, Lpl/jbzd/app/view/gallery/a;->a:Z

    .line 126
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/a;->g:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/a;->g:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/a;->g:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnPlay:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 132
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/a;->g:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnPlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/a;->g:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnShow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/a;->g:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnShow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :cond_0
    :goto_0
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/a;->g:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->progressView:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/a;->g:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->progressView:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    invoke-virtual {v0, v2}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->setVisibility(I)V

    .line 146
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/a;->g:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/gallery/a;->a(Landroid/content/Context;)V

    .line 147
    iput-boolean v1, p0, Lpl/jbzd/app/view/gallery/a;->e:Z

    .line 148
    iput-boolean v1, p0, Lpl/jbzd/app/view/gallery/a;->c:Z

    .line 150
    :cond_2
    return-void

    .line 138
    :cond_3
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/a;->g:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnShow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/a;->g:Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$VideoGifViewHolder;->btnShow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
