.class final Lcom/flurry/sdk/h$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/flurry/sdk/ba;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 43
    const-string v0, "playVideo"

    sget-object v1, Lcom/flurry/sdk/ba;->u:Lcom/flurry/sdk/ba;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/h$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "open"

    sget-object v1, Lcom/flurry/sdk/ba;->v:Lcom/flurry/sdk/ba;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/h$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "expand"

    sget-object v1, Lcom/flurry/sdk/ba;->s:Lcom/flurry/sdk/ba;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/h$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v0, "collapse"

    sget-object v1, Lcom/flurry/sdk/ba;->t:Lcom/flurry/sdk/ba;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/h$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method
