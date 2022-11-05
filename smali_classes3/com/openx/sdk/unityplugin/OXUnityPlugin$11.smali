.class Lcom/openx/sdk/unityplugin/OXUnityPlugin$11;
.super Ljava/lang/Object;
.source "OXUnityPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/sdk/unityplugin/OXUnityPlugin;->showInterstitial()V
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
    .line 368
    iput-object p1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$11;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$11;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$200(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdInterstitial;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$11;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$100(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const-string v0, "OXUnityPlugin :showInterstitial"

    const-string v1, "showing interstitial"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$11;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$200(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/view/AdInterstitial;->show()V

    .line 380
    :cond_0
    return-void
.end method
