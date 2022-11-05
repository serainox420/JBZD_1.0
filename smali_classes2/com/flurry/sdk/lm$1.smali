.class final Lcom/flurry/sdk/lm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/lm;
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
        "Lcom/flurry/sdk/lo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/lm;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/lm;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/flurry/sdk/lm$1;->a:Lcom/flurry/sdk/lm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 1

    .prologue
    .line 60
    .line 1063
    iget-object v0, p0, Lcom/flurry/sdk/lm$1;->a:Lcom/flurry/sdk/lm;

    invoke-static {v0}, Lcom/flurry/sdk/lm;->a(Lcom/flurry/sdk/lm;)V

    .line 60
    return-void
.end method
