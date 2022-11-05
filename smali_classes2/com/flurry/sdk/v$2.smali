.class final Lcom/flurry/sdk/v$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/v;
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
.field final synthetic a:Lcom/flurry/sdk/v;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/v;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/flurry/sdk/v$2;->a:Lcom/flurry/sdk/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 86
    check-cast p1, Lcom/flurry/sdk/ll;

    .line 1089
    iget-object v0, p1, Lcom/flurry/sdk/ll;->b:Lcom/flurry/sdk/lk;

    if-eqz v0, :cond_0

    .line 1093
    sget-object v0, Lcom/flurry/sdk/v$9;->a:[I

    iget v1, p1, Lcom/flurry/sdk/ll;->c:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 1096
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/sdk/v$2;->a:Lcom/flurry/sdk/v;

    .line 1764
    iget-boolean v1, v0, Lcom/flurry/sdk/v;->h:Z

    if-eqz v1, :cond_0

    .line 2289
    iget-object v1, v0, Lcom/flurry/sdk/v;->e:Lcom/flurry/sdk/dv;

    .line 1765
    invoke-virtual {v0}, Lcom/flurry/sdk/v;->b()Lcom/flurry/sdk/dw;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/sdk/v;->j()Lcom/flurry/sdk/y;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/dw;Lcom/flurry/sdk/y;)V

    .line 1766
    iput-boolean v4, v0, Lcom/flurry/sdk/v;->h:Z

    goto :goto_0

    .line 1100
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/sdk/v$2;->a:Lcom/flurry/sdk/v;

    .line 2771
    iput-boolean v4, v0, Lcom/flurry/sdk/v;->g:Z

    .line 2772
    iput-boolean v4, v0, Lcom/flurry/sdk/v;->h:Z

    goto :goto_0

    .line 1093
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
