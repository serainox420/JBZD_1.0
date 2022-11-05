.class Lcom/intentsoftware/addapptr/ad/a$3;
.super Ljava/lang/Object;
.source "Ad.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/ad/a;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/ad/a;

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/ad/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/intentsoftware/addapptr/ad/a$3;->this$0:Lcom/intentsoftware/addapptr/ad/a;

    iput-object p2, p0, Lcom/intentsoftware/addapptr/ad/a$3;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/intentsoftware/addapptr/ad/a$3;->this$0:Lcom/intentsoftware/addapptr/ad/a;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/ad/a;->access$000(Lcom/intentsoftware/addapptr/ad/a;)Lcom/intentsoftware/addapptr/ad/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/intentsoftware/addapptr/ad/a$3;->this$0:Lcom/intentsoftware/addapptr/ad/a;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/ad/a;->access$000(Lcom/intentsoftware/addapptr/ad/a;)Lcom/intentsoftware/addapptr/ad/c;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/ad/a$3;->this$0:Lcom/intentsoftware/addapptr/ad/a;

    iget-object v2, p0, Lcom/intentsoftware/addapptr/ad/a$3;->val$reason:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad/c;->onFailedToLoadAd(Lcom/intentsoftware/addapptr/ad/a;Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method
