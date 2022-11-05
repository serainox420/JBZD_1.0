.class Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen$2;
.super Landroid/content/BroadcastReceiver;
.source "NexageFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->createBroadcastReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->access$400(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RTB1_AD_CLICKED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->access$500(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;)V

    .line 106
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->access$600(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;)V

    .line 107
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;

    invoke-static {v0, v2}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->access$402(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->access$400(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RTB1_ACTIVITY_FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->access$500(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;)V

    .line 110
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;

    invoke-static {v0, v2}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->access$402(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method
