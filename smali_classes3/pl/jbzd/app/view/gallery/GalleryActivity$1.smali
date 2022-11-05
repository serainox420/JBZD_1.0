.class Lpl/jbzd/app/view/gallery/GalleryActivity$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lpl/jbzd/app/view/feed/FeedAdapter$c;


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
    .line 98
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$1;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$1;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 102
    return-void
.end method
