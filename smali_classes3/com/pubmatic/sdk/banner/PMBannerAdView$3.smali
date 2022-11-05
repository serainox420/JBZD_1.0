.class Lcom/pubmatic/sdk/banner/PMBannerAdView$3;
.super Ljava/lang/Object;
.source "PMBannerAdView.java"

# interfaces
.implements Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/banner/PMBannerAdView;
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
    .line 1200
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$3;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorOccured(IILjava/lang/String;)V
    .locals 3

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$3;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$600(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$3;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$600(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$3;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;->onFailedToReceiveAd(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/Exception;)V

    .line 1248
    :cond_0
    return-void
.end method

.method public onRequestComplete(Lcom/pubmatic/sdk/common/network/HttpResponse;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1205
    if-eqz p1, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$3;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$500(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/BannerAdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/BannerAdController;->getAdRequest()Lcom/pubmatic/sdk/common/AdRequest;

    move-result-object v0

    .line 1208
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$3;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$500(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/BannerAdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/BannerAdController;->getRRFormatter()Lcom/pubmatic/sdk/common/RRFormatter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/pubmatic/sdk/common/RRFormatter;->formatResponse(Lcom/pubmatic/sdk/common/network/HttpResponse;)Lcom/pubmatic/sdk/common/AdResponse;

    move-result-object v1

    .line 1209
    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/AdResponse;->getRequest()Lcom/pubmatic/sdk/common/AdRequest;

    move-result-object v2

    if-eq v2, v0, :cond_1

    .line 1240
    :cond_0
    :goto_0
    return-void

    .line 1214
    :cond_1
    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/AdResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 1215
    if-eqz v0, :cond_4

    .line 1217
    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/AdResponse;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 1218
    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/AdResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 1220
    if-eqz v2, :cond_3

    .line 1221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad request failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    .line 1231
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$3;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$600(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$3;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$600(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$3;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-interface {v0, v1, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;->onFailedToReceiveAd(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/Exception;)V

    goto :goto_0

    .line 1224
    :cond_3
    const/16 v3, 0x194

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error response from server.  Error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". Error message: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    goto :goto_1

    .line 1238
    :cond_4
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$3;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/AdResponse;->getRenderable()Lcom/pubmatic/sdk/common/AdResponse$Renderable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$700(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/common/AdResponse$Renderable;)V

    goto :goto_0
.end method

.method public overrideRedirection()Z
    .locals 1

    .prologue
    .line 1252
    const/4 v0, 0x0

    return v0
.end method
