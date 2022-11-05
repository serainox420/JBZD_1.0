.class Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$1;
.super Ljava/lang/Object;
.source "AppLovinFullscreen.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;


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
    .line 37
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;)V

    .line 43
    :cond_0
    return-void
.end method
