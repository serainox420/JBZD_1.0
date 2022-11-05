.class Lcom/intentsoftware/addapptr/a/b$4;
.super Ljava/lang/Object;
.source "ConfigDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/a/b;->loadInitialConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/a/b;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/a/b;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/intentsoftware/addapptr/a/b$4;->this$0:Lcom/intentsoftware/addapptr/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b$4;->this$0:Lcom/intentsoftware/addapptr/a/b;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/a/b;->access$800(Lcom/intentsoftware/addapptr/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b$4;->this$0:Lcom/intentsoftware/addapptr/a/b;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/a/b;->access$900(Lcom/intentsoftware/addapptr/a/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b$4;->this$0:Lcom/intentsoftware/addapptr/a/b;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/a/b$4;->this$0:Lcom/intentsoftware/addapptr/a/b;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/a/b;->access$900(Lcom/intentsoftware/addapptr/a/b;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/intentsoftware/addapptr/a/b$b;->DEFAULT:Lcom/intentsoftware/addapptr/a/b$b;

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/a/b;->access$300(Lcom/intentsoftware/addapptr/a/b;Ljava/lang/String;Lcom/intentsoftware/addapptr/a/b$b;)V

    .line 442
    :cond_0
    return-void
.end method
