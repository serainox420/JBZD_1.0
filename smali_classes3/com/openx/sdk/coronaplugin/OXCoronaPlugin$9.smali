.class Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$9;
.super Ljava/lang/Object;
.source "OXCoronaPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->showInterstitial()V
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
    .line 318
    iput-object p1, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$9;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$9;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$300(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdInterstitial;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$9;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$200(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    const-string v0, "OXCoronaPlugin :showInterstitial"

    const-string v1, "showing interstitial"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$9;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$300(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/view/AdInterstitial;->show()V

    .line 330
    :cond_0
    return-void
.end method
