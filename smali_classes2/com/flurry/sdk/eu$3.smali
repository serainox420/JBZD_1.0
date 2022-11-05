.class public final Lcom/flurry/sdk/eu$3;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/eu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ew$a;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/ew$a;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/flurry/sdk/eu$3;->a:Lcom/flurry/sdk/ew$a;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/flurry/sdk/ew;

    invoke-direct {v0}, Lcom/flurry/sdk/ew;-><init>()V

    iget-object v1, p0, Lcom/flurry/sdk/eu$3;->a:Lcom/flurry/sdk/ew$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew$a;)V

    .line 40
    return-void
.end method
