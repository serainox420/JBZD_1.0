.class Lcom/intentsoftware/addapptr/q$1;
.super Ljava/lang/Object;
.source "NativePlacement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/q;->postOnNoConfigFailTimeoutAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/q;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/q;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/intentsoftware/addapptr/q$1;->this$0:Lcom/intentsoftware/addapptr/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q$1;->this$0:Lcom/intentsoftware/addapptr/q;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/q;->onNoConfigTimeoutAction()V

    .line 264
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q$1;->this$0:Lcom/intentsoftware/addapptr/q;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/q;->access$000(Lcom/intentsoftware/addapptr/q;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 265
    return-void
.end method
