.class final Lcom/flurry/sdk/gy$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gy$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ha;

.field final synthetic b:Lcom/flurry/sdk/gy$1;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gy$1;Lcom/flurry/sdk/ha;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/flurry/sdk/gy$1$1;->b:Lcom/flurry/sdk/gy$1;

    iput-object p2, p0, Lcom/flurry/sdk/gy$1$1;->a:Lcom/flurry/sdk/ha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/flurry/sdk/gy$1$1;->a:Lcom/flurry/sdk/ha;

    iget v0, v0, Lcom/flurry/sdk/ha;->a:I

    .line 132
    sget-object v1, Lcom/flurry/sdk/gy$8;->a:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/sdk/gy$1$1;->b:Lcom/flurry/sdk/gy$1;

    iget-object v0, v0, Lcom/flurry/sdk/gy$1;->a:Lcom/flurry/sdk/gy;

    iget-object v1, p0, Lcom/flurry/sdk/gy$1$1;->a:Lcom/flurry/sdk/ha;

    invoke-static {v0, v1}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/gy;Lcom/flurry/sdk/ha;)V

    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/sdk/gy$1$1;->b:Lcom/flurry/sdk/gy$1;

    iget-object v0, v0, Lcom/flurry/sdk/gy$1;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/gy;)V

    goto :goto_0

    .line 142
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/sdk/gy$1$1;->b:Lcom/flurry/sdk/gy$1;

    iget-object v0, v0, Lcom/flurry/sdk/gy$1;->a:Lcom/flurry/sdk/gy;

    iget-object v1, p0, Lcom/flurry/sdk/gy$1$1;->a:Lcom/flurry/sdk/ha;

    iget-object v1, v1, Lcom/flurry/sdk/ha;->b:Lcom/flurry/sdk/a;

    invoke-static {v0, v1}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/gy;Lcom/flurry/sdk/a;)V

    goto :goto_0

    .line 146
    :pswitch_3
    iget-object v0, p0, Lcom/flurry/sdk/gy$1$1;->b:Lcom/flurry/sdk/gy$1;

    iget-object v0, v0, Lcom/flurry/sdk/gy$1;->a:Lcom/flurry/sdk/gy;

    iget-object v1, p0, Lcom/flurry/sdk/gy$1$1;->a:Lcom/flurry/sdk/ha;

    iget-object v1, v1, Lcom/flurry/sdk/ha;->b:Lcom/flurry/sdk/a;

    invoke-static {v0, v1}, Lcom/flurry/sdk/gy;->b(Lcom/flurry/sdk/gy;Lcom/flurry/sdk/a;)V

    goto :goto_0

    .line 150
    :pswitch_4
    iget-object v0, p0, Lcom/flurry/sdk/gy$1$1;->b:Lcom/flurry/sdk/gy$1;

    iget-object v0, v0, Lcom/flurry/sdk/gy$1;->a:Lcom/flurry/sdk/gy;

    iget-object v1, p0, Lcom/flurry/sdk/gy$1$1;->a:Lcom/flurry/sdk/ha;

    iget-object v1, v1, Lcom/flurry/sdk/ha;->b:Lcom/flurry/sdk/a;

    .line 1055
    iget-object v1, v1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 150
    iget-object v1, v1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 1079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 150
    invoke-static {v0, v1}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/gy;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
