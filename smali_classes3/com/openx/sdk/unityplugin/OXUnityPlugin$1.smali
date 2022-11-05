.class Lcom/openx/sdk/unityplugin/OXUnityPlugin$1;
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
    .line 41
    iput-object p1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$1;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .prologue
    .line 67
    const-string v0, "OXUnityPlugin"

    const-string v1, "Banner: unity onAdClicked() : "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adClicked"

    const-string v2, "Did click"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public onAdClosed()V
    .locals 3

    .prologue
    .line 60
    const-string v0, "OXUnityPlugin"

    const-string v1, "Banner: unity onAdClosed() : "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adClosed"

    const-string v2, "Did Close"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public onAdDidLoad()V
    .locals 3

    .prologue
    .line 53
    const-string v0, "OXUnityPlugin"

    const-string v1, "Banner: unity onAdDidLoad() : yay!"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adDidLoad"

    const-string v2, "Did Load"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onAdFailedToLoad(Lcom/openx/errors/AdError;)V
    .locals 3

    .prologue
    .line 46
    const-string v0, "OXUnityPlugin"

    const-string v1, "Banner: unity onAdFailedToLoad() : "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adFailedToLoad"

    invoke-virtual {p1}, Lcom/openx/errors/AdError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method
