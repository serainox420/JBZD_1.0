.class Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$4;
.super Ljava/lang/Object;
.source "AppLovinFullscreen.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->createAdLoadListener()Lcom/applovin/sdk/AppLovinAdLoadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$4;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$4;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;

    invoke-static {v0, p1}, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->access$602(Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;

    .line 100
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$4;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->access$700(Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;)V

    .line 101
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$4;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->access$500(Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;Ljava/lang/String;)V

    .line 95
    return-void
.end method
