.class Lcom/intentsoftware/addapptr/d$1;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/d;->createTimeoutCallback()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/d;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/d;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/intentsoftware/addapptr/d$1;->this$0:Lcom/intentsoftware/addapptr/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/intentsoftware/addapptr/d$1;->this$0:Lcom/intentsoftware/addapptr/d;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/d;->access$000(Lcom/intentsoftware/addapptr/d;)Lcom/intentsoftware/addapptr/ad/a;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/intentsoftware/addapptr/d$1;->this$0:Lcom/intentsoftware/addapptr/d;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/d;->access$100(Lcom/intentsoftware/addapptr/d;)V

    .line 220
    iget-object v1, p0, Lcom/intentsoftware/addapptr/d$1;->this$0:Lcom/intentsoftware/addapptr/d;

    const-string v2, "timeout reached"

    invoke-virtual {v1, v0, v2}, Lcom/intentsoftware/addapptr/d;->onFailedToLoadAd(Lcom/intentsoftware/addapptr/ad/a;Ljava/lang/String;)V

    .line 221
    return-void
.end method
