.class Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$2;
.super Landroid/content/BroadcastReceiver;
.source "SmartAdServerFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->createBroadcastReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->access$800(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMART_AD_SERVER_CLICKED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->access$900(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;)V

    .line 173
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->access$1000(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;)V

    .line 174
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;

    invoke-static {v0, v2}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->access$802(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->access$800(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMART_AD_SERVER_FAILED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->access$900(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;)V

    .line 177
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;

    invoke-static {v0, v2}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->access$1100(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;

    invoke-static {v0, v2}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->access$802(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    goto :goto_0

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->access$800(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMART_AD_SERVER_FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->access$900(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;)V

    .line 181
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;

    invoke-static {v0, v2}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->access$802(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method
