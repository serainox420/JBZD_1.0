.class Lcom/smaato/soma/internal/connector/OrmmaBridge$14;
.super Lcom/smaato/soma/l;
.source "OrmmaBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/connector/OrmmaBridge;->redirectPage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/smaato/soma/internal/connector/OrmmaBridge;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/connector/OrmmaBridge;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$14;->b:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    iput-object p2, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$14;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/high16 v5, 0x10000000

    const/4 v4, 0x1

    .line 310
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 311
    iget-object v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$14;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$14;->b:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    const-string v1, "redirection"

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->isUserClicked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 313
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "SOMA_Bridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$14;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in external browser."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->INFO:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 319
    iget-object v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$14;->b:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    iget-object v1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$14;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->a(Lcom/smaato/soma/internal/connector/OrmmaBridge;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$14;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$14;->a:Ljava/lang/String;

    const-string v2, "about:blank"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 324
    iget-object v1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$14;->b:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    invoke-static {v1}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->c(Lcom/smaato/soma/internal/connector/OrmmaBridge;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$14;->b:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    invoke-static {v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->b(Lcom/smaato/soma/internal/connector/OrmmaBridge;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$14;->b:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    invoke-static {v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->b(Lcom/smaato/soma/internal/connector/OrmmaBridge;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->j()Lcom/smaato/soma/j;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$14;->b:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    invoke-static {v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->d(Lcom/smaato/soma/internal/connector/OrmmaBridge;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$14;->b:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    invoke-static {v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->b(Lcom/smaato/soma/internal/connector/OrmmaBridge;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->j()Lcom/smaato/soma/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerAnimatorHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    .line 337
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$14;->b:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    invoke-static {v1}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->b(Lcom/smaato/soma/internal/connector/OrmmaBridge;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/bannerutilities/a;->j()Lcom/smaato/soma/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/j;->getBannerAnimatorHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 355
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 328
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$14;->a:Ljava/lang/String;

    .line 329
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 330
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 331
    iget-object v1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$14;->b:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    invoke-static {v1}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->c(Lcom/smaato/soma/internal/connector/OrmmaBridge;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 346
    :cond_3
    iget-object v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$14;->b:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    sget-object v1, Lcom/smaato/soma/measurements/FraudesType;->AUTO_REDIRECT:Lcom/smaato/soma/measurements/FraudesType;

    iget-object v2, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$14;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->reportViolation(Lcom/smaato/soma/measurements/FraudesType;Ljava/lang/String;)Z

    .line 348
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "SOMA_Bridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$14;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in external browser."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed. User click not detected ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->WARNING:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_1

    .line 326
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$14;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
