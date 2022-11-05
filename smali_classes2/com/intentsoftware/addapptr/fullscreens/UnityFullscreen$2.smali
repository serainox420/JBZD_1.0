.class Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$2;
.super Ljava/lang/Object;
.source "UnityFullscreen.java"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->createListener()Lcom/unity3d/ads/IUnityAdsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->access$102(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;Z)Z

    .line 100
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;

    invoke-static {v0, p2}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->access$800(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method

.method public onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->access$400(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->access$400(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    sget-object v0, Lcom/unity3d/ads/UnityAds$FinishState;->COMPLETED:Lcom/unity3d/ads/UnityAds$FinishState;

    if-ne p2, v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->access$700(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)V

    .line 94
    :cond_1
    return-void
.end method

.method public onUnityAdsReady(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->access$400(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->access$400(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->access$102(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;Z)Z

    .line 75
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->access$500(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)V

    .line 78
    :cond_1
    return-void
.end method

.method public onUnityAdsStart(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->access$400(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->access$400(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->access$600(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)V

    .line 85
    :cond_1
    return-void
.end method
