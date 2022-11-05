.class final Lcom/flurry/sdk/em$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ks$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/em;->a(Lcom/flurry/sdk/el;Ljava/lang/String;Lcom/flurry/sdk/em$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ks$a",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/em$a;

.field final synthetic b:Lcom/flurry/sdk/em;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/em;Lcom/flurry/sdk/em$a;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/flurry/sdk/em$1;->b:Lcom/flurry/sdk/em;

    iput-object p2, p0, Lcom/flurry/sdk/em$1;->a:Lcom/flurry/sdk/em$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/flurry/sdk/ks;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 40
    check-cast p2, Ljava/lang/String;

    .line 1043
    invoke-static {p2}, Lcom/flurry/sdk/em;->a(Ljava/lang/String;)Lcom/flurry/sdk/el;

    move-result-object v0

    .line 1044
    if-eqz v0, :cond_0

    .line 1045
    iget-object v1, p0, Lcom/flurry/sdk/em$1;->a:Lcom/flurry/sdk/em$a;

    invoke-interface {v1, v0}, Lcom/flurry/sdk/em$a;->a(Lcom/flurry/sdk/el;)V

    :goto_0
    return-void

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/em$1;->a:Lcom/flurry/sdk/em$a;

    const-string v1, "Access token failed"

    invoke-interface {v0, v1}, Lcom/flurry/sdk/em$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
