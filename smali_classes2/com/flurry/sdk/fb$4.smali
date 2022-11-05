.class final Lcom/flurry/sdk/fb$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ew$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/fb;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/fb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fb;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/flurry/sdk/fb$4;->a:Lcom/flurry/sdk/fb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 256
    const/16 v0, 0x191

    if-ne p1, v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/flurry/sdk/fb$4;->a:Lcom/flurry/sdk/fb;

    .line 1312
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/fb;->a:Ljava/lang/String;

    const-string v3, "Authentication Error. Lets reset the access token."

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1313
    iget-object v1, v0, Lcom/flurry/sdk/fb;->e:Lcom/flurry/sdk/fb$a;

    sget-object v2, Lcom/flurry/sdk/fb$a;->b:Lcom/flurry/sdk/fb$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/fb$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/flurry/sdk/fb;->e:Lcom/flurry/sdk/fb$a;

    sget-object v2, Lcom/flurry/sdk/fb$a;->f:Lcom/flurry/sdk/fb$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/fb$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1314
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/ed;->a()V

    .line 1315
    invoke-static {}, Lcom/flurry/sdk/ed;->b()V

    .line 1316
    invoke-virtual {v0}, Lcom/flurry/sdk/fb;->a()V

    :goto_0
    return-void

    .line 1318
    :cond_1
    sget-object v1, Lcom/flurry/sdk/ei;->h:Lcom/flurry/sdk/ei;

    iget v0, v0, Lcom/flurry/sdk/fb;->f:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/eh;->a(Lcom/flurry/sdk/ei;ILjava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_2
    sget-object v0, Lcom/flurry/sdk/ei;->h:Lcom/flurry/sdk/ei;

    iget-object v1, p0, Lcom/flurry/sdk/fb$4;->a:Lcom/flurry/sdk/fb;

    invoke-static {v1}, Lcom/flurry/sdk/fb;->d(Lcom/flurry/sdk/fb;)I

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/flurry/sdk/eh;->a(Lcom/flurry/sdk/ei;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/flurry/sdk/fb$4;->a:Lcom/flurry/sdk/fb;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/fb;Ljava/util/List;)V

    .line 252
    return-void
.end method
