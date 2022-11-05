.class Lcom/openx/sdk/unityplugin/OXUnityPlugin$2;
.super Ljava/lang/Object;
.source "OXUnityPlugin.java"

# interfaces
.implements Lcom/openx/view/AdEventsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/sdk/unityplugin/OXUnityPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;


# direct methods
.method constructor <init>(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$2;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .prologue
    .line 104
    const-string v0, "OXUnityPlugin"

    const-string v1, "Interstitial: unity onAdClicked() : "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adClicked"

    const-string v2, "Did click"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public onAdClosed()V
    .locals 3

    .prologue
    .line 95
    const-string v0, "OXUnityPlugin"

    const-string v1, "Interstitial: unity onAdClosed() : "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$2;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$102(Lcom/openx/sdk/unityplugin/OXUnityPlugin;Z)Z

    .line 97
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$2;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$202(Lcom/openx/sdk/unityplugin/OXUnityPlugin;Lcom/openx/view/AdInterstitial;)Lcom/openx/view/AdInterstitial;

    .line 98
    invoke-static {}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adClosed"

    const-string v2, "Did CLose"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public onAdDidLoad()V
    .locals 3

    .prologue
    .line 86
    const-string v0, "OXUnityPlugin"

    const-string v1, "Interstitial: unity onAdDidLoad() : yay!"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$2;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$102(Lcom/openx/sdk/unityplugin/OXUnityPlugin;Z)Z

    .line 89
    invoke-static {}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adDidLoad"

    const-string v2, "Did Load"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onAdFailedToLoad(Lcom/openx/errors/AdError;)V
    .locals 3

    .prologue
    .line 78
    const-string v0, "OXUnityPlugin"

    const-string v1, "Interstitial: unity onAdFailedToLoad() : "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adFailedToLoad"

    invoke-virtual {p1}, Lcom/openx/errors/AdError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method
