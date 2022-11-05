.class Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$8;
.super Ljava/lang/Object;
.source "OXCoronaPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->loadInterstitial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;


# direct methods
.method constructor <init>(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$8;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$8;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$300(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdInterstitial;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 294
    const-string v0, "OXCoronaPlugin :loadInterstitial"

    const-string v1, "loading interstitial"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$8;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$1000(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/model/adParams/AdCallParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$8;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    new-instance v1, Lcom/openx/core/network/OXAdRequest;

    invoke-direct {v1}, Lcom/openx/core/network/OXAdRequest;-><init>()V

    invoke-static {v0, v1}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$1102(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;Lcom/openx/core/network/OXAdRequest;)Lcom/openx/core/network/OXAdRequest;

    .line 300
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$8;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$1100(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/core/network/OXAdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$8;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v1}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$1000(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/model/adParams/AdCallParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/core/network/OXAdRequest;->setAdCallParams(Lcom/openx/model/adParams/AdCallParameters;)V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$8;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$300(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdInterstitial;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$8;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v1}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$1100(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/core/network/OXAdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/AdInterstitial;->load(Lcom/openx/core/network/OXAdRequest;)V

    .line 306
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$8;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$1002(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;Lcom/openx/model/adParams/AdCallParameters;)Lcom/openx/model/adParams/AdCallParameters;

    .line 308
    :cond_1
    return-void
.end method
