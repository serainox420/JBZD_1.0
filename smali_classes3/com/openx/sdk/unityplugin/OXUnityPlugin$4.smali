.class Lcom/openx/sdk/unityplugin/OXUnityPlugin$4;
.super Ljava/lang/Object;
.source "OXUnityPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/sdk/unityplugin/OXUnityPlugin;->loadBanner()V
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
    .line 171
    iput-object p1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$4;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$4;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$300(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdBanner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$4;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$300(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdBanner;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$4;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v1}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$1000(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/core/network/OXAdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/AdBanner;->load(Lcom/openx/core/network/OXAdRequest;)V

    .line 181
    const-string v0, "OXUnityPlugin :loadBanner"

    const-string v1, "banner has started loading"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    return-void
.end method
