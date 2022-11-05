.class Lcom/smaato/soma/s$5;
.super Lcom/smaato/soma/l;
.source "ToasterBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/s;->e()V
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
.field final synthetic a:Lcom/smaato/soma/s;


# direct methods
.method constructor <init>(Lcom/smaato/soma/s;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/smaato/soma/s$5;->a:Lcom/smaato/soma/s;

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
    .line 288
    invoke-static {}, Lcom/smaato/soma/internal/c/c;->a()Lcom/smaato/soma/internal/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/c/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/smaato/soma/s$5;->a:Lcom/smaato/soma/s;

    invoke-static {v0}, Lcom/smaato/soma/s;->a(Lcom/smaato/soma/s;)V

    .line 290
    invoke-static {}, Lcom/smaato/soma/internal/c/c;->a()Lcom/smaato/soma/internal/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/c/c;->c()V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/s$5;->a:Lcom/smaato/soma/s;

    invoke-virtual {v0}, Lcom/smaato/soma/s;->b()V

    .line 293
    iget-object v0, p0, Lcom/smaato/soma/s$5;->a:Lcom/smaato/soma/s;

    invoke-static {v0}, Lcom/smaato/soma/s;->b(Lcom/smaato/soma/s;)Lcom/smaato/soma/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/b/c;->e()V

    .line 294
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 295
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
    .line 285
    invoke-virtual {p0}, Lcom/smaato/soma/s$5;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
