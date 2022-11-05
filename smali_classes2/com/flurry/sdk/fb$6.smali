.class final Lcom/flurry/sdk/fb$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fb;
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
        "Lcom/flurry/sdk/eh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/fb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fb;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/flurry/sdk/fb$6;->a:Lcom/flurry/sdk/fb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 2

    .prologue
    .line 322
    check-cast p1, Lcom/flurry/sdk/eh;

    .line 1327
    iget v0, p1, Lcom/flurry/sdk/eh;->c:I

    iget-object v1, p0, Lcom/flurry/sdk/fb$6;->a:Lcom/flurry/sdk/fb;

    invoke-static {v1}, Lcom/flurry/sdk/fb;->d(Lcom/flurry/sdk/fb;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/flurry/sdk/eh;->b:I

    if-nez v0, :cond_1

    .line 1328
    :cond_0
    :goto_0
    return-void

    .line 1331
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/fb$6$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/fb$6$1;-><init>(Lcom/flurry/sdk/fb$6;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
