.class Lcom/smaato/soma/n$1;
.super Lcom/smaato/soma/l;
.source "FullScreenBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/n;
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
.field final synthetic a:Lcom/smaato/soma/n;


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/smaato/soma/n$1;->a:Lcom/smaato/soma/n;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/smaato/soma/n$1;->a:Lcom/smaato/soma/n;

    invoke-virtual {v2}, Lcom/smaato/soma/n;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/smaato/soma/n;->a(Lcom/smaato/soma/n;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    .line 58
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
    .line 54
    invoke-virtual {p0}, Lcom/smaato/soma/n$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
