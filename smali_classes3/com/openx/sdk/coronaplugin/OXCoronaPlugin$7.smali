.class Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$7;
.super Ljava/lang/Object;
.source "OXCoronaPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->createInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

.field final synthetic val$closePosition:I

.field final synthetic val$dimAmount:F

.field final synthetic val$domain:Ljava/lang/String;

.field final synthetic val$luid:Ljava/lang/String;

.field final synthetic val$puid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FI)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$7;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    iput-object p2, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$7;->val$domain:Ljava/lang/String;

    iput-object p3, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$7;->val$puid:Ljava/lang/String;

    iput-object p4, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$7;->val$luid:Ljava/lang/String;

    iput p5, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$7;->val$dimAmount:F

    iput p6, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$7;->val$closePosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 269
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$7;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    new-instance v1, Lcom/openx/view/AdInterstitial;

    invoke-static {}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$500()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$7;->val$domain:Ljava/lang/String;

    iget-object v4, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$7;->val$puid:Ljava/lang/String;

    iget-object v5, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$7;->val$luid:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/openx/view/AdInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$302(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;Lcom/openx/view/AdInterstitial;)Lcom/openx/view/AdInterstitial;

    .line 270
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$7;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$300(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdInterstitial;

    move-result-object v0

    iget v1, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$7;->val$dimAmount:F

    invoke-virtual {v0, v1}, Lcom/openx/view/AdInterstitial;->setBackgroundOpacity(F)V

    .line 271
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$7;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$300(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdInterstitial;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$7;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v1}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$1200(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdEventsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/AdInterstitial;->setAdEventsListener(Lcom/openx/view/AdEventsListener;)V

    .line 272
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$7;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$300(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdInterstitial;

    move-result-object v0

    invoke-static {}, Lcom/openx/view/AdInterstitial$ClosePosition;->values()[Lcom/openx/view/AdInterstitial$ClosePosition;

    move-result-object v1

    iget v2, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$7;->val$closePosition:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/openx/view/AdInterstitial;->setClosePosition(Lcom/openx/view/AdInterstitial$ClosePosition;)V

    .line 273
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$7;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$202(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;Z)Z

    .line 275
    return-void
.end method
