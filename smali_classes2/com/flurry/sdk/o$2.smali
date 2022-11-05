.class final Lcom/flurry/sdk/o$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/o;
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
        "Lcom/flurry/sdk/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/o;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/o;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/flurry/sdk/o$2;->a:Lcom/flurry/sdk/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 2

    .prologue
    .line 56
    check-cast p1, Lcom/flurry/sdk/d;

    .line 1059
    iget-object v0, p1, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    iget-object v1, p0, Lcom/flurry/sdk/o$2;->a:Lcom/flurry/sdk/o;

    if-ne v0, v1, :cond_0

    .line 1064
    iget-object v0, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/flurry/sdk/o$2;->a:Lcom/flurry/sdk/o;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/o;->a(Lcom/flurry/sdk/d;)V

    .line 56
    :cond_0
    return-void
.end method
