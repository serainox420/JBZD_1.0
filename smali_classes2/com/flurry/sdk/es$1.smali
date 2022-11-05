.class final Lcom/flurry/sdk/es$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ks$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/es;->a(Lcom/flurry/sdk/es$a;Ljava/lang/String;)V
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
.field final synthetic a:Lcom/flurry/sdk/es$a;

.field final synthetic b:Lcom/flurry/sdk/es;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/es;Lcom/flurry/sdk/es$a;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/flurry/sdk/es$1;->b:Lcom/flurry/sdk/es;

    iput-object p2, p0, Lcom/flurry/sdk/es$1;->a:Lcom/flurry/sdk/es$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/flurry/sdk/ks;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 48
    check-cast p2, Ljava/lang/String;

    .line 1051
    if-eqz p2, :cond_1

    .line 1052
    invoke-static {p2}, Lcom/flurry/sdk/es;->a(Ljava/lang/String;)Lcom/flurry/sdk/el;

    move-result-object v0

    .line 1053
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/el;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1054
    iget-object v1, p0, Lcom/flurry/sdk/es$1;->a:Lcom/flurry/sdk/es$a;

    invoke-interface {v1, v0}, Lcom/flurry/sdk/es$a;->a(Lcom/flurry/sdk/el;)V

    .line 1059
    :goto_0
    return-void

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/es$1;->a:Lcom/flurry/sdk/es$a;

    invoke-interface {v0, p2}, Lcom/flurry/sdk/es$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1220
    :cond_1
    iget v0, p1, Lcom/flurry/sdk/ku;->p:I

    .line 1058
    const/16 v1, 0x191

    if-ne v0, v1, :cond_2

    .line 1059
    iget-object v0, p0, Lcom/flurry/sdk/es$1;->a:Lcom/flurry/sdk/es$a;

    const-string v1, "Not Authorized"

    invoke-interface {v0, v1}, Lcom/flurry/sdk/es$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1061
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/es$1;->a:Lcom/flurry/sdk/es$a;

    const-string v1, "Request token failed."

    invoke-interface {v0, v1}, Lcom/flurry/sdk/es$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
