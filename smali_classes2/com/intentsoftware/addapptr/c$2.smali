.class Lcom/intentsoftware/addapptr/c$2;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Lcom/intentsoftware/addapptr/c/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/c;->enableDebugScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/c;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/c;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/intentsoftware/addapptr/c$2;->this$0:Lcom/intentsoftware/addapptr/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShake()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c$2;->this$0:Lcom/intentsoftware/addapptr/c;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->access$400(Lcom/intentsoftware/addapptr/c;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/intentsoftware/addapptr/c;->access$200()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/intentsoftware/addapptr/c;->access$200()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c$2;->this$0:Lcom/intentsoftware/addapptr/c;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->access$500(Lcom/intentsoftware/addapptr/c;)V

    .line 466
    :cond_0
    return-void
.end method
