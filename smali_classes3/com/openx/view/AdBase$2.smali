.class Lcom/openx/view/AdBase$2;
.super Ljava/util/TimerTask;
.source "AdBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/AdBase;->createCurrentTimerTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/AdBase;


# direct methods
.method constructor <init>(Lcom/openx/view/AdBase;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/openx/view/AdBase$2;->this$0:Lcom/openx/view/AdBase;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 629
    const-string v0, "AdBase"

    const-string v1, "Attempting...timertask loadview....0"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/openx/view/AdBase$2;->this$0:Lcom/openx/view/AdBase;

    invoke-static {v0}, Lcom/openx/view/AdBase;->access$000(Lcom/openx/view/AdBase;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 633
    invoke-virtual {p0}, Lcom/openx/view/AdBase$2;->cancel()Z

    .line 654
    :goto_0
    return-void

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/openx/view/AdBase$2;->this$0:Lcom/openx/view/AdBase;

    new-instance v1, Lcom/openx/view/AdBase$2$1;

    invoke-direct {v1, p0}, Lcom/openx/view/AdBase$2$1;-><init>(Lcom/openx/view/AdBase$2;)V

    invoke-virtual {v0, v1}, Lcom/openx/view/AdBase;->queueUIThreadTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
