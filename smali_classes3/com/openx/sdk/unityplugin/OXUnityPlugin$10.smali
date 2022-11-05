.class Lcom/openx/sdk/unityplugin/OXUnityPlugin$10;
.super Ljava/lang/Object;
.source "OXUnityPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/sdk/unityplugin/OXUnityPlugin;->loadInterstitial()V
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
    .line 338
    iput-object p1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$10;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$10;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$200(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdInterstitial;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 347
    const-string v0, "OXUnityPlugin :loadInterstitial"

    const-string v1, "loading interstitial"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$10;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$900(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/model/adParams/AdCallParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$10;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    new-instance v1, Lcom/openx/core/network/OXAdRequest;

    invoke-direct {v1}, Lcom/openx/core/network/OXAdRequest;-><init>()V

    invoke-static {v0, v1}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$1002(Lcom/openx/sdk/unityplugin/OXUnityPlugin;Lcom/openx/core/network/OXAdRequest;)Lcom/openx/core/network/OXAdRequest;

    .line 353
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$10;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$1000(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/core/network/OXAdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$10;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v1}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$900(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/model/adParams/AdCallParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/core/network/OXAdRequest;->setAdCallParams(Lcom/openx/model/adParams/AdCallParameters;)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$10;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$200(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdInterstitial;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$10;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v1}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$1000(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/core/network/OXAdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/AdInterstitial;->load(Lcom/openx/core/network/OXAdRequest;)V

    .line 358
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$10;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$902(Lcom/openx/sdk/unityplugin/OXUnityPlugin;Lcom/openx/model/adParams/AdCallParameters;)Lcom/openx/model/adParams/AdCallParameters;

    .line 360
    :cond_1
    return-void
.end method
