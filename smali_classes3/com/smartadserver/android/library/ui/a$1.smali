.class Lcom/smartadserver/android/library/ui/a$1;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Lcom/smartadserver/android/library/ui/SASAdView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a;-><init>(Landroid/content/Context;Lcom/smartadserver/android/library/ui/SASAdView;)V
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
    .line 547
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/smartadserver/android/library/ui/SASAdView$i;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 552
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->o(Lcom/smartadserver/android/library/ui/a;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 553
    :goto_0
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v3}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentAdElement()Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v3

    instance-of v3, v3, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    if-eqz v3, :cond_0

    .line 554
    invoke-virtual {p1}, Lcom/smartadserver/android/library/ui/SASAdView$i;->a()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 600
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 552
    goto :goto_0

    .line 556
    :pswitch_0
    if-eqz v0, :cond_2

    .line 557
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0, v1, v1}, Lcom/smartadserver/android/library/ui/a;->a(ZZ)V

    .line 558
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->g(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    const-string v1, "exitFullscreen"

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a;->b(Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(I)V

    .line 564
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentAdElement()Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->isVideo360Mode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 565
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->x(Lcom/smartadserver/android/library/ui/a;)Landroid/view/SurfaceView;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/ui/a/b;

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/a/b;->setPanEnabled(Z)V

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->g(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setFullscreenMode(Z)V

    .line 570
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->y(Lcom/smartadserver/android/library/ui/a;)V

    .line 571
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->g(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a(Z)V

    .line 572
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0, v2}, Lcom/smartadserver/android/library/ui/a;->h(Lcom/smartadserver/android/library/ui/a;Z)V

    goto :goto_1

    .line 575
    :pswitch_1
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v3}, Lcom/smartadserver/android/library/ui/a;->g(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setFullscreenMode(Z)V

    .line 576
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v3}, Lcom/smartadserver/android/library/ui/a;->y(Lcom/smartadserver/android/library/ui/a;)V

    .line 577
    if-eqz v0, :cond_3

    .line 578
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0, v2, v1}, Lcom/smartadserver/android/library/ui/a;->a(ZZ)V

    .line 579
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    const-string v2, "fullscreen"

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/a;->b(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->b(I)V

    .line 582
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentAdElement()Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->isVideo360Mode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 583
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->x(Lcom/smartadserver/android/library/ui/a;)Landroid/view/SurfaceView;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/ui/a/b;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a/b;->setPanEnabled(Z)V

    .line 587
    :cond_3
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/a;->h(Lcom/smartadserver/android/library/ui/a;Z)V

    goto/16 :goto_1

    .line 590
    :pswitch_2
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->o(Lcom/smartadserver/android/library/ui/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->z(Lcom/smartadserver/android/library/ui/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    const-string v1, "skip"

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a;->b(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(I)V

    goto/16 :goto_1

    .line 554
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
