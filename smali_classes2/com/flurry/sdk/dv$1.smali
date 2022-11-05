.class final Lcom/flurry/sdk/dv$1;
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
        "Lcom/flurry/sdk/ls;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dv;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dv;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/flurry/sdk/dv$1;->a:Lcom/flurry/sdk/dv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 2

    .prologue
    .line 91
    .line 1094
    sget-object v0, Lcom/flurry/sdk/dv$a;->b:Lcom/flurry/sdk/dv$a;

    iget-object v1, p0, Lcom/flurry/sdk/dv$1;->a:Lcom/flurry/sdk/dv;

    invoke-static {v1}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/dv;)Lcom/flurry/sdk/dv$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dv$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1095
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dv$1$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dv$1$1;-><init>(Lcom/flurry/sdk/dv$1;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1101
    :cond_1
    sget-object v0, Lcom/flurry/sdk/dv$a;->d:Lcom/flurry/sdk/dv$a;

    iget-object v1, p0, Lcom/flurry/sdk/dv$1;->a:Lcom/flurry/sdk/dv;

    invoke-static {v1}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/dv;)Lcom/flurry/sdk/dv$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dv$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1102
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dv$1$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dv$1$2;-><init>(Lcom/flurry/sdk/dv$1;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1108
    :cond_2
    sget-object v0, Lcom/flurry/sdk/dv$a;->e:Lcom/flurry/sdk/dv$a;

    iget-object v1, p0, Lcom/flurry/sdk/dv$1;->a:Lcom/flurry/sdk/dv;

    invoke-static {v1}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/dv;)Lcom/flurry/sdk/dv$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dv$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1109
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dv$1$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dv$1$3;-><init>(Lcom/flurry/sdk/dv$1;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1115
    :cond_3
    sget-object v0, Lcom/flurry/sdk/dv$a;->h:Lcom/flurry/sdk/dv$a;

    iget-object v1, p0, Lcom/flurry/sdk/dv$1;->a:Lcom/flurry/sdk/dv;

    invoke-static {v1}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/dv;)Lcom/flurry/sdk/dv$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dv$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1116
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dv$1$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dv$1$4;-><init>(Lcom/flurry/sdk/dv$1;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
