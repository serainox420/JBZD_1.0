.class final Lcom/flurry/sdk/jl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jl;
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
        "Lcom/flurry/sdk/ll;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/jl;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jl;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/flurry/sdk/jl$1;->a:Lcom/flurry/sdk/jl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 2

    .prologue
    .line 70
    check-cast p1, Lcom/flurry/sdk/ll;

    .line 1073
    sget-object v0, Lcom/flurry/sdk/jl$4;->a:[I

    iget v1, p1, Lcom/flurry/sdk/ll;->c:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 1076
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/sdk/jl$1;->a:Lcom/flurry/sdk/jl;

    invoke-virtual {v0}, Lcom/flurry/sdk/jl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jl$1$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jl$1$1;-><init>(Lcom/flurry/sdk/jl$1;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1073
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
