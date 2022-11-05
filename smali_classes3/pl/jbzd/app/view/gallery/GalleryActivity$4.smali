.class Lpl/jbzd/app/view/gallery/GalleryActivity$4;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/gallery/GalleryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/gallery/GalleryActivity;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/gallery/GalleryActivity;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$4;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$4;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryActivity;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->a(I)I

    .line 228
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$4;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryActivity;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->b(I)I

    .line 229
    invoke-static {}, Lpl/jbzd/app/view/gallery/GalleryActivity;->f()I

    move-result v0

    const/16 v1, 0x50

    invoke-static {v1}, Lpl/jbzd/core/a/a;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->c(I)I

    .line 231
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$4;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentView:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$4;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    iget-object v1, v1, Lpl/jbzd/app/view/gallery/GalleryActivity;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-static {}, Lpl/jbzd/app/view/gallery/GalleryActivity;->f()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 233
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$4;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->d(Lpl/jbzd/app/view/gallery/GalleryActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$4;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentView:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {}, Lpl/jbzd/app/view/gallery/GalleryActivity;->f()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/comment/CommentsView;->setTranslationY(F)V

    .line 236
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$4;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 244
    :goto_0
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$4;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryActivity;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 245
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$4;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentView:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {}, Lpl/jbzd/app/view/gallery/GalleryActivity;->g()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/comment/CommentsView;->setTranslationY(F)V

    .line 241
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$4;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method
