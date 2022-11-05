.class Lcom/openx/sdk/unityplugin/OXUnityPlugin$9;
.super Ljava/lang/Object;
.source "OXUnityPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/sdk/unityplugin/OXUnityPlugin;->createInterstitial(Ljava/lang/String;Ljava/lang/String;FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

.field final synthetic val$auid:Ljava/lang/String;

.field final synthetic val$closePosition:I

.field final synthetic val$dimAmount:F

.field final synthetic val$domain:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openx/sdk/unityplugin/OXUnityPlugin;Ljava/lang/String;Ljava/lang/String;FI)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$9;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    iput-object p2, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$9;->val$domain:Ljava/lang/String;

    iput-object p3, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$9;->val$auid:Ljava/lang/String;

    iput p4, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$9;->val$dimAmount:F

    iput p5, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$9;->val$closePosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 324
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$9;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    new-instance v1, Lcom/openx/view/AdInterstitial;

    invoke-static {}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$400()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$9;->val$domain:Ljava/lang/String;

    iget-object v4, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$9;->val$auid:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/openx/view/AdInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$202(Lcom/openx/sdk/unityplugin/OXUnityPlugin;Lcom/openx/view/AdInterstitial;)Lcom/openx/view/AdInterstitial;

    .line 325
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$9;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$200(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdInterstitial;

    move-result-object v0

    iget v1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$9;->val$dimAmount:F

    invoke-virtual {v0, v1}, Lcom/openx/view/AdInterstitial;->setBackgroundOpacity(F)V

    .line 326
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$9;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$200(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdInterstitial;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$9;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v1}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$1100(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdEventsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/AdInterstitial;->setAdEventsListener(Lcom/openx/view/AdEventsListener;)V

    .line 327
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$9;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$200(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdInterstitial;

    move-result-object v0

    invoke-static {}, Lcom/openx/view/AdInterstitial$ClosePosition;->values()[Lcom/openx/view/AdInterstitial$ClosePosition;

    move-result-object v1

    iget v2, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$9;->val$closePosition:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/openx/view/AdInterstitial;->setClosePosition(Lcom/openx/view/AdInterstitial$ClosePosition;)V

    .line 328
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$9;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$102(Lcom/openx/sdk/unityplugin/OXUnityPlugin;Z)Z

    .line 330
    return-void
.end method
