.class Lcom/smaato/soma/internal/connector/OrmmaBridge$3$1;
.super Ljava/lang/Object;
.source "OrmmaBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/connector/OrmmaBridge$3;->a()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/internal/connector/OrmmaBridge$3;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/connector/OrmmaBridge$3;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$3$1;->a:Lcom/smaato/soma/internal/connector/OrmmaBridge$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 552
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$3$1;->a:Lcom/smaato/soma/internal/connector/OrmmaBridge$3;

    iget-object v0, v0, Lcom/smaato/soma/internal/connector/OrmmaBridge$3;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$3$1;->a:Lcom/smaato/soma/internal/connector/OrmmaBridge$3;

    iget-object v0, v0, Lcom/smaato/soma/internal/connector/OrmmaBridge$3;->a:Ljava/lang/String;

    const-string v1, "undefined"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$3$1;->a:Lcom/smaato/soma/internal/connector/OrmmaBridge$3;

    iget-object v1, v1, Lcom/smaato/soma/internal/connector/OrmmaBridge$3;->b:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    invoke-static {v1}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->c(Lcom/smaato/soma/internal/connector/OrmmaBridge;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 554
    const-string v1, "Do you want to save this picture into your photo album ?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 555
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Yes"

    new-instance v3, Lcom/smaato/soma/internal/connector/OrmmaBridge$3$1$2;

    invoke-direct {v3, p0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$3$1$2;-><init>(Lcom/smaato/soma/internal/connector/OrmmaBridge$3$1;)V

    .line 556
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "No"

    new-instance v3, Lcom/smaato/soma/internal/connector/OrmmaBridge$3$1$1;

    invoke-direct {v3, p0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$3$1$1;-><init>(Lcom/smaato/soma/internal/connector/OrmmaBridge$3$1;)V

    .line 570
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 583
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 584
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 597
    :goto_0
    return-void

    .line 586
    :cond_0
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "SOMA_Bridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$3$1;->a:Lcom/smaato/soma/internal/connector/OrmmaBridge$3;

    iget-object v3, v3, Lcom/smaato/soma/internal/connector/OrmmaBridge$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->WARNING:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 591
    :catch_0
    move-exception v0

    .line 592
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "SOMA_Bridge"

    const-string v2, "Unable to Store Picture !!"

    const/4 v3, 0x2

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->WARNING:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_0
.end method
