.class final Lcom/flurry/sdk/z$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/flurry/sdk/dg;

.field c:Lcom/flurry/sdk/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/flurry/sdk/dg;Lcom/flurry/sdk/e;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/flurry/sdk/z$b;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/flurry/sdk/z$b;->b:Lcom/flurry/sdk/dg;

    .line 22
    if-eqz p3, :cond_0

    .line 23
    invoke-virtual {p3}, Lcom/flurry/sdk/e;->copy()Lcom/flurry/sdk/e;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/z$b;->c:Lcom/flurry/sdk/e;

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 29
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/flurry/sdk/z$b;

    if-nez v1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 33
    :cond_1
    check-cast p1, Lcom/flurry/sdk/z$b;

    .line 35
    iget-object v1, p0, Lcom/flurry/sdk/z$b;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/flurry/sdk/z$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/flurry/sdk/z$b;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flurry/sdk/z$b;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/flurry/sdk/z$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    :cond_2
    iget-object v1, p0, Lcom/flurry/sdk/z$b;->b:Lcom/flurry/sdk/dg;

    iget-object v2, p1, Lcom/flurry/sdk/z$b;->b:Lcom/flurry/sdk/dg;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/flurry/sdk/z$b;->b:Lcom/flurry/sdk/dg;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/flurry/sdk/z$b;->b:Lcom/flurry/sdk/dg;

    iget-object v2, p1, Lcom/flurry/sdk/z$b;->b:Lcom/flurry/sdk/dg;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/dg;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    :cond_3
    iget-object v1, p0, Lcom/flurry/sdk/z$b;->c:Lcom/flurry/sdk/e;

    iget-object v2, p1, Lcom/flurry/sdk/z$b;->c:Lcom/flurry/sdk/e;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/flurry/sdk/z$b;->c:Lcom/flurry/sdk/e;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/flurry/sdk/z$b;->c:Lcom/flurry/sdk/e;

    iget-object v2, p1, Lcom/flurry/sdk/z$b;->c:Lcom/flurry/sdk/e;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 52
    const/16 v0, 0x11

    .line 54
    iget-object v1, p0, Lcom/flurry/sdk/z$b;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/flurry/sdk/z$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, 0x11

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/z$b;->b:Lcom/flurry/sdk/dg;

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/flurry/sdk/z$b;->b:Lcom/flurry/sdk/dg;

    invoke-virtual {v1}, Lcom/flurry/sdk/dg;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/z$b;->c:Lcom/flurry/sdk/e;

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, p0, Lcom/flurry/sdk/z$b;->c:Lcom/flurry/sdk/e;

    invoke-virtual {v1}, Lcom/flurry/sdk/e;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 66
    :cond_2
    return v0
.end method
