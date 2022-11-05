.class final Lcom/flurry/sdk/ec$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lj",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/flurry/sdk/az;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ec;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ec;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/flurry/sdk/ec$6;->a:Lcom/flurry/sdk/ec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/flurry/sdk/lg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/flurry/sdk/lg",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/az;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Lcom/flurry/sdk/lf;

    new-instance v1, Lcom/flurry/sdk/az$a;

    new-instance v2, Lcom/flurry/sdk/ax$a;

    invoke-direct {v2}, Lcom/flurry/sdk/ax$a;-><init>()V

    invoke-direct {v1, v2}, Lcom/flurry/sdk/az$a;-><init>(Lcom/flurry/sdk/ax$a;)V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/lf;-><init>(Lcom/flurry/sdk/lg;)V

    return-object v0
.end method
