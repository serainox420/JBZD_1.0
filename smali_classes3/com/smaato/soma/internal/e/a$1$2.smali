.class Lcom/smaato/soma/internal/e/a$1$2;
.super Lcom/smaato/soma/l;
.source "CustomWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/e/a$1;->c()V
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
.field final synthetic a:Lcom/smaato/soma/internal/e/a$1;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/e/a$1;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/smaato/soma/internal/e/a$1$2;->a:Lcom/smaato/soma/internal/e/a$1;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-static {}, Lcom/smaato/soma/internal/e/a;->e()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/smaato/soma/internal/e/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$1$2;->a:Lcom/smaato/soma/internal/e/a$1;

    iget-object v0, v0, Lcom/smaato/soma/internal/e/a$1;->b:Lcom/smaato/soma/internal/e/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/e/a;->c(Lcom/smaato/soma/internal/e/a;)V

    .line 149
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$1$2;->a:Lcom/smaato/soma/internal/e/a$1;

    iget-object v0, v0, Lcom/smaato/soma/internal/e/a$1;->b:Lcom/smaato/soma/internal/e/a;

    invoke-static {v0, v2}, Lcom/smaato/soma/internal/e/a;->a(Lcom/smaato/soma/internal/e/a;Z)Z

    .line 155
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$1$2;->a:Lcom/smaato/soma/internal/e/a$1;

    iget-object v0, v0, Lcom/smaato/soma/internal/e/a$1;->b:Lcom/smaato/soma/internal/e/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/smaato/soma/internal/e/a;->a(Lcom/smaato/soma/internal/e/a;J)J

    .line 156
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_1
    invoke-static {}, Lcom/smaato/soma/internal/e/a;->e()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/smaato/soma/internal/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {v2}, Lcom/smaato/soma/internal/e/a;->a(Z)Z

    .line 152
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$1$2;->a:Lcom/smaato/soma/internal/e/a$1;

    iget-object v0, v0, Lcom/smaato/soma/internal/e/a$1;->b:Lcom/smaato/soma/internal/e/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/e/a;->d(Lcom/smaato/soma/internal/e/a;)Lcom/smaato/soma/internal/e/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/e/a$a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/smaato/soma/internal/e/a$1$2;->a:Lcom/smaato/soma/internal/e/a$1;

    iget-object v1, v1, Lcom/smaato/soma/internal/e/a$1;->b:Lcom/smaato/soma/internal/e/a;

    invoke-static {v1}, Lcom/smaato/soma/internal/e/a;->d(Lcom/smaato/soma/internal/e/a;)Lcom/smaato/soma/internal/e/a$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 153
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$1$2;->a:Lcom/smaato/soma/internal/e/a$1;

    iget-object v0, v0, Lcom/smaato/soma/internal/e/a$1;->b:Lcom/smaato/soma/internal/e/a;

    invoke-static {v0, v2}, Lcom/smaato/soma/internal/e/a;->a(Lcom/smaato/soma/internal/e/a;Z)Z

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
    .line 144
    invoke-virtual {p0}, Lcom/smaato/soma/internal/e/a$1$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
