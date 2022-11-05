.class final Lcom/flurry/sdk/ep$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ks$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ep;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/ep$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ks$a",
        "<[B",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ep$a;

.field final synthetic b:Lcom/flurry/sdk/ep;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ep;Lcom/flurry/sdk/ep$a;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/flurry/sdk/ep$1;->b:Lcom/flurry/sdk/ep;

    iput-object p2, p0, Lcom/flurry/sdk/ep$1;->a:Lcom/flurry/sdk/ep$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/ks;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 91
    check-cast p2, Ljava/lang/String;

    .line 1094
    if-eqz p2, :cond_1

    .line 1095
    invoke-static {p2}, Lcom/flurry/sdk/eg;->a(Ljava/lang/String;)I

    move-result v0

    .line 1096
    const/16 v1, 0xc9

    if-ne v0, v1, :cond_0

    .line 1097
    invoke-static {p2}, Lcom/flurry/sdk/eg;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 1098
    iget-object v1, p0, Lcom/flurry/sdk/ep$1;->a:Lcom/flurry/sdk/ep$a;

    invoke-interface {v1, v0}, Lcom/flurry/sdk/ep$a;->a(Ljava/lang/Long;)V

    .line 1102
    :goto_0
    return-void

    .line 1100
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/ep$1;->a:Lcom/flurry/sdk/ep$a;

    invoke-interface {v1, v0, p2}, Lcom/flurry/sdk/ep$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 1103
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ep$1;->a:Lcom/flurry/sdk/ep$a;

    const/4 v1, -0x1

    const-string v2, "Post failed"

    invoke-interface {v0, v1, v2}, Lcom/flurry/sdk/ep$a;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
