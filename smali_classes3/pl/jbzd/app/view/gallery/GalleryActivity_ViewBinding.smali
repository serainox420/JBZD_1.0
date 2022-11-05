.class public Lpl/jbzd/app/view/gallery/GalleryActivity_ViewBinding;
.super Ljava/lang/Object;
.source "GalleryActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lpl/jbzd/app/view/gallery/GalleryActivity;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/view/gallery/GalleryActivity;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity_ViewBinding;->b:Lpl/jbzd/app/view/gallery/GalleryActivity;

    .line 27
    const v0, 0x7f110142

    const-string v1, "field \'layout\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lpl/jbzd/app/view/gallery/GalleryActivity;->layout:Landroid/widget/FrameLayout;

    .line 28
    const v0, 0x7f110178

    const-string v1, "field \'commentLayout\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentLayout:Landroid/widget/FrameLayout;

    .line 29
    const v0, 0x7f11012b

    const-string v1, "field \'commentView\'"

    const-class v2, Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/comment/CommentsView;

    iput-object v0, p1, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentView:Lpl/jbzd/app/ui/view/comment/CommentsView;

    .line 30
    const v0, 0x7f110177

    const-string v1, "field \'viewPager\'"

    const-class v2, Lpl/jbzd/app/view/gallery/GalleryMainViewPager;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/gallery/GalleryMainViewPager;

    iput-object v0, p1, Lpl/jbzd/app/view/gallery/GalleryActivity;->viewPager:Lpl/jbzd/app/view/gallery/GalleryMainViewPager;

    .line 31
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity_ViewBinding;->b:Lpl/jbzd/app/view/gallery/GalleryActivity;

    .line 37
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity_ViewBinding;->b:Lpl/jbzd/app/view/gallery/GalleryActivity;

    .line 40
    iput-object v1, v0, Lpl/jbzd/app/view/gallery/GalleryActivity;->layout:Landroid/widget/FrameLayout;

    .line 41
    iput-object v1, v0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentLayout:Landroid/widget/FrameLayout;

    .line 42
    iput-object v1, v0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentView:Lpl/jbzd/app/ui/view/comment/CommentsView;

    .line 43
    iput-object v1, v0, Lpl/jbzd/app/view/gallery/GalleryActivity;->viewPager:Lpl/jbzd/app/view/gallery/GalleryMainViewPager;

    .line 44
    return-void
.end method
