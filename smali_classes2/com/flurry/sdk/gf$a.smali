.class public final Lcom/flurry/sdk/gf$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/flurry/sdk/gf;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/flurry/sdk/gf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gf;-><init>(B)V

    iput-object v0, p0, Lcom/flurry/sdk/gf$a;->a:Lcom/flurry/sdk/gf;

    .line 30
    return-void
.end method
