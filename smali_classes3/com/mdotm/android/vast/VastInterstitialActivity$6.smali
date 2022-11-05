.class Lcom/mdotm/android/vast/VastInterstitialActivity$6;
.super Ljava/lang/Object;
.source "VastInterstitialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/vast/VastInterstitialActivity;->getCloseButtonView()Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/mdotm/android/vast/VastInterstitialActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$6;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 517
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$6;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$15(Lcom/mdotm/android/vast/VastInterstitialActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$6;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$15(Lcom/mdotm/android/vast/VastInterstitialActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$6;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$16(Lcom/mdotm/android/vast/VastInterstitialActivity;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastVideoView;->skipVideo()V

    .line 521
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$6;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$17(Lcom/mdotm/android/vast/VastInterstitialActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$6;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$18(Lcom/mdotm/android/vast/VastInterstitialActivity;)Lcom/mdotm/android/vast/VastAd;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mdotm/android/vast/VastAd;->liniearAndCompanion:Z

    if-eqz v0, :cond_3

    .line 522
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$6;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$16(Lcom/mdotm/android/vast/VastInterstitialActivity;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$6;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$16(Lcom/mdotm/android/vast/VastInterstitialActivity;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastVideoView;->stopVideo()V

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$6;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$19(Lcom/mdotm/android/vast/VastInterstitialActivity;)V

    .line 525
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$6;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$20(Lcom/mdotm/android/vast/VastInterstitialActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$21()Z

    move-result v0

    if-nez v0, :cond_2

    .line 526
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$6;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$22(Lcom/mdotm/android/vast/VastInterstitialActivity;)Lcom/mdotm/android/listener/InterstitialActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$6;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v1}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$23(Lcom/mdotm/android/vast/VastInterstitialActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/mdotm/android/listener/InterstitialActionListener;->onRewardedVideoComplete(ZLjava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$6;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0, v2}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$24(Lcom/mdotm/android/vast/VastInterstitialActivity;Z)V

    .line 538
    :cond_2
    :goto_0
    return-void

    .line 531
    :cond_3
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$6;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->onDismissScreen()V

    .line 532
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$6;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$20(Lcom/mdotm/android/vast/VastInterstitialActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$21()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$6;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$25(Lcom/mdotm/android/vast/VastInterstitialActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 533
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$6;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$22(Lcom/mdotm/android/vast/VastInterstitialActivity;)Lcom/mdotm/android/listener/InterstitialActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$6;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v1}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$23(Lcom/mdotm/android/vast/VastInterstitialActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/mdotm/android/listener/InterstitialActionListener;->onRewardedVideoComplete(ZLjava/lang/String;)V

    .line 535
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$26(Z)V

    .line 536
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$6;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->finish()V

    goto :goto_0
.end method
