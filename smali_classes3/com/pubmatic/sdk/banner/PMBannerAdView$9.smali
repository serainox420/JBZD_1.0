.class Lcom/pubmatic/sdk/banner/PMBannerAdView$9;
.super Ljava/lang/Object;
.source "PMBannerAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/banner/PMBannerAdView;->openUrl(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

.field final synthetic val$bypassInternalBrowser:Z

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1878
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$9;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    iput-boolean p2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$9;->val$bypassInternalBrowser:Z

    iput-object p3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$9;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1880
    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$9;->val$bypassInternalBrowser:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$9;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1882
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$9;->val$url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 1883
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 1884
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1885
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$9;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$9;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1200(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1904
    :goto_0
    return-void

    .line 1888
    :catch_0
    move-exception v0

    .line 1894
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$9;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1895
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$9;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$9;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;->onLeavingApplication(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    .line 1898
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$9;->val$url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1899
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$9;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1400(Lcom/pubmatic/sdk/banner/PMBannerAdView;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1900
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$9;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1902
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to start activity for browsing URL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$9;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    goto :goto_0
.end method
