.class Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$3;
.super Ljava/lang/Object;
.source "AppLovinFullscreen.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
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
    .line 61
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$3;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 1

    .prologue
    .line 69
    if-eqz p4, :cond_0

    .line 70
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$3;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->access$400(Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;)V

    .line 72
    :cond_0
    return-void
.end method
