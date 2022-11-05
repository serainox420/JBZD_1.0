.class Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$5;
.super Ljava/lang/Object;
.source "OXCoronaPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->showBanner()V
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
    .line 191
    iput-object p1, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$5;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$5;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$400(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdBanner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$5;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$400(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdBanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/openx/view/AdBanner;->setVisibility(I)V

    .line 202
    const-string v0, "OXCoronaPlugin :showBanner"

    const-string v1, "Showing Banner"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    return-void
.end method
