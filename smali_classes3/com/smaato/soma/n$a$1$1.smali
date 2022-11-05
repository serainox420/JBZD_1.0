.class Lcom/smaato/soma/n$a$1$1;
.super Lcom/smaato/soma/l;
.source "FullScreenBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/n$a$1;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic a:Lcom/smaato/soma/n$a$1;


# direct methods
.method constructor <init>(Lcom/smaato/soma/n$a$1;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/smaato/soma/n$a$1$1;->a:Lcom/smaato/soma/n$a$1;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/smaato/soma/n$a$1$1;->a:Lcom/smaato/soma/n$a$1;

    iget-object v0, v0, Lcom/smaato/soma/n$a$1;->a:Lcom/smaato/soma/n$a;

    iget-object v0, v0, Lcom/smaato/soma/n$a;->a:Lcom/smaato/soma/n;

    iget-object v0, v0, Lcom/smaato/soma/n;->a:Lcom/smaato/soma/e;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/smaato/soma/n$a$1$1;->a:Lcom/smaato/soma/n$a$1;

    iget-object v0, v0, Lcom/smaato/soma/n$a$1;->a:Lcom/smaato/soma/n$a;

    iget-object v0, v0, Lcom/smaato/soma/n$a;->a:Lcom/smaato/soma/n;

    iget-object v0, v0, Lcom/smaato/soma/n;->a:Lcom/smaato/soma/e;

    invoke-interface {v0}, Lcom/smaato/soma/e;->b()V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/n$a$1$1;->a:Lcom/smaato/soma/n$a$1;

    iget-object v0, v0, Lcom/smaato/soma/n$a$1;->a:Lcom/smaato/soma/n$a;

    iget-object v0, v0, Lcom/smaato/soma/n$a;->a:Lcom/smaato/soma/n;

    invoke-virtual {v0}, Lcom/smaato/soma/n;->c()V

    .line 221
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
    .line 214
    invoke-virtual {p0}, Lcom/smaato/soma/n$a$1$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
