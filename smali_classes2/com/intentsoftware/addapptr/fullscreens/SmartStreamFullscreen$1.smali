.class Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen$1;
.super Ljava/lang/Object;
.source "SmartStreamFullscreen.java"

# interfaces
.implements Lcom/video/adsdk/VideoAdSDKListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->createListener()Lcom/video/adsdk/VideoAdSDKListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdvertisingClicked()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->access$500(Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;)V

    .line 78
    return-void
.end method

.method public onAdvertisingDidHide()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onAdvertisingEventTracked(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 70
    if-eqz p1, :cond_0

    const-string v0, "complete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->access$400(Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;)V

    .line 73
    :cond_0
    return-void
.end method

.method public onAdvertisingFailedToLoad(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;Ljava/lang/String;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->access$102(Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;Z)Z

    .line 66
    return-void
.end method

.method public onAdvertisingIsReadyToPlay()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Lcom/video/adsdk/VideoAdSDK;->startAdvertising()V

    .line 58
    return-void
.end method

.method public onAdvertisingNotAvailable()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;

    const-string v1, "ad not available"

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->access$200(Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;Ljava/lang/String;)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->access$102(Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;Z)Z

    .line 53
    return-void
.end method

.method public onAdvertisingPrefetchingDidComplete()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;)V

    .line 44
    return-void
.end method

.method public onAdvertisingTimedOut()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;

    const-string v1, "timed out"

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->access$700(Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;Ljava/lang/String;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->access$102(Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;Z)Z

    .line 95
    return-void
.end method

.method public onAdvertisingWillShow()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->access$600(Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;)V

    .line 87
    return-void
.end method

.method public onPrefetcherProgress(D)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method
