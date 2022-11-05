.class Lcom/smaato/soma/bannerutilities/g$c$6$1;
.super Lcom/smaato/soma/l;
.source "VideoChrome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/bannerutilities/g$c$6;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/smaato/soma/bannerutilities/g$c$6;


# direct methods
.method constructor <init>(Lcom/smaato/soma/bannerutilities/g$c$6;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/g$c$6$1;->a:Lcom/smaato/soma/bannerutilities/g$c$6;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 219
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "Banner Client"

    iget-object v2, p0, Lcom/smaato/soma/bannerutilities/g$c$6$1;->a:Lcom/smaato/soma/bannerutilities/g$c$6;

    iget-object v2, v2, Lcom/smaato/soma/bannerutilities/g$c$6;->b:Lcom/smaato/soma/bannerutilities/g$c;

    iget-object v3, p0, Lcom/smaato/soma/bannerutilities/g$c$6$1;->a:Lcom/smaato/soma/bannerutilities/g$c$6;

    iget-object v3, v3, Lcom/smaato/soma/bannerutilities/g$c$6;->a:Ljava/lang/String;

    .line 220
    invoke-static {v2, v3}, Lcom/smaato/soma/bannerutilities/g$c;->a(Lcom/smaato/soma/bannerutilities/g$c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    .line 219
    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/smaato/soma/bannerutilities/g$c$6$1;->a:Lcom/smaato/soma/bannerutilities/g$c$6;

    iget-object v2, v2, Lcom/smaato/soma/bannerutilities/g$c$6;->a:Ljava/lang/String;

    .line 224
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 225
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 226
    iget-object v1, p0, Lcom/smaato/soma/bannerutilities/g$c$6$1;->a:Lcom/smaato/soma/bannerutilities/g$c$6;

    iget-object v1, v1, Lcom/smaato/soma/bannerutilities/g$c$6;->b:Lcom/smaato/soma/bannerutilities/g$c;

    iget-object v1, v1, Lcom/smaato/soma/bannerutilities/g$c;->a:Lcom/smaato/soma/bannerutilities/g;

    invoke-static {v1}, Lcom/smaato/soma/bannerutilities/g;->a(Lcom/smaato/soma/bannerutilities/g;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 227
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
    .line 216
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/g$c$6$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
