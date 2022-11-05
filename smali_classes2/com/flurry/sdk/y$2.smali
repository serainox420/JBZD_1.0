.class final Lcom/flurry/sdk/y$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/y;
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
        "Lcom/flurry/sdk/be;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/y;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/y;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/flurry/sdk/y$2;->a:Lcom/flurry/sdk/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 2

    .prologue
    .line 36
    check-cast p1, Lcom/flurry/sdk/be;

    .line 1039
    iget-object v0, p0, Lcom/flurry/sdk/y$2;->a:Lcom/flurry/sdk/y;

    iget-object v1, p1, Lcom/flurry/sdk/be;->a:Lcom/flurry/sdk/bf;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/y;->a(Lcom/flurry/sdk/bf;)V

    .line 36
    return-void
.end method
