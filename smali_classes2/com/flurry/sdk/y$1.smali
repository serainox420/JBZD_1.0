.class final Lcom/flurry/sdk/y$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/y;
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
        "Lcom/flurry/sdk/ac;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/y;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/y;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/flurry/sdk/y$1;->a:Lcom/flurry/sdk/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 2

    .prologue
    .line 27
    check-cast p1, Lcom/flurry/sdk/ac;

    .line 1030
    sget-object v0, Lcom/flurry/sdk/ac$a;->e:Lcom/flurry/sdk/ac$a;

    iget-object v1, p1, Lcom/flurry/sdk/ac;->a:Lcom/flurry/sdk/ac$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ac$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/flurry/sdk/y$1;->a:Lcom/flurry/sdk/y;

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->c()V

    .line 27
    :cond_0
    return-void
.end method
