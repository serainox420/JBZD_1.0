.class Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;
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
    .line 2447
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iput-object p2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;->val$bridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2453
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3600(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2454
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3500(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2900(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->removeView(Landroid/view/View;)V

    .line 2455
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2900(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->addView(Landroid/view/View;)V

    .line 2464
    :goto_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3502(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;)Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    .line 2468
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v1

    sget-object v2, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Default:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    invoke-static {v0, v1, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3100(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/mraid/Bridge;Lcom/pubmatic/sdk/banner/mraid/Consts$State;)V

    .line 2469
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Default:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->setState(Lcom/pubmatic/sdk/banner/mraid/Consts$State;)V

    .line 2471
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3800(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    .line 2473
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3200(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RichMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2474
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3200(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RichMediaListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RichMediaListener;->onCollapsed(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    .line 2477
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;->val$bridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 2478
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2479
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3400(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    .line 2482
    :cond_1
    return-void

    .line 2457
    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3500(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3700(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->removeView(Landroid/view/View;)V

    .line 2459
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3702(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/mraid/WebView;)Lcom/pubmatic/sdk/banner/mraid/WebView;

    .line 2460
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2302(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/mraid/Bridge;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    .line 2461
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3602(Lcom/pubmatic/sdk/banner/PMBannerAdView;Z)Z

    goto/16 :goto_0
.end method
