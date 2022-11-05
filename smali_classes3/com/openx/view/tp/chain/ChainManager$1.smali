.class Lcom/openx/view/tp/chain/ChainManager$1;
.super Ljava/lang/Object;
.source "ChainManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/tp/chain/ChainManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/tp/chain/ChainManager;


# direct methods
.method constructor <init>(Lcom/openx/view/tp/chain/ChainManager;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/openx/view/tp/chain/ChainManager$1;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 94
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$1;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v0}, Lcom/openx/view/tp/chain/ChainManager;->access$000(Lcom/openx/view/tp/chain/ChainManager;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$1;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v0}, Lcom/openx/view/tp/chain/ChainManager;->access$100(Lcom/openx/view/tp/chain/ChainManager;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/openx/view/tp/chain/ChainManager$1;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v2}, Lcom/openx/view/tp/chain/ChainManager;->access$100(Lcom/openx/view/tp/chain/ChainManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/openx/view/tp/chain/ChainManager$1;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v2}, Lcom/openx/view/tp/chain/ChainManager;->access$200(Lcom/openx/view/tp/chain/ChainManager;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$1;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    iget v0, v0, Lcom/openx/view/tp/chain/ChainManager;->chainIndex:I

    iget-object v1, p0, Lcom/openx/view/tp/chain/ChainManager$1;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v1}, Lcom/openx/view/tp/chain/ChainManager;->access$300(Lcom/openx/view/tp/chain/ChainManager;)Lcom/openx/view/tp/chain/parser/ChainResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openx/view/tp/chain/parser/ChainResponse;->getAds()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 97
    const-string v0, "ChainManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send rdf: timeout occurred : in init(): Timeout was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/view/tp/chain/ChainManager$1;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v2}, Lcom/openx/view/tp/chain/ChainManager;->access$200(Lcom/openx/view/tp/chain/ChainManager;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Trying to load item(chainIndex): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/view/tp/chain/ChainManager$1;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    iget v2, v2, Lcom/openx/view/tp/chain/ChainManager;->chainIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "from the chain"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$1;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    const-string v1, "rdf"

    invoke-virtual {v0, v1}, Lcom/openx/view/tp/chain/ChainManager;->record(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$1;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v0}, Lcom/openx/view/tp/chain/ChainManager;->access$400(Lcom/openx/view/tp/chain/ChainManager;)Lcom/openx/view/tp/adapters/AdapterBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/view/tp/adapters/AdapterBase;->cleanUp()V

    .line 102
    iget-object v1, p0, Lcom/openx/view/tp/chain/ChainManager$1;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$1;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v0}, Lcom/openx/view/tp/chain/ChainManager;->access$300(Lcom/openx/view/tp/chain/ChainManager;)Lcom/openx/view/tp/chain/parser/ChainResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/view/tp/chain/parser/ChainResponse;->getAds()Ljava/util/Vector;

    move-result-object v0

    iget-object v2, p0, Lcom/openx/view/tp/chain/ChainManager$1;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    iget v2, v2, Lcom/openx/view/tp/chain/ChainManager;->chainIndex:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/view/tp/chain/parser/ChainItem;

    invoke-virtual {v1, v0}, Lcom/openx/view/tp/chain/ChainManager;->loadThirdPartyAd(Lcom/openx/view/tp/chain/parser/ChainItem;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$1;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v0}, Lcom/openx/view/tp/chain/ChainManager;->access$000(Lcom/openx/view/tp/chain/ChainManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$1;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v0}, Lcom/openx/view/tp/chain/ChainManager;->access$100(Lcom/openx/view/tp/chain/ChainManager;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 107
    const-string v0, "ChainManager"

    const-string v1, "no time out yet...check in a second..."

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$1;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v0}, Lcom/openx/view/tp/chain/ChainManager;->access$500(Lcom/openx/view/tp/chain/ChainManager;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
