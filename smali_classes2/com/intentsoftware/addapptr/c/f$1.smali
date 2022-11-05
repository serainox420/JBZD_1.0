.class Lcom/intentsoftware/addapptr/c/f$1;
.super Ljava/lang/Object;
.source "RetryingRequestListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/c/f;->onGetRequestError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/c/f;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/c/f;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/intentsoftware/addapptr/c/f$1;->this$0:Lcom/intentsoftware/addapptr/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 44
    new-instance v0, Lcom/intentsoftware/addapptr/b/b;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/c/f$1;->this$0:Lcom/intentsoftware/addapptr/c/f;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/f;->access$000(Lcom/intentsoftware/addapptr/c/f;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/intentsoftware/addapptr/c/f$1;->this$0:Lcom/intentsoftware/addapptr/c/f;

    invoke-static {v2}, Lcom/intentsoftware/addapptr/c/f;->access$100(Lcom/intentsoftware/addapptr/c/f;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/intentsoftware/addapptr/c/f$1;->this$0:Lcom/intentsoftware/addapptr/c/f;

    invoke-direct {v0, v1, v2, v3}, Lcom/intentsoftware/addapptr/b/b;-><init>(Ljava/lang/String;Ljava/util/HashMap;Lcom/intentsoftware/addapptr/b/b$a;)V

    .line 45
    return-void
.end method
