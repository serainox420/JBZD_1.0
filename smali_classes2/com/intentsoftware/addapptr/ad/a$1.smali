.class Lcom/intentsoftware/addapptr/ad/a$1;
.super Ljava/lang/Object;
.source "Ad.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/ad/a;->notifyListenerThatAdWasLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/ad/a;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/ad/a;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/intentsoftware/addapptr/ad/a$1;->this$0:Lcom/intentsoftware/addapptr/ad/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/intentsoftware/addapptr/ad/a$1;->this$0:Lcom/intentsoftware/addapptr/ad/a;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/ad/a;->access$000(Lcom/intentsoftware/addapptr/ad/a;)Lcom/intentsoftware/addapptr/ad/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/intentsoftware/addapptr/ad/a$1;->this$0:Lcom/intentsoftware/addapptr/ad/a;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/ad/a;->access$000(Lcom/intentsoftware/addapptr/ad/a;)Lcom/intentsoftware/addapptr/ad/c;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/ad/a$1;->this$0:Lcom/intentsoftware/addapptr/ad/a;

    invoke-interface {v0, v1}, Lcom/intentsoftware/addapptr/ad/c;->onAdLoaded(Lcom/intentsoftware/addapptr/ad/a;)V

    .line 53
    :cond_0
    return-void
.end method
