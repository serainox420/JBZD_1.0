.class final Lcom/flurry/sdk/h$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kh;


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
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kh",
        "<",
        "Lcom/flurry/sdk/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/h;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/h;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/flurry/sdk/h$3;->a:Lcom/flurry/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 4

    .prologue
    .line 76
    check-cast p1, Lcom/flurry/sdk/c;

    .line 1079
    const/4 v0, 0x3

    .line 1080
    invoke-static {}, Lcom/flurry/sdk/h;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Detected event was fired :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/flurry/sdk/c;->a:Lcom/flurry/sdk/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for adSpace:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/flurry/sdk/c;->a:Lcom/flurry/sdk/b;

    invoke-virtual {v3}, Lcom/flurry/sdk/b;->a()Lcom/flurry/sdk/cs;

    move-result-object v3

    iget-object v3, v3, Lcom/flurry/sdk/cs;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1079
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1081
    invoke-static {p1}, Lcom/flurry/sdk/h;->a(Lcom/flurry/sdk/c;)V

    .line 76
    return-void
.end method
