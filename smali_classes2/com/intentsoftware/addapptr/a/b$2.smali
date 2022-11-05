.class Lcom/intentsoftware/addapptr/a/b$2;
.super Ljava/lang/Object;
.source "ConfigDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/a/b;->reportConfigDownloaded(Lcom/intentsoftware/addapptr/a/a;Ljava/lang/String;Lcom/intentsoftware/addapptr/a/b$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/a/b;

.field final synthetic val$config:Lcom/intentsoftware/addapptr/a/a;

.field final synthetic val$response:Ljava/lang/String;

.field final synthetic val$source:Lcom/intentsoftware/addapptr/a/b$b;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/a/b;Lcom/intentsoftware/addapptr/a/a;Lcom/intentsoftware/addapptr/a/b$b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/intentsoftware/addapptr/a/b$2;->this$0:Lcom/intentsoftware/addapptr/a/b;

    iput-object p2, p0, Lcom/intentsoftware/addapptr/a/b$2;->val$config:Lcom/intentsoftware/addapptr/a/a;

    iput-object p3, p0, Lcom/intentsoftware/addapptr/a/b$2;->val$source:Lcom/intentsoftware/addapptr/a/b$b;

    iput-object p4, p0, Lcom/intentsoftware/addapptr/a/b$2;->val$response:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 325
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b$2;->this$0:Lcom/intentsoftware/addapptr/a/b;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/a/b;->access$400(Lcom/intentsoftware/addapptr/a/b;)Lcom/intentsoftware/addapptr/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/intentsoftware/addapptr/a/b$2;->val$config:Lcom/intentsoftware/addapptr/a/a;

    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b$2;->val$source:Lcom/intentsoftware/addapptr/a/b$b;

    sget-object v3, Lcom/intentsoftware/addapptr/a/b$b;->SERVER:Lcom/intentsoftware/addapptr/a/b$b;

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/intentsoftware/addapptr/a/c;->onConfigDownloaded(Lcom/intentsoftware/addapptr/a/a;Z)V

    .line 326
    const-string v0, "LOGRULES"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Obtained following app rules: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/a/b$2;->val$response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/h;->log(Ljava/lang/String;)V

    .line 329
    :cond_0
    const-string v0, "LOGRULESLOAD"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loaded app rules: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/a/b$2;->val$source:Lcom/intentsoftware/addapptr/a/b$b;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/a/b$b;->access$500(Lcom/intentsoftware/addapptr/a/b$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/h;->log(Ljava/lang/String;)V

    .line 332
    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Obtained config from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/a/b$2;->val$source:Lcom/intentsoftware/addapptr/a/b$b;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/a/b$b;->access$500(Lcom/intentsoftware/addapptr/a/b$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/a/b$2;->val$response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    :cond_2
    return-void

    .line 325
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
