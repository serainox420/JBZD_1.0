.class Lpl/jbzd/app/view/gallery/GalleryActivity$6;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/gallery/GalleryActivity;->i()V
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
    .line 494
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$6;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$6;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$6;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpl/jbzd/app/view/gallery/GalleryActivity;->b(Lpl/jbzd/app/view/gallery/GalleryActivity;Z)Z

    .line 499
    return-void
.end method
