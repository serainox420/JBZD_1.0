.class Lcom/openx/sdk/unityplugin/OXUnityPlugin$7;
.super Ljava/lang/Object;
.source "OXUnityPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/sdk/unityplugin/OXUnityPlugin;->createVideoInterstitial(Ljava/lang/String;ZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

.field final synthetic val$fullScreen:Z

.field final synthetic val$preload:Z

.field final synthetic val$skipOffset:Ljava/lang/String;

.field final synthetic val$vastTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openx/sdk/unityplugin/OXUnityPlugin;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$7;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    iput-object p2, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$7;->val$vastTag:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$7;->val$preload:Z

    iput-boolean p4, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$7;->val$fullScreen:Z

    iput-object p5, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$7;->val$skipOffset:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$7;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    new-instance v1, Lcom/openx/view/AdInterstitial;

    invoke-static {}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$400()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$7;->val$vastTag:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/openx/view/AdInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$202(Lcom/openx/sdk/unityplugin/OXUnityPlugin;Lcom/openx/view/AdInterstitial;)Lcom/openx/view/AdInterstitial;

    .line 263
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$7;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$200(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdInterstitial;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$7;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v1}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$1100(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdEventsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/AdInterstitial;->setAdEventsListener(Lcom/openx/view/AdEventsListener;)V

    .line 264
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$7;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$102(Lcom/openx/sdk/unityplugin/OXUnityPlugin;Z)Z

    .line 266
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$7;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$200(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdInterstitial;

    move-result-object v0

    iget-boolean v1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$7;->val$preload:Z

    invoke-virtual {v0, v1}, Lcom/openx/view/AdInterstitial;->setPreloadAdVideos(Z)V

    .line 268
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$7;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$200(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdInterstitial;

    move-result-object v0

    iget-boolean v1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$7;->val$fullScreen:Z

    invoke-virtual {v0, v1}, Lcom/openx/view/AdInterstitial;->setPlayFullscreen(Z)V

    .line 270
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$7;->val$skipOffset:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$7;->val$skipOffset:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 272
    new-instance v0, Lcom/openx/model/video/CustomVideoAdProperties;

    invoke-direct {v0}, Lcom/openx/model/video/CustomVideoAdProperties;-><init>()V

    .line 273
    iget-object v1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$7;->val$skipOffset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openx/model/video/CustomVideoAdProperties;->setSkipOffset(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$7;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v1}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$200(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdInterstitial;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openx/view/AdInterstitial;->setCustomVideoStrings(Lcom/openx/model/video/CustomVideoAdProperties;)V

    .line 277
    :cond_0
    return-void
.end method
