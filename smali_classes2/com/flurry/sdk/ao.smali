.class public final Lcom/flurry/sdk/ao;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    const/4 v0, 0x2

    iput v0, p0, Lcom/flurry/sdk/ao;->a:I

    .line 14
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ao;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ao;->remove(Ljava/lang/Object;)Z

    .line 21
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 22
    invoke-virtual {p0}, Lcom/flurry/sdk/ao;->size()I

    move-result v1

    iget v2, p0, Lcom/flurry/sdk/ao;->a:I

    if-le v1, v2, :cond_1

    .line 23
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/flurry/sdk/ao;->size()I

    move-result v2

    iget v3, p0, Lcom/flurry/sdk/ao;->a:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/flurry/sdk/ao;->removeRange(II)V

    .line 25
    :cond_1
    return v0
.end method
