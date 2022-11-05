.class Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$2;
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
    .line 66
    iput-object p1, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$2;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onAdClosed()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$2;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$202(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;Z)Z

    .line 85
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$2;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$302(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;Lcom/openx/view/AdInterstitial;)Lcom/openx/view/AdInterstitial;

    .line 86
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$2;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$100(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$2;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$100(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdEventsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/view/AdEventsListener;->onAdClosed()V

    .line 87
    :cond_0
    return-void
.end method

.method public onAdDidLoad()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$2;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$202(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;Z)Z

    .line 78
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$2;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$100(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$2;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$100(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdEventsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/view/AdEventsListener;->onAdDidLoad()V

    .line 79
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(Lcom/openx/errors/AdError;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$2;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$100(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$2;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$100(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdEventsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/openx/view/AdEventsListener;->onAdFailedToLoad(Lcom/openx/errors/AdError;)V

    .line 72
    :cond_0
    return-void
.end method
