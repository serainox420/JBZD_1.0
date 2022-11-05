.class Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen$1;
.super Ljava/lang/Object;
.source "PermodoFullscreen.java"

# interfaces
.implements Lcom/madsdk/InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;->createListener()Lcom/madsdk/InterstitialAdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;->access$302(Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;Z)Z

    .line 47
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;->access$400(Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;)V

    .line 49
    :cond_0
    return-void
.end method

.method public onLoad()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;->access$200(Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;)V

    .line 41
    return-void
.end method

.method public onLoadFailed(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;

    invoke-static {v0, p1}, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;->access$500(Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onPauseForAd()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;)V

    .line 36
    return-void
.end method

.method public onResumeForAd()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;)V

    .line 31
    return-void
.end method
