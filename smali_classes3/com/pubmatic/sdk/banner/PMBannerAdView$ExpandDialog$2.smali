.class Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$2;
.super Ljava/lang/Object;
.source "PMBannerAdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

.field final synthetic val$this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;Lcom/pubmatic/sdk/banner/PMBannerAdView;)V
    .locals 0

    .prologue
    .line 3026
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    iput-object p2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$2;->val$this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 3029
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3030
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;->onCloseButtonClick(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3036
    :goto_0
    return-void

    .line 3035
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog$2;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->dismiss()V

    goto :goto_0
.end method
