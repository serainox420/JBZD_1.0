.class Lpl/jbzd/app/view/gallery/GalleryActivity$3;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/gallery/GalleryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field b:I

.field final synthetic c:Lpl/jbzd/app/view/gallery/GalleryActivity;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/gallery/GalleryActivity;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$3;->c:Lpl/jbzd/app/view/gallery/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 214
    iput p1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$3;->b:I

    .line 215
    iget v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$3;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 216
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$3;->c:Lpl/jbzd/app/view/gallery/GalleryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpl/jbzd/app/view/gallery/GalleryActivity;->a(Lpl/jbzd/app/view/gallery/GalleryActivity;Z)V

    .line 218
    :cond_0
    return-void
.end method

.method public a(IFI)V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 206
    iput p1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$3;->a:I

    .line 207
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$3;->b:I

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$3;->c:Lpl/jbzd/app/view/gallery/GalleryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpl/jbzd/app/view/gallery/GalleryActivity;->a(Lpl/jbzd/app/view/gallery/GalleryActivity;Z)V

    .line 210
    :cond_0
    return-void
.end method
