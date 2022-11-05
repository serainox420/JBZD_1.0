.class Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$1;
.super Ljava/lang/Object;
.source "OXCoronaPlugin.java"

# interfaces
.implements Lcom/openx/view/AdEventsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;
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
    .line 38
    iput-object p1, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$1;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$1;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$000(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$1;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$000(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdEventsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/view/AdEventsListener;->onAdClosed()V

    .line 56
    :cond_0
    return-void
.end method

.method public onAdDidLoad()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$1;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$000(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$1;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$000(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdEventsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/view/AdEventsListener;->onAdDidLoad()V

    .line 50
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(Lcom/openx/errors/AdError;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$1;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$000(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$1;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$000(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdEventsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/openx/view/AdEventsListener;->onAdFailedToLoad(Lcom/openx/errors/AdError;)V

    .line 44
    :cond_0
    return-void
.end method
