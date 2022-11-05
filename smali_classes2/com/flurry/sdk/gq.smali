.class public final Lcom/flurry/sdk/gq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/gq$a;
    }
.end annotation


# instance fields
.field a:F

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flurry/sdk/gq$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/dn;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, Lcom/flurry/sdk/gq;->c:F

    .line 13
    iput v0, p0, Lcom/flurry/sdk/gq;->a:F

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/gq;->b:Ljava/util/ArrayList;

    .line 21
    if-eqz p1, :cond_0

    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/dn;

    .line 23
    iget-object v2, p0, Lcom/flurry/sdk/gq;->b:Ljava/util/ArrayList;

    new-instance v3, Lcom/flurry/sdk/gq$a;

    invoke-direct {v3, v0}, Lcom/flurry/sdk/gq$a;-><init>(Lcom/flurry/sdk/dn;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ZZIF)V
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/flurry/sdk/gq;->c:F

    cmpl-float v0, p4, v0

    if-lez v0, :cond_2

    .line 60
    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    const/16 v0, 0x64

    if-ne p3, v0, :cond_1

    .line 61
    :cond_0
    iget v0, p0, Lcom/flurry/sdk/gq;->a:F

    iget v1, p0, Lcom/flurry/sdk/gq;->c:F

    sub-float v1, p4, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/flurry/sdk/gq;->a:F

    .line 63
    :cond_1
    iput p4, p0, Lcom/flurry/sdk/gq;->c:F

    .line 65
    :cond_2
    return-void
.end method
