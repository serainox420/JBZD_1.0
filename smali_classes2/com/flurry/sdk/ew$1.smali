.class final Lcom/flurry/sdk/ew$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ks$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew$a;)V
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
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ew$a;

.field final synthetic b:Lcom/flurry/sdk/ew;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ew;Lcom/flurry/sdk/ew$a;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/flurry/sdk/ew$1;->b:Lcom/flurry/sdk/ew;

    iput-object p2, p0, Lcom/flurry/sdk/ew$1;->a:Lcom/flurry/sdk/ew$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/ks;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/16 v3, 0x191

    const/4 v2, -0x1

    .line 47
    check-cast p2, Ljava/lang/String;

    .line 1050
    if-eqz p2, :cond_2

    .line 1051
    invoke-static {p2}, Lcom/flurry/sdk/eg;->a(Ljava/lang/String;)I

    move-result v0

    .line 1052
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 1053
    invoke-static {p2}, Lcom/flurry/sdk/eg;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1054
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1055
    iget-object v1, p0, Lcom/flurry/sdk/ew$1;->a:Lcom/flurry/sdk/ew$a;

    invoke-interface {v1, v0}, Lcom/flurry/sdk/ew$a;->a(Ljava/util/List;)V

    .line 1063
    :goto_0
    return-void

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ew$1;->a:Lcom/flurry/sdk/ew$a;

    invoke-interface {v0, v2, p2}, Lcom/flurry/sdk/ew$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 1060
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/ew$1;->a:Lcom/flurry/sdk/ew$a;

    invoke-interface {v1, v0, p2}, Lcom/flurry/sdk/ew$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 1220
    :cond_2
    iget v0, p1, Lcom/flurry/sdk/ku;->p:I

    .line 1062
    if-ne v0, v3, :cond_3

    .line 1063
    iget-object v0, p0, Lcom/flurry/sdk/ew$1;->a:Lcom/flurry/sdk/ew$a;

    const-string v1, "Not Authorized"

    invoke-interface {v0, v3, v1}, Lcom/flurry/sdk/ew$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 1065
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/ew$1;->a:Lcom/flurry/sdk/ew$a;

    const-string v1, "Invalid user info"

    invoke-interface {v0, v2, v1}, Lcom/flurry/sdk/ew$a;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
