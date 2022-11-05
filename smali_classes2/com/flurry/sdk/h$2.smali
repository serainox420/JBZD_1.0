.class final Lcom/flurry/sdk/h$2;
.super Ljava/util/HashSet;
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
        "Ljava/util/HashSet",
        "<",
        "Lcom/flurry/sdk/ba;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 54
    sget-object v0, Lcom/flurry/sdk/ba;->b:Lcom/flurry/sdk/ba;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/h$2;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/flurry/sdk/ba;->e:Lcom/flurry/sdk/ba;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/h$2;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/flurry/sdk/ba;->g:Lcom/flurry/sdk/ba;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/h$2;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/flurry/sdk/ba;->s:Lcom/flurry/sdk/ba;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/h$2;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/flurry/sdk/ba;->t:Lcom/flurry/sdk/ba;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/h$2;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/flurry/sdk/ba;->h:Lcom/flurry/sdk/ba;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/h$2;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method
