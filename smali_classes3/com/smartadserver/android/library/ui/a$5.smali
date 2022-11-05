.class Lcom/smartadserver/android/library/ui/a$5;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a;)V
    .locals 0

    .prologue
    .line 1392
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1397
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->d(Lcom/smartadserver/android/library/ui/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1398
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->f(Lcom/smartadserver/android/library/ui/a;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    new-instance v1, Landroid/view/TextureView;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;Landroid/view/View;)Landroid/view/View;

    .line 1400
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1401
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->f(Lcom/smartadserver/android/library/ui/a;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1403
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->f(Lcom/smartadserver/android/library/ui/a;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    new-instance v1, Lcom/smartadserver/android/library/ui/a$5$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a$5$1;-><init>(Lcom/smartadserver/android/library/ui/a$5;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1449
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/ui/a$5$2;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a$5$2;-><init>(Lcom/smartadserver/android/library/ui/a$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1534
    :cond_0
    :goto_0
    return-void

    .line 1462
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->x(Lcom/smartadserver/android/library/ui/a;)Landroid/view/SurfaceView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1463
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->q(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->isVideo360Mode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1464
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    new-instance v1, Lcom/smartadserver/android/library/ui/a$5$3;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/smartadserver/android/library/ui/a$5$3;-><init>(Lcom/smartadserver/android/library/ui/a$5;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;

    .line 1477
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->o(Lcom/smartadserver/android/library/ui/a;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1478
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->x(Lcom/smartadserver/android/library/ui/a;)Landroid/view/SurfaceView;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/ui/a/b;

    invoke-virtual {v0, v4}, Lcom/smartadserver/android/library/ui/a/b;->setPanEnabled(Z)V

    .line 1482
    :cond_2
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->x(Lcom/smartadserver/android/library/ui/a;)Landroid/view/SurfaceView;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/ui/a/b;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->J(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a/b;->setResetButton(Lcom/smartadserver/android/library/ui/b;)V

    .line 1483
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->J(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartadserver/android/library/ui/b;->setVisibility(I)V

    .line 1488
    :goto_1
    invoke-static {}, Lcom/smartadserver/android/library/ui/SASAdView;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1490
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->x(Lcom/smartadserver/android/library/ui/a;)Landroid/view/SurfaceView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 1492
    :cond_3
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->x(Lcom/smartadserver/android/library/ui/a;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 1493
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1494
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->x(Lcom/smartadserver/android/library/ui/a;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1496
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->x(Lcom/smartadserver/android/library/ui/a;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/ui/a$5$4;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a$5$4;-><init>(Lcom/smartadserver/android/library/ui/a$5;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1531
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->s(Lcom/smartadserver/android/library/ui/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->x(Lcom/smartadserver/android/library/ui/a;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 1486
    :cond_4
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    new-instance v1, Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;

    goto :goto_1
.end method
