.class Lcom/intentsoftware/addapptr/ad/a$7;
.super Ljava/lang/Object;
.source "Ad.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/ad/a;->fallbackNotifyListenerThatAdWasDismissed()V
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
    .line 125
    iput-object p1, p0, Lcom/intentsoftware/addapptr/ad/a$7;->this$0:Lcom/intentsoftware/addapptr/ad/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/intentsoftware/addapptr/ad/a$7;->this$0:Lcom/intentsoftware/addapptr/ad/a;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/ad/a;->access$200(Lcom/intentsoftware/addapptr/ad/a;)Lcom/intentsoftware/addapptr/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/intentsoftware/addapptr/ad/a$7;->this$0:Lcom/intentsoftware/addapptr/ad/a;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/ad/a;->access$200(Lcom/intentsoftware/addapptr/ad/a;)Lcom/intentsoftware/addapptr/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/intentsoftware/addapptr/n;->onAdDismissed()V

    .line 131
    :cond_0
    return-void
.end method
