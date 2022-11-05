.class Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7$1;
.super Ljava/lang/Object;
.source "PMBannerAdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;)V
    .locals 0

    .prologue
    .line 2791
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7$1;->this$2:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2794
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7$1;->this$2:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3000(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 2799
    :goto_0
    return-void

    .line 2798
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7$1;->this$2:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$4300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7$1;->this$2:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->val$bridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;->mraidClose(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V

    goto :goto_0
.end method
