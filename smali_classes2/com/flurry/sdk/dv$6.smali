.class final Lcom/flurry/sdk/dv$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/dv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kh",
        "<",
        "Lcom/flurry/sdk/dx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dv;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dv;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/flurry/sdk/dv$6;->a:Lcom/flurry/sdk/dv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 2

    .prologue
    .line 138
    check-cast p1, Lcom/flurry/sdk/dx;

    .line 1142
    iget-object v0, p0, Lcom/flurry/sdk/dv$6;->a:Lcom/flurry/sdk/dv;

    invoke-static {v0}, Lcom/flurry/sdk/dv;->f(Lcom/flurry/sdk/dv;)Lcom/flurry/sdk/dw;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/dx;->a:Lcom/flurry/sdk/dw;

    if-ne v0, v1, :cond_1

    .line 1143
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dv$6$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dv$6$1;-><init>(Lcom/flurry/sdk/dv$6;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/dv$6;->a:Lcom/flurry/sdk/dv;

    invoke-static {v0}, Lcom/flurry/sdk/dv;->h(Lcom/flurry/sdk/dv;)Lcom/flurry/sdk/dw;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/dx;->a:Lcom/flurry/sdk/dw;

    if-ne v0, v1, :cond_0

    .line 1150
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dv$6$2;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/dv$6$2;-><init>(Lcom/flurry/sdk/dv$6;Lcom/flurry/sdk/dx;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
