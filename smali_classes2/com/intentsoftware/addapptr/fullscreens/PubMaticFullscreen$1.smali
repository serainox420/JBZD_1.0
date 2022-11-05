.class Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen$1;
.super Ljava/lang/Object;
.source "PubMaticFullscreen.java"

# interfaces
.implements Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->createActivityListener()Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseButtonClick(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;)V

    .line 63
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->access$002(Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;Z)Z

    .line 64
    return v1
.end method

.method public onLeavingApplication(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->access$002(Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;Z)Z

    .line 56
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->access$200(Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;)V

    .line 58
    :cond_0
    return-void
.end method

.method public onOpenUrl(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->access$002(Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;Z)Z

    .line 47
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;)V

    .line 49
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
