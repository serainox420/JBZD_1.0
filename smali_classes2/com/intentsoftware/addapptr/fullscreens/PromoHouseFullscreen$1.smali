.class Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$1;
.super Landroid/content/BroadcastReceiver;
.source "PromoHouseFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->createBroadcastReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PROMO_HOUSE_AD_CLICKED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)V

    .line 87
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$200(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)V

    .line 88
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0, v2}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$002(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PROMO_HOUSE_AD_FAILED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)V

    .line 91
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0, v2}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$400(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Ljava/lang/String;)V

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$302(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Z)Z

    .line 95
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0, v2}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$002(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    goto :goto_0

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PROMO_HOUSE_ACTIVITY_FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)V

    .line 98
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0, v2}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$002(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method
