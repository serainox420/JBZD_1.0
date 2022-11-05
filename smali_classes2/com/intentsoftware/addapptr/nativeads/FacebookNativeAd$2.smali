.class Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;
.super Ljava/lang/Object;
.source "FacebookNativeAd.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->createAdListener()Lcom/facebook/ads/AdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->access$1400(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;)V

    .line 77
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 7

    .prologue
    .line 51
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->access$200(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;)Lcom/facebook/ads/NativeAd;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    const-string v1, "Returned different kind of ad!"

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->access$300(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->access$200(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;)Lcom/facebook/ads/NativeAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdStarRating()Lcom/facebook/ads/NativeAd$Rating;

    move-result-object v4

    .line 57
    if-eqz v4, :cond_1

    .line 58
    iget-object v6, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    new-instance v0, Lcom/intentsoftware/addapptr/ad/NativeAd$a;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    invoke-virtual {v4}, Lcom/facebook/ads/NativeAd$Rating;->getValue()D

    move-result-wide v2

    invoke-virtual {v4}, Lcom/facebook/ads/NativeAd$Rating;->getScale()D

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/intentsoftware/addapptr/ad/NativeAd$a;-><init>(Lcom/intentsoftware/addapptr/ad/NativeAd;DD)V

    invoke-static {v6, v0}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->access$400(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;Lcom/intentsoftware/addapptr/ad/NativeAd$a;)V

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    const-string v1, "headline"

    iget-object v2, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    invoke-static {v2}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->access$200(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;)Lcom/facebook/ads/NativeAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->access$500(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    const-string v1, "description"

    iget-object v2, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    invoke-static {v2}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->access$200(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;)Lcom/facebook/ads/NativeAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdBody()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->access$600(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    const-string v1, "cta"

    iget-object v2, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    invoke-static {v2}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->access$200(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;)Lcom/facebook/ads/NativeAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->access$700(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    const-string v1, "subtitle"

    iget-object v2, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    invoke-static {v2}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->access$200(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;)Lcom/facebook/ads/NativeAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->access$800(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    const-string v1, "icon"

    iget-object v2, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    invoke-static {v2}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->access$200(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;)Lcom/facebook/ads/NativeAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->access$900(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    const-string v1, "main"

    iget-object v2, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    invoke-static {v2}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->access$200(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;)Lcom/facebook/ads/NativeAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->access$1000(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    new-instance v1, Lcom/facebook/ads/AdChoicesView;

    iget-object v2, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    invoke-static {v2}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->access$1200(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    invoke-static {v3}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->access$200(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;)Lcom/facebook/ads/NativeAd;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/ads/AdChoicesView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Z)V

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->access$1102(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;Landroid/view/View;)Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->access$1300(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;)V

    goto/16 :goto_0
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->access$100(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;Ljava/lang/String;)V

    .line 47
    return-void
.end method
