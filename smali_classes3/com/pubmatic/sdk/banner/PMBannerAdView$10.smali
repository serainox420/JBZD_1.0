.class Lcom/pubmatic/sdk/banner/PMBannerAdView$10;
.super Ljava/lang/Object;
.source "PMBannerAdView.java"

# interfaces
.implements Lcom/pubmatic/sdk/common/ui/BrowserDialog$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/banner/PMBannerAdView;->openInternalBrowser(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V
    .locals 0

    .prologue
    .line 1916
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$10;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public browserDialogDismissed(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)V
    .locals 2

    .prologue
    .line 1919
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$10;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1500(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$InternalBrowserListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1920
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$10;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1500(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$InternalBrowserListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$10;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$InternalBrowserListener;->onInternalBrowserDismissed(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    .line 1922
    :cond_0
    return-void
.end method

.method public browserDialogOpenUrl(Lcom/pubmatic/sdk/common/ui/BrowserDialog;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$10;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1600(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/String;Z)V

    .line 1930
    if-eqz p3, :cond_0

    .line 1931
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->dismiss()V

    .line 1933
    :cond_0
    return-void
.end method
