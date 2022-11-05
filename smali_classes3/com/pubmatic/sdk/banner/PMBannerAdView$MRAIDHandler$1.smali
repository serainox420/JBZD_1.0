.class Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$1;
.super Ljava/lang/Object;
.source "PMBannerAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->mraidClose(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

.field final synthetic val$bridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;Lcom/pubmatic/sdk/banner/mraid/Bridge;)V
    .locals 0

    .prologue
    .line 2404
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iput-object p2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$1;->val$bridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2406
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2800(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2437
    :cond_0
    :goto_0
    return-void

    .line 2410
    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2900(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2411
    if-eqz v0, :cond_2

    .line 2412
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2900(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2414
    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2800(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2415
    if-eqz v0, :cond_3

    .line 2416
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2800(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2418
    :cond_3
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0, v3}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2802(Lcom/pubmatic/sdk/banner/PMBannerAdView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 2419
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0, v3}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3002(Lcom/pubmatic/sdk/banner/PMBannerAdView;Landroid/view/View;)Landroid/view/View;

    .line 2421
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2423
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    iget-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v2, v2, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2900(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/WebView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2425
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$1;->val$bridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    sget-object v2, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Default:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    invoke-static {v0, v1, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3100(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/mraid/Bridge;Lcom/pubmatic/sdk/banner/mraid/Consts$State;)V

    .line 2426
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$1;->val$bridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Default:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->setState(Lcom/pubmatic/sdk/banner/mraid/Consts$State;)V

    .line 2428
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3200(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RichMediaListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2429
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3200(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RichMediaListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RichMediaListener;->onCollapsed(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    .line 2432
    :cond_4
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$1;->val$bridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2433
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2434
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3400(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    goto/16 :goto_0
.end method
