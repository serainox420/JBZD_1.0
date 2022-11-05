.class Lcom/smartadserver/android/library/controller/mraid/f$7;
.super Ljava/lang/Object;
.source "SASMRAIDVideoController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/controller/mraid/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/controller/mraid/f;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/mraid/f;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/f$7;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$7;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->d(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$7;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->d(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->b()V

    .line 349
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$7;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->v(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/smartadserver/android/library/f/a;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 354
    :goto_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$7;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/f$7;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v1}, Lcom/smartadserver/android/library/controller/mraid/f;->d(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASVideoView;->getCurrentVolume()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/f;->a(Lcom/smartadserver/android/library/controller/mraid/f;F)V

    .line 355
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$7;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->d(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->a()V

    .line 352
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$7;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->v(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/smartadserver/android/library/f/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
