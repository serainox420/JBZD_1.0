.class Lcom/smaato/soma/j$20$1$1;
.super Lcom/smaato/soma/l;
.source "BaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/j$20$1;->run()V
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
.field final synthetic a:Lcom/smaato/soma/j$20$1;


# direct methods
.method constructor <init>(Lcom/smaato/soma/j$20$1;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/smaato/soma/j$20$1$1;->a:Lcom/smaato/soma/j$20$1;

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
    .line 338
    iget-object v0, p0, Lcom/smaato/soma/j$20$1$1;->a:Lcom/smaato/soma/j$20$1;

    iget-object v0, v0, Lcom/smaato/soma/j$20$1;->a:Lcom/smaato/soma/j$20;

    iget-object v0, v0, Lcom/smaato/soma/j$20;->a:Lcom/smaato/soma/j;

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getLoadingState()Lcom/smaato/soma/internal/statemachine/LoadingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->b()Z

    move-result v0

    .line 339
    if-eqz v0, :cond_0

    .line 340
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 342
    :cond_0
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
    .line 335
    invoke-virtual {p0}, Lcom/smaato/soma/j$20$1$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
