.class Lcom/loopme/AdReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AdReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/AdReceiver$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/loopme/AdReceiver$Listener;


# direct methods
.method public constructor <init>(Lcom/loopme/AdReceiver$Listener;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/loopme/AdReceiver;->mListener:Lcom/loopme/AdReceiver$Listener;

    .line 21
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/loopme/AdReceiver;->mListener:Lcom/loopme/AdReceiver$Listener;

    if-nez v0, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.loopme.DESTROY_INTENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/loopme/AdReceiver;->mListener:Lcom/loopme/AdReceiver$Listener;

    invoke-interface {v0}, Lcom/loopme/AdReceiver$Listener;->onDestroyBroadcast()V

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.loopme.CLICK_INTENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/loopme/AdReceiver;->mListener:Lcom/loopme/AdReceiver$Listener;

    invoke-interface {v0}, Lcom/loopme/AdReceiver$Listener;->onClickBroadcast()V

    goto :goto_0
.end method
