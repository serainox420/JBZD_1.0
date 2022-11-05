.class Lcom/intentsoftware/addapptr/c/l$1;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/c/l;->createUpdateRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/c/l;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/c/l;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/intentsoftware/addapptr/c/l$1;->this$0:Lcom/intentsoftware/addapptr/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c/l$1;->this$0:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->reset()V

    .line 111
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c/l$1;->this$0:Lcom/intentsoftware/addapptr/c/l;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/l;->access$000(Lcom/intentsoftware/addapptr/c/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c/l$1;->this$0:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->start()V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c/l$1;->this$0:Lcom/intentsoftware/addapptr/c/l;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/l;->access$100(Lcom/intentsoftware/addapptr/c/l;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 116
    return-void
.end method
