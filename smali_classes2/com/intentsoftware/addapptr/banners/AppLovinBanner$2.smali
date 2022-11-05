.class Lcom/intentsoftware/addapptr/banners/AppLovinBanner$2;
.super Ljava/lang/Object;
.source "AppLovinBanner.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->createAdLoadListener()Lcom/applovin/sdk/AppLovinAdLoadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/banners/AppLovinBanner;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/banners/AppLovinBanner;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/AppLovinBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/AppLovinBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppLovinBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/AppLovinBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->access$200(Lcom/intentsoftware/addapptr/banners/AppLovinBanner;)V

    .line 60
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppLovinBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/AppLovinBanner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->access$100(Lcom/intentsoftware/addapptr/banners/AppLovinBanner;Ljava/lang/String;)V

    .line 55
    return-void
.end method
