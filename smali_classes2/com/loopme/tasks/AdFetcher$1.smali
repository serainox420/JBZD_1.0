.class Lcom/loopme/tasks/AdFetcher$1;
.super Ljava/lang/Object;
.source "AdFetcher.java"

# interfaces
.implements Lcom/loopme/common/ResponseParser$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/tasks/AdFetcher;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/tasks/AdFetcher;


# direct methods
.method constructor <init>(Lcom/loopme/tasks/AdFetcher;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/loopme/tasks/AdFetcher$1;->this$0:Lcom/loopme/tasks/AdFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParseError(Lcom/loopme/common/LoopMeError;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/loopme/tasks/AdFetcher$1;->this$0:Lcom/loopme/tasks/AdFetcher;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/loopme/tasks/AdFetcher;->access$000(Lcom/loopme/tasks/AdFetcher;Lcom/loopme/common/AdParams;Lcom/loopme/common/LoopMeError;)V

    .line 63
    return-void
.end method
