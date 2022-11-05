.class Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen$1;
.super Ljava/lang/Object;
.source "SmaatoFullscreen.java"

# interfaces
.implements Lcom/smaato/soma/interstitial/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->createListener()Lcom/smaato/soma/interstitial/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToLoadAd()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->access$500(Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public onReadyToShow()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;)V

    .line 71
    return-void
.end method

.method public onWillClose()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->access$302(Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;Z)Z

    .line 87
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->access$400(Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onWillOpenLandingPage()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->access$200(Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;)V

    .line 81
    return-void
.end method

.method public onWillShow()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;)V

    .line 76
    return-void
.end method
