.class Lcom/smaato/soma/n$a$2$1;
.super Lcom/smaato/soma/l;
.source "FullScreenBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/n$a$2;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic a:Landroid/content/DialogInterface;

.field final synthetic b:Lcom/smaato/soma/n$a$2;


# direct methods
.method constructor <init>(Lcom/smaato/soma/n$a$2;Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/smaato/soma/n$a$2$1;->b:Lcom/smaato/soma/n$a$2;

    iput-object p2, p0, Lcom/smaato/soma/n$a$2$1;->a:Landroid/content/DialogInterface;

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
    .line 234
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/smaato/soma/n$a$2$1;->b:Lcom/smaato/soma/n$a$2;

    iget-object v2, v2, Lcom/smaato/soma/n$a$2;->a:Lcom/smaato/soma/n$a;

    iget-object v2, v2, Lcom/smaato/soma/n$a;->a:Lcom/smaato/soma/n;

    .line 235
    invoke-static {v2}, Lcom/smaato/soma/n;->b(Lcom/smaato/soma/n;)Lcom/smaato/soma/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/smaato/soma/p;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 236
    iget-object v1, p0, Lcom/smaato/soma/n$a$2$1;->b:Lcom/smaato/soma/n$a$2;

    iget-object v1, v1, Lcom/smaato/soma/n$a$2;->a:Lcom/smaato/soma/n$a;

    iget-object v1, v1, Lcom/smaato/soma/n$a;->a:Lcom/smaato/soma/n;

    iget-object v1, v1, Lcom/smaato/soma/n;->a:Lcom/smaato/soma/e;

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/smaato/soma/n$a$2$1;->b:Lcom/smaato/soma/n$a$2;

    iget-object v1, v1, Lcom/smaato/soma/n$a$2;->a:Lcom/smaato/soma/n$a;

    iget-object v1, v1, Lcom/smaato/soma/n$a;->a:Lcom/smaato/soma/n;

    iget-object v1, v1, Lcom/smaato/soma/n;->a:Lcom/smaato/soma/e;

    invoke-interface {v1}, Lcom/smaato/soma/e;->a()V

    .line 239
    :cond_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 240
    iget-object v1, p0, Lcom/smaato/soma/n$a$2$1;->b:Lcom/smaato/soma/n$a$2;

    iget-object v1, v1, Lcom/smaato/soma/n$a$2;->a:Lcom/smaato/soma/n$a;

    invoke-virtual {v1}, Lcom/smaato/soma/n$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 241
    iget-object v0, p0, Lcom/smaato/soma/n$a$2$1;->a:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/smaato/soma/n$a$2$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
