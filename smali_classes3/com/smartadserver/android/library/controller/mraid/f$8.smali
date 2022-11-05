.class Lcom/smartadserver/android/library/controller/mraid/f$8;
.super Ljava/lang/Object;
.source "SASMRAIDVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/controller/mraid/f;->b()V
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
    .line 507
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/f$8;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$8;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->o(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$8;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->i(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/f$8;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v1}, Lcom/smartadserver/android/library/controller/mraid/f;->o(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$8;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->v(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$8;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->i(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/f$8;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v1}, Lcom/smartadserver/android/library/controller/mraid/f;->v(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$8;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->p(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 514
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$8;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->i(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/f$8;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v1}, Lcom/smartadserver/android/library/controller/mraid/f;->p(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 515
    :cond_2
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$8;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->d(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->d()V

    .line 516
    return-void
.end method
