.class Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen$1;
.super Ljava/lang/Object;
.source "InMobiFullscreen.java"

# interfaces
.implements Lcom/inmobi/monetization/IMInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->createListener()Lcom/inmobi/monetization/IMInterstitialListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissInterstitialScreen(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onInterstitialFailed(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMErrorCode;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;

    invoke-virtual {p2}, Lcom/inmobi/monetization/IMErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->access$200(Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onInterstitialInteraction(Lcom/inmobi/monetization/IMInterstitial;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/monetization/IMInterstitial;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;)V

    .line 87
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->access$002(Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;Z)Z

    .line 89
    :cond_0
    return-void
.end method

.method public onInterstitialLoaded(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->access$400(Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;)V

    .line 94
    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;)V

    .line 74
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->access$002(Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;Z)Z

    .line 76
    :cond_0
    return-void
.end method

.method public onShowInterstitialScreen(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->access$500(Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;)V

    .line 99
    return-void
.end method
