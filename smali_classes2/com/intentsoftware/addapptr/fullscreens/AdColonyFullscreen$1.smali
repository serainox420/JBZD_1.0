.class Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen$1;
.super Ljava/lang/Object;
.source "AdColonyFullscreen.java"

# interfaces
.implements Lcom/adcolony/sdk/AdColonyRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->createRewardListener()Lcom/adcolony/sdk/AdColonyRewardListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReward(Lcom/adcolony/sdk/AdColonyReward;)V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyReward;->success()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;)V

    .line 73
    :cond_0
    return-void
.end method
