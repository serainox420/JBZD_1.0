.class Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity$3;
.super Ljava/lang/Object;
.source "SmartAdServerFullscreenActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->createTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity$3;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 153
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity$3;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->access$100(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity$3;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->access$102(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;Z)Z

    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 159
    const-string v1, "SMART_AD_SERVER_CLICKED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity$3;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;

    invoke-virtual {v1, v0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 162
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
