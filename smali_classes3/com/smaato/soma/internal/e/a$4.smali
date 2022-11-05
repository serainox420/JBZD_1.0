.class Lcom/smaato/soma/internal/e/a$4;
.super Lcom/smaato/soma/l;
.source "CustomWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/e/a;->a(Landroid/content/Context;Lcom/smaato/soma/p;)V
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/smaato/soma/p;

.field final synthetic c:Lcom/smaato/soma/internal/e/a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/e/a;Landroid/content/Context;Lcom/smaato/soma/p;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/smaato/soma/internal/e/a$4;->c:Lcom/smaato/soma/internal/e/a;

    iput-object p2, p0, Lcom/smaato/soma/internal/e/a$4;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/smaato/soma/internal/e/a$4;->b:Lcom/smaato/soma/p;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$4;->c:Lcom/smaato/soma/internal/e/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/e/a;->f(Lcom/smaato/soma/internal/e/a;)Lcom/smaato/soma/j;

    move-result-object v0

    instance-of v0, v0, Lcom/smaato/soma/interstitial/b;

    if-eqz v0, :cond_0

    .line 261
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$4;->c:Lcom/smaato/soma/internal/e/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/e/a;->f(Lcom/smaato/soma/internal/e/a;)Lcom/smaato/soma/j;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/b;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 265
    :goto_0
    const-string v1, "Do you want to inform Smaato about this ad ?\nAfter clicking on yes, and choosing the cause of the issue, an email will be automatically generated. The content of the email can be modified before sending it to the ad quality team."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 266
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 267
    const-string v1, "Yes"

    new-instance v2, Lcom/smaato/soma/internal/e/a$4$1;

    invoke-direct {v2, p0}, Lcom/smaato/soma/internal/e/a$4$1;-><init>(Lcom/smaato/soma/internal/e/a$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 356
    const-string v1, "No"

    new-instance v2, Lcom/smaato/soma/internal/e/a$4$2;

    invoke-direct {v2, p0}, Lcom/smaato/soma/internal/e/a$4$2;-><init>(Lcom/smaato/soma/internal/e/a$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 365
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 367
    const/4 v0, 0x0

    return-object v0

    .line 263
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/smaato/soma/internal/e/a$4;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/smaato/soma/internal/e/a$4;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
