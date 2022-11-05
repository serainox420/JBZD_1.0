.class final Lcom/flurry/sdk/kx$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/kx;
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
        "Lcom/flurry/sdk/jq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/kx;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kx;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/flurry/sdk/kx$2;->a:Lcom/flurry/sdk/kx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 1

    .prologue
    .line 42
    check-cast p1, Lcom/flurry/sdk/jq;

    .line 1045
    iget-boolean v0, p1, Lcom/flurry/sdk/jq;->a:Z

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/flurry/sdk/kx$2;->a:Lcom/flurry/sdk/kx;

    invoke-static {v0}, Lcom/flurry/sdk/kx;->a(Lcom/flurry/sdk/kx;)V

    .line 42
    :cond_0
    return-void
.end method
