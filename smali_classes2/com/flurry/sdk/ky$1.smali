.class final Lcom/flurry/sdk/ky$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ky;
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
        "Lcom/flurry/sdk/jq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ky;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ky;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/flurry/sdk/ky$1;->a:Lcom/flurry/sdk/ky;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 4

    .prologue
    .line 40
    check-cast p1, Lcom/flurry/sdk/jq;

    .line 1043
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/flurry/sdk/ky$1;->a:Lcom/flurry/sdk/ky;

    iget-object v1, v1, Lcom/flurry/sdk/ky;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onNetworkStateChanged : isNetworkEnable = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p1, Lcom/flurry/sdk/jq;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1044
    iget-boolean v0, p1, Lcom/flurry/sdk/jq;->a:Z

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/flurry/sdk/ky$1;->a:Lcom/flurry/sdk/ky;

    .line 1120
    invoke-virtual {v0}, Lcom/flurry/sdk/ky;->b()V

    .line 40
    :cond_0
    return-void
.end method
