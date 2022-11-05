.class Lcom/openx/view/AdBase$2$1;
.super Ljava/lang/Object;
.source "AdBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/AdBase$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openx/view/AdBase$2;


# direct methods
.method constructor <init>(Lcom/openx/view/AdBase$2;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Lcom/openx/view/AdBase$2$1;->this$1:Lcom/openx/view/AdBase$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 643
    const-string v0, "AdBase"

    const-string v1, "Attempting...timertask loadview....1"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/openx/view/AdBase$2$1;->this$1:Lcom/openx/view/AdBase$2;

    iget-object v0, v0, Lcom/openx/view/AdBase$2;->this$0:Lcom/openx/view/AdBase;

    iget-boolean v0, v0, Lcom/openx/view/AdBase;->screenOn:Z

    if-eqz v0, :cond_0

    .line 647
    const-string v0, "AdBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimerTask: loadView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/view/AdBase$2$1;->this$1:Lcom/openx/view/AdBase$2;

    iget-object v2, v2, Lcom/openx/view/AdBase$2;->this$0:Lcom/openx/view/AdBase;

    iget v2, v2, Lcom/openx/view/AdBase;->interval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/openx/view/AdBase$2$1;->this$1:Lcom/openx/view/AdBase$2;

    iget-object v0, v0, Lcom/openx/view/AdBase$2;->this$0:Lcom/openx/view/AdBase;

    invoke-virtual {v0}, Lcom/openx/view/AdBase;->loadView()V

    .line 652
    :cond_0
    return-void
.end method
