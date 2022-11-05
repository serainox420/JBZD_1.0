.class Lcom/intentsoftware/addapptr/banners/FacebookBanner$1;
.super Ljava/lang/Object;
.source "FacebookBanner.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/banners/FacebookBanner;->createListener()Lcom/facebook/ads/AdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/banners/FacebookBanner;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/banners/FacebookBanner;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/FacebookBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/FacebookBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/FacebookBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/FacebookBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/FacebookBanner;->access$200(Lcom/intentsoftware/addapptr/banners/FacebookBanner;)V

    .line 52
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/FacebookBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/FacebookBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/FacebookBanner;->access$100(Lcom/intentsoftware/addapptr/banners/FacebookBanner;)V

    .line 47
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/FacebookBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/FacebookBanner;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/FacebookBanner;->access$000(Lcom/intentsoftware/addapptr/banners/FacebookBanner;Ljava/lang/String;)V

    .line 42
    return-void
.end method
