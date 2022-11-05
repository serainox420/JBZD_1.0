.class final Lcom/flurry/sdk/o$3;
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
        "Lcom/flurry/sdk/ll;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/o;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/o;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/flurry/sdk/o$3;->a:Lcom/flurry/sdk/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 73
    check-cast p1, Lcom/flurry/sdk/ll;

    .line 1076
    iget-object v0, p1, Lcom/flurry/sdk/ll;->b:Lcom/flurry/sdk/lk;

    if-eqz v0, :cond_0

    .line 1080
    sget-object v0, Lcom/flurry/sdk/o$4;->a:[I

    iget v1, p1, Lcom/flurry/sdk/ll;->c:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1082
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/sdk/o$3;->a:Lcom/flurry/sdk/o;

    .line 1351
    iget-boolean v1, v0, Lcom/flurry/sdk/o;->f:Z

    if-eqz v1, :cond_0

    .line 1352
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/o;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Session created. Fetching ad now for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2191
    iget-object v1, v0, Lcom/flurry/sdk/o;->d:Lcom/flurry/sdk/dv;

    .line 1353
    invoke-virtual {v0}, Lcom/flurry/sdk/o;->j()Lcom/flurry/sdk/dw;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/sdk/o;->k()Lcom/flurry/sdk/y;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/dw;Lcom/flurry/sdk/y;)V

    .line 1354
    iput-boolean v5, v0, Lcom/flurry/sdk/o;->f:Z

    goto :goto_0

    .line 1086
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/sdk/o$3;->a:Lcom/flurry/sdk/o;

    .line 2359
    iput-boolean v5, v0, Lcom/flurry/sdk/o;->e:Z

    .line 2360
    iput-boolean v5, v0, Lcom/flurry/sdk/o;->f:Z

    goto :goto_0

    .line 1080
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
