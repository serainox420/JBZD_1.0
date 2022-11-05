.class Lcom/intentsoftware/addapptr/x$1;
.super Ljava/lang/Object;
.source "Reporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/x;-><init>(Lcom/intentsoftware/addapptr/ab;Lcom/intentsoftware/addapptr/ac;Lcom/intentsoftware/addapptr/aa;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/x;

.field final synthetic val$placements:Ljava/util/List;

.field final synthetic val$sessionController:Lcom/intentsoftware/addapptr/aa;

.field final synthetic val$sessionReporter:Lcom/intentsoftware/addapptr/ab;

.field final synthetic val$statisticsReporter:Lcom/intentsoftware/addapptr/ac;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/x;Lcom/intentsoftware/addapptr/aa;Lcom/intentsoftware/addapptr/ab;Ljava/util/List;Lcom/intentsoftware/addapptr/ac;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/intentsoftware/addapptr/x$1;->this$0:Lcom/intentsoftware/addapptr/x;

    iput-object p2, p0, Lcom/intentsoftware/addapptr/x$1;->val$sessionController:Lcom/intentsoftware/addapptr/aa;

    iput-object p3, p0, Lcom/intentsoftware/addapptr/x$1;->val$sessionReporter:Lcom/intentsoftware/addapptr/ab;

    iput-object p4, p0, Lcom/intentsoftware/addapptr/x$1;->val$placements:Ljava/util/List;

    iput-object p5, p0, Lcom/intentsoftware/addapptr/x$1;->val$statisticsReporter:Lcom/intentsoftware/addapptr/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 29
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/intentsoftware/addapptr/x$1;->this$0:Lcom/intentsoftware/addapptr/x;

    const-string v1, "Sending reports to the server."

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/x$1;->val$sessionController:Lcom/intentsoftware/addapptr/aa;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/aa;->finishSession()V

    .line 33
    iget-object v0, p0, Lcom/intentsoftware/addapptr/x$1;->val$sessionReporter:Lcom/intentsoftware/addapptr/ab;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/x$1;->val$sessionController:Lcom/intentsoftware/addapptr/aa;

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/aa;->getSessionDurationInSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/ab;->report(I)V

    .line 34
    iget-object v0, p0, Lcom/intentsoftware/addapptr/x$1;->val$placements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    .line 35
    iget-object v2, p0, Lcom/intentsoftware/addapptr/x$1;->val$sessionController:Lcom/intentsoftware/addapptr/aa;

    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/aa;->getSessionDurationInSeconds()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 36
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getStats()Lcom/intentsoftware/addapptr/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/v;->makeAdspacesCountEqualImpressions()V

    .line 38
    :cond_1
    iget-object v2, p0, Lcom/intentsoftware/addapptr/x$1;->val$statisticsReporter:Lcom/intentsoftware/addapptr/ac;

    invoke-virtual {v2, v0}, Lcom/intentsoftware/addapptr/ac;->report(Lcom/intentsoftware/addapptr/s;)V

    .line 39
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getStats()Lcom/intentsoftware/addapptr/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/v;->clearCurrentStatistics()V

    goto :goto_0

    .line 41
    :cond_2
    return-void
.end method
