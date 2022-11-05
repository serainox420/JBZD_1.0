.class final Lcom/flurry/sdk/aa$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/aa;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/aa;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/aa;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/flurry/sdk/aa$1;->a:Lcom/flurry/sdk/aa;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/flurry/sdk/aa$1;->a:Lcom/flurry/sdk/aa;

    invoke-static {v0}, Lcom/flurry/sdk/aa;->a(Lcom/flurry/sdk/aa;)V

    .line 91
    iget-object v0, p0, Lcom/flurry/sdk/aa$1;->a:Lcom/flurry/sdk/aa;

    invoke-static {v0}, Lcom/flurry/sdk/aa;->b(Lcom/flurry/sdk/aa;)V

    .line 92
    return-void
.end method
