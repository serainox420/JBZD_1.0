.class final Lcom/flurry/sdk/bk$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/bk;
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
        "Lcom/flurry/sdk/ls;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/bk;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bk;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/flurry/sdk/bk$1;->a:Lcom/flurry/sdk/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 1

    .prologue
    .line 75
    .line 1078
    iget-object v0, p0, Lcom/flurry/sdk/bk$1;->a:Lcom/flurry/sdk/bk;

    invoke-static {v0}, Lcom/flurry/sdk/bk;->a(Lcom/flurry/sdk/bk;)V

    .line 75
    return-void
.end method
