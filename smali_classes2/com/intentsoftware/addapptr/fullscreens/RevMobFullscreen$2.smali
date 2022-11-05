.class Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$2;
.super Lcom/revmob/RevMobAdsListener;
.source "RevMobFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->createListener()Lcom/revmob/RevMobAdsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;

    invoke-direct {p0}, Lcom/revmob/RevMobAdsListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRevMobAdClicked()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->access$900(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;)V

    .line 153
    return-void
.end method

.method public onRevMobAdDisplayed()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->access$800(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;)V

    .line 148
    return-void
.end method

.method public onRevMobAdNotReceived(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;

    invoke-static {v0, p1}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->access$700(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public onRevMobAdReceived()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->access$200(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;)V

    .line 118
    return-void
.end method

.method public onRevMobRewardedVideoCompleted()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->access$1000(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;)V

    .line 158
    return-void
.end method

.method public onRevMobRewardedVideoLoaded()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->access$400(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;)V

    .line 128
    return-void
.end method

.method public onRevMobRewardedVideoStarted()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->access$500(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;)V

    .line 133
    return-void
.end method

.method public onRevMobVideoLoaded()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;)V

    .line 123
    return-void
.end method

.method public onRevMobVideoStarted()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->access$600(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;)V

    .line 138
    return-void
.end method
